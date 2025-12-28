# Voice Interaction Mode Description

## Project Overview

Android-xiaozhi is an intelligent voice interaction assistant developed with Flutter and optimized for Android. It supports multiple operation modes and features, including voice dialogue, text chat, and rich AI interaction capabilities. This document primarily introduces the basic usage of voice interaction.

## Voice Interaction Modes

Voice interaction supports two modes; you can choose the appropriate interaction method based on your actual needs:

### 1. Push-to-Talk Mode (Long Press)

- **How to operate**: Press and hold the talk button, release to send.
- **Applicable scenarios**: Short-sentence communication, precise control over the start and end of the dialogue.
- **Advantages**: Avoids accidental triggers, provides precise control.
- **How to cancel**: Swipe up while long-pressing to cancel sending.
- **Haptic feedback**: Provides tactile feedback to confirm the operation has been recognized.

### 2. Automatic Dialogue Mode

- **How to operate**: Click to start the dialogue; the system automatically detects speech and sends it.
- **Applicable scenarios**: Long-sentence communication, no manual control required.
- **Advantages**: Hands-free, natural communication.
- **Interface prompt**: Displays "Listening..." to indicate the system is receiving your voice.
- **Waveform animation**: Real-time waveform animation based on sound intensity for intuitive feedback.

### Mode Switching

- The current mode is displayed at the bottom right of the interface.
- Click the button to switch modes.
- You can set the default mode via the settings menu.

## Dialogue Control

### Interruption Feature

While the system is providing a voice response, you can interrupt at any time:
- Use the interruption button on the interface.

### State Transitions

The voice interaction system has the following states:

```
                        +----------------+
                        |                |
                        v                |
+------+    Button    +------------+   |   +------------+
| IDLE | -----------> | CONNECTING | --+-> | LISTENING  |
+------+              +------------+       +------------+
   ^                                            |
   |                                            | Speech Recognition Complete
   |          +------------+                    v
   +--------- |  SPEAKING  | <-----------------+
     Finished +------------+
```

- **IDLE**: Waiting for button trigger.
- **CONNECTING**: Connecting to the server.
- **LISTENING**: listening to user voice input.
- **SPEAKING**: The system is responding via voice.

## System Features

### Acoustic Optimization
- **Echo Cancellation (AEC)**: Built-in acoustic echo cancellation technology prevents speaker output from interfering with microphone input.
- **Noise Suppression (NS)**: Real-time noise reduction filters out environmental noise to improve speech recognition accuracy.
- **High Refresh Rate Support**: Automatically detects and adapts to high refresh rate screens for a smooth UI experience.

### Performance Optimization
- Low-power recording mode to extend battery life.
- Smart voice compression to save data traffic.
- Background resource pre-loading to reduce wait times.

## Getting Help

If you encounter issues:

1. Check GitHub Issues first to see if similar problems have been resolved.
2. Submit an issue via GitHub Issues.
3. Contact the author.