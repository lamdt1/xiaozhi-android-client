---
title: Xiaozhi Python Client
description: A Python implementation of the Xiaozhi voice client, designed for code learning and experiencing AI Xiaozhi's voice features without hardware.
---

# Xiaozhi Python Client

<div class="project-header">
  <div class="project-badges">
    <span class="badge platform">Cross-platform</span>
    <span class="badge language">Python</span>
    <span class="badge status">Stable Version</span>
  </div>
</div>

## Project Introduction

py-xiaozhi is a Python-based implementation of the Xiaozhi voice client. It aims to provide a platform for code learning and a way to experience AI Xiaozhi's voice functions without needing specific hardware. It supports voice input and recognition, enabling intelligent human-computer interaction and a natural, fluid conversation experience.

<div class="app-showcase">
  <div class="showcase-description">
    <p>py-xiaozhi provides a cross-platform Xiaozhi voice interaction experience. It supports both a GUI interface and a command-line mode, making it suitable for various environments. With simple interfaces and rich features, users can easily communicate with the AI via voice and text.</p>
  </div>
</div>

## Core Features

<div class="features-grid">
  <div class="feature-card">
    <div class="feature-icon">🗣️</div>
    <h3>AI Voice Interaction</h3>
    <p>Supports voice input and recognition, providing intelligent human-computer interaction and a natural dialogue flow.</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">👁️</div>
    <h3>Visual Multimodality</h3>
    <p>Supports image recognition and processing, providing multimodal interaction by understanding visual content.</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">🏠</div>
    <h3>IoT Device Integration</h3>
    <p>Supports smart home device control, expanding IoT functions and building a smart home ecosystem.</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">🎵</div>
    <h3>Internet Music Playback</h3>
    <p>A high-performance music player based on pygame, supporting lyrics display and local caching.</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">🔊</div>
    <h3>Voice Wake-up</h3>
    <p>Supports wake-word activation for hands-free interaction (disabled by default, requires manual activation).</p>
  </div>
  
  <div class="feature-card">
    <div class="feature-icon">💬</div>
    <h3>Automatic Dialogue Mode</h3>
    <p>Implements a continuous conversation experience, enhancing the fluidity of user interaction.</p>
  </div>
</div>

## Feature Highlights

### Graphical UI & Command-Line Mode

<div class="feature-highlight">
  <div class="highlight-content">
    <h3>Multiple Operating Modes</h3>
    <ul>
      <li>Provides an intuitive GUI supporting Xiaozhi expressions and text display.</li>
      <li>Supports CLI mode, suitable for embedded devices or environments without a GUI.</li>
      <li>Cross-platform support, compatible with Windows 10+, macOS 10.15+, and Linux systems.</li>
      <li>Unified volume control interface adapted to different environmental needs.</li>
    </ul>
  </div>
</div>

### Secure and Stable Connection

<div class="feature-highlight reverse">
  <div class="highlight-content">
    <h3>Optimized Connection Experience</h3>
    <ul>
      <li>Supports the WSS protocol to ensure the security of audio data.</li>
      <li>On the first run, the program automatically copies the verification code and opens the browser.</li>
      <li>Automatically retrieves hardware MAC address to avoid conflicts.</li>
      <li>Automatic reconnection feature ensures connection stability.</li>
      <li>Optimized for cross-platform compatibility.</li>
    </ul>
  </div>
</div>

## System Requirements

- **Python**: 3.8+
- **OS**: Windows 10+, macOS 10.15+, Linux
- **Dependencies**: PyAudio, PyQt5, pygame, websocket-client, etc.

## Installation and Usage

### Installation Method

1. Clone the project repository:
```bash
git clone https://github.com/huangjunsen0406/py-xiaozhi.git
```

2. Install dependencies:
```bash
pip install -r requirements.txt
```

3. Run the application:
```bash
python main.py
```

## Configuration Description

The client supports several configuration options:

- Selection of voice input/output devices
- Volume control
- Wake-word settings
- Server connection settings
- GUI/CLI mode switching

## Related Links

- [Project GitHub Repository](https://github.com/huangjunsen0406/py-xiaozhi)
- [Issue Feedback](https://github.com/huangjunsen0406/py-xiaozhi/issues)

<style>
.project-header {
  display: flex;
  align-items: center;
  margin-bottom: 2rem;
}

.project-badges {
  display: flex;
  gap: 0.5rem;
}

.badge {
  padding: 0.25rem 0.75rem;
  border-radius: 20px;
  font-size: 0.8rem;
  font-weight: 500;
}

.badge.platform {
  background-color: #e6f7ff;
  color: #0070f3;
}

.badge.language {
  background-color: #f0f0f0;
  color: #333;
}

.badge.status {
  background-color: #d4edda;
  color: #155724;
}

.app-showcase {
  margin: 2rem 0;
  padding: 1.5rem;
  background-color: var(--vp-c-bg-soft);
  border-radius: 8px;
}

.showcase-description {
  font-size: 1.1rem;
  line-height: 1.6;
}

.features-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.feature-card {
  padding: 1.5rem;
  border-radius: 8px;
  background-color: var(--vp-c-bg-soft);
  transition: all 0.3s ease;
}

.feature-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.feature-icon {
  font-size: 2rem;
  margin-bottom: 1rem;
}

.feature-card h3 {
  margin-bottom: 0.5rem;
  color: var(--vp-c-brand);
}

.feature-highlight {
  display: flex;
  margin: 3rem 0;
  gap: 2rem;
  align-items: center;
}

.feature-highlight.reverse {
  flex-direction: row-reverse;
}

.highlight-content {
  flex: 1;
}

.highlight-content h3 {
  color: var(--vp-c-brand);
  margin-bottom: 1rem;
}

.highlight-content ul {
  padding-left: 1.5rem;
}

.highlight-content li {
  margin-bottom: 0.5rem;
}

@media (max-width: 768px) {
  .feature-highlight {
    flex-direction: column;
  }
  
  .feature-highlight.reverse {
    flex-direction: column;
  }
  
  .features-grid {
    grid-template-columns: 1fr;
  }
}
</style>