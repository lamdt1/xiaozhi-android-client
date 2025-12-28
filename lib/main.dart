import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:ai_assistant/providers/theme_provider.dart';
import 'package:ai_assistant/providers/config_provider.dart';
import 'package:ai_assistant/providers/conversation_provider.dart';
import 'package:ai_assistant/screens/home_screen.dart';
import 'package:ai_assistant/screens/settings_screen.dart';
import 'package:ai_assistant/screens/test_screen.dart';
import 'package:ai_assistant/utils/app_theme.dart';
import 'package:opus_flutter/opus_flutter.dart' as opus_flutter;
import 'package:opus_dart/opus_dart.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';
import 'dart:ui';
import 'package:ai_assistant/utils/audio_util.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';

// Whether to enable debug tools
const bool enableDebugTools = true;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set global immersive navigation bar
  await _setupSystemUI();

  // Set status bar color change listener to ensure consistent status bar style
  SystemChannels.lifecycle.setMessageHandler((msg) async {
    if (msg == AppLifecycleState.resumed.toString()) {
      // Re-apply system UI settings when app returns to foreground
      await _setupSystemUI();
    }
    return null;
  });

  // Set high-performance rendering for low-memory devices
  if (Platform.isAndroid || Platform.isIOS) {
    // Enable SkSL warm-up to improve first-render performance
    await Future.delayed(const Duration(milliseconds: 50));
    // Reduced cache for 1GB RAM devices
    PaintingBinding.instance.imageCache.maximumSize = 100;
    PaintingBinding.instance.imageCache.maximumSizeBytes = 20 * 1024 * 1024; // 20 MB
  }

  // Request recording and storage permissions
  await [
    Permission.microphone,
    Permission.storage,
    if (Platform.isAndroid) Permission.bluetoothConnect,
  ].request();

  // Add localization support (Defaulting to English)
  timeago.setLocaleMessages('zh', timeago.ZhMessages());
  timeago.setDefaultLocale('en');

  // Set high refresh rate on Android
  if (Platform.isAndroid) {
    try {
      // Get all supported display modes
      final modes = await FlutterDisplayMode.supported;
      print('Supported display modes: ${modes.length}');
      modes.forEach((mode) => print('Mode: $mode'));

      // Get currently active mode
      final current = await FlutterDisplayMode.active;
      print('Current mode: $current');

      // Set to high refresh rate mode
      await FlutterDisplayMode.setHighRefreshRate();

      // Confirm settings succeeded
      final afterSet = await FlutterDisplayMode.active;
      print('Mode after setting: $afterSet');
    } catch (e) {
      print('Failed to set high refresh rate: $e');
    }
  }

  // Initialize Opus library
  try {
    initOpus(await opus_flutter.load());
    print('Opus initialized successfully: ${getOpusVersion()}');
  } catch (e) {
    print('Opus initialization failed: $e');
  }

  // Initialize recorder and player
  try {
    await AudioUtil.initRecorder();
    await AudioUtil.initPlayer();
    print('Audio system initialized successfully');
  } catch (e) {
    print('Audio system initialization failed: $e');
  }

  // Initialize configuration management
  final configProvider = ConfigProvider();

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider.value(value: configProvider),
        ChangeNotifierProvider(create: (_) => ConversationProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

// Setup immersive system UI effects
Future<void> _setupSystemUI() async {
  // Set status bar and navigation bar to transparent
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.dark,
      systemNavigationBarDividerColor: Colors.transparent,
    ),
  );

  if (Platform.isAndroid) {
    // Enable edge-to-edge display mode for true full-screen effect
    await SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
  } else if (Platform.isIOS) {
    // Set to full screen display while retaining the status bar on iOS
    await SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [SystemUiOverlay.top],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Consumer<ConfigProvider>(
      builder: (context, configProvider, child) {
        return MaterialApp(
          title: configProvider.appTitle,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: themeProvider.themeMode,
          home: const HomeScreen(),
          routes: {
            // Add test screen route
            '/test': (context) => const TestScreen(),
          },
          // Add smooth scroll settings
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            // Enable physical scrolling
            physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics(),
            ),
            // Ensure all platforms have scrollbars and bounce effects
            dragDevices: {
              PointerDeviceKind.touch,
              PointerDeviceKind.mouse,
              PointerDeviceKind.stylus,
              PointerDeviceKind.unknown,
            },
          ),
        );
      },
    );
  }
}
