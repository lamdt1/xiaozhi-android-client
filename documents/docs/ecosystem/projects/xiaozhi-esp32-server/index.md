---
title: xiaozhi-esp32-server
description: An open-source Xiaozhi server based on ESP32, lightweight and efficient voice interaction service
---

# xiaozhi-esp32-server

<div class="project-header">
  <div class="project-logo">
    <img src="./images/logo.png" alt="xiaozhi-esp32-server Logo" onerror="this.src='/py-xiaozhi/images/logo.png'; this.onerror=null;">
  </div>
  <div class="project-badges">
    <span class="badge platform">ESP32</span>
    <span class="badge language">Python</span>
    <span class="badge status">Active Development</span>
  </div>
</div>

<div class="project-intro">
  <p>xiaozhi-esp32-server is a backend service for the open-source intelligent hardware project <a href="https://github.com/78/xiaozhi-esp32" target="_blank">xiaozhi-esp32</a>. It is implemented in Python according to the <a href="https://ccnphfhqs21z.feishu.cn/wiki/M0XiwldO9iJwHikpXD5cEx71nKh" target="_blank">Xiaozhi Communication Protocol</a>, helping you quickly build your own Xiaozhi server.</p>
</div>

## Intended Audience

This project is intended to be used with ESP32 hardware devices. If you have purchased ESP32-related hardware, successfully connected to the backend service deployed by researchers, and want to independently build your own `xiaozhi-esp32` backend service, then this project is perfect for you.

<div class="warning-box">
  <h3>⚠️ Important Notice</h3>
  <ol>
    <li>This project is open-source software and has no commercial cooperative relationship with any third-party API providers (including but not limited to speech recognition, large models, speech synthesis platforms). We do not provide any form of guarantee for their service quality or fund security. It is recommended that users prioritize service providers with relevant business licenses and carefully read their service agreements and privacy policies. This software does not host any account keys, does not participate in fund transfers, and does not bear the risk of recharge fund losses.</li>
    <li>This project is relatively new and has not passed network security assessments. Please do not use it in a production environment. If you deploy and learn from this project in a public network environment, please be sure to enable protection in the configuration file <code>config.yaml</code>.</li>
  </ol>
</div>

## Core Features

<div class="features-container">
  <div class="feature-item">
    <div class="feature-icon">🔄</div>
    <h3>Communication Protocol</h3>
    <p>Based on the <code>xiaozhi-esp32</code> protocol, achieving data interaction via WebSocket.</p>
  </div>
  
  <div class="feature-item">
    <div class="feature-icon">💬</div>
    <h3>Dialogue Interaction</h3>
    <p>Supports wake-up dialogue, manual dialogue, and real-time interruption; automatically sleeps after long periods of inactivity.</p>
  </div>
  
  <div class="feature-item">
    <div class="feature-icon">🧠</div>
    <h3>Intent Recognition</h3>
    <p>Supports intent recognition using LLMs and function calls, reducing the need for hardcoded intent logic.</p>
  </div>
  
  <div class="feature-item">
    <div class="feature-icon">🌐</div>
    <h3>Multi-language Recognition</h3>
    <p>Supports Mandarin, Cantonese, English, Japanese, and Korean (FunASR used by default).</p>
  </div>
  
  <div class="feature-item">
    <div class="feature-icon">🤖</div>
    <h3>LLM Module</h3>
    <p>Supports flexible switching of LLM modules; defaults to ChatGLMLLM, with options for Alibaba Bailian, DeepSeek, Ollama, and more.</p>
  </div>
  
  <div class="feature-item">
    <div class="feature-icon">🔊</div>
    <h3>TTS Module</h3>
    <p>Supports various TTS interfaces like EdgeTTS (default) and Volcano Engine Doubao TTS for speech synthesis needs.</p>
  </div>
  
  <div class="feature-item">
    <div class="feature-icon">📝</div>
    <h3>Memory Function</h3>
    <p>Supports three modes: super-long memory, local summary memory, and no-memory, satisfying different scenario requirements.</p>
  </div>
  
  <div class="feature-item">
    <div class="feature-icon">🏠</div>
    <h3>IoT Functionality</h3>
    <p>Supports management of registered device IoT features, including intelligent IoT control based on dialogue context.</p>
  </div>
  
  <div class="feature-item">
    <div class="feature-icon">🖥️</div>
    <h3>Control Console</h3>
    <p>Provides a Web management interface supporting agent management, user management, system configuration, and more.</p>
  </div>
</div>

## Deployment Methods

This project offers two deployment methods. Please choose according to your specific needs:

<div class="deployment-table">
  <table>
    <thead>
      <tr>
        <th>Deployment Method</th>
        <th>Features</th>
        <th>Applicable Scenarios</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><strong>Minimal Installation</strong></td>
        <td>Intelligent dialogue, IoT features; data stored in configuration files.</td>
        <td>Low-spec environments, no database required.</td>
      </tr>
      <tr>
        <td><strong>Full Module Installation</strong></td>
        <td>Intelligent dialogue, IoT, OTA, Control Console; data stored in a database.</td>
        <td>Complete functional experience.</td>
      </tr>
    </tbody>
  </table>
</div>

For detailed deployment documentation, please refer to:
- [Docker Deployment Guide](https://github.com/xinnan-tech/xiaozhi-esp32-server/blob/main/docs/Deployment.md)
- [Source Code Deployment Guide](https://github.com/xinnan-tech/xiaozhi-esp32-server/blob/main/docs/Deployment_all.md)

## Supported Platforms

xiaozhi-esp32-server supports a wide range of third-party platforms and components:

### LLM (Large Language Model)

<div class="platform-item">
  <h4>API Integration</h4>
  <p><strong>Supported:</strong> Alibaba Bailian, ByteDance/Volcano Engine Doubao, DeepSeek, Zhipu ChatGLM, Gemini, Ollama, Dify, Fastgpt, Coze</p>
  <p><strong>Free Platforms:</strong> Zhipu ChatGLM, Gemini</p>
  <p><em>In practice, any LLM supporting OpenAI-compatible API calls can be integrated.</em></p>
</div>

### TTS (Text-to-Speech)

<div class="platform-item">
  <h4>API Integration</h4>
  <p><strong>Supported:</strong> EdgeTTS, Doubao TTS, Tencent Cloud, Alibaba Cloud TTS, CosyVoice Siliconflow, TTS302AI, CozeCnTTS, GizwitsTTS, ACGNTTS, OpenAI TTS</p>
  <p><strong>Free Platforms:</strong> EdgeTTS, CosyVoice Siliconflow (partially)</p>
  
  <h4>Local Services</h4>
  <p><strong>Supported:</strong> FishSpeech, GPT_SOVITS_V2, GPT_SOVITS_V3, MinimaxTTS</p>
  <p><strong>Free Platforms:</strong> FishSpeech, GPT_SOVITS_V2, GPT_SOVITS_V3, MinimaxTTS</p>
</div>

### ASR (Automatic Speech Recognition)

<div class="platform-item">
  <h4>API Integration</h4>
  <p><strong>Supported:</strong> Doubao ASR</p>
  
  <h4>Local Services</h4>
  <p><strong>Supported:</strong> FunASR, SherpaASR</p>
  <p><strong>Free Platforms:</strong> FunASR, SherpaASR</p>
</div>

### More Components

- **VAD (Voice Activity Detection)**: Supports SileroVAD (free local use).
- **Memory Storage**: Supports mem0ai (1000 requests/month quota), mem_local_short (local summary, free).
- **Intent Recognition**: Supports intent_llm (intent identification via LLM), function_call (intent via LLM function calling).

## Contributing

xiaozhi-esp32-server is an active open-source project. Contributions and feedback are welcome:

- [GitHub Repository](https://github.com/xinnan-tech/xiaozhi-esp32-server)
- [Issue Feedback](https://github.com/xinnan-tech/xiaozhi-esp32-server/issues)
- [Open Letter to Developers](https://github.com/xinnan-tech/xiaozhi-esp32-server/blob/main/docs/contributor_open_letter.md)

<style>
.project-header {
  display: flex;
  align-items: center;
  margin-bottom: 2rem;
}

.project-logo {
  width: 100px;
  height: 100px;
  margin-right: 1.5rem;
}

.project-logo img {
  width: 100%;
  height: 100%;
  object-fit: contain;
}

.project-badges {
  display: flex;
  flex-wrap: wrap;
  gap: 0.5rem;
}

.badge {
  display: inline-block;
  padding: 0.25rem 0.75rem;
  border-radius: 1rem;
  font-size: 0.85rem;
  font-weight: 500;
}

.badge.platform {
  background-color: var(--vp-c-brand-soft);
  color: var(--vp-c-brand-dark);
}

.badge.language {
  background-color: rgba(59, 130, 246, 0.2);
  color: rgb(59, 130, 246);
}

.badge.status {
  background-color: rgba(16, 185, 129, 0.2);
  color: rgb(16, 185, 129);
}

.project-intro {
  font-size: 1.1rem;
  line-height: 1.6;
  margin-bottom: 2rem;
  padding: 1.5rem;
  background-color: var(--vp-c-bg-soft);
  border-radius: 8px;
  border-left: 4px solid var(--vp-c-brand);
}

.warning-box {
  margin: 2rem 0;
  padding: 1.5rem;
  background-color: rgba(234, 179, 8, 0.1);
  border-left: 4px solid rgba(234, 179, 8, 0.8);
  border-radius: 8px;
}

.warning-box h3 {
  color: rgb(234, 179, 8);
  margin-top: 0;
}

.features-container {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.feature-item {
  background-color: var(--vp-c-bg-soft);
  border-radius: 8px;
  padding: 1.5rem;
  transition: transform 0.3s ease, box-shadow 0.3s ease;
  border: 1px solid var(--vp-c-divider);
}

.feature-item:hover {
  transform: translateY(-5px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.feature-icon {
  font-size: 2rem;
  margin-bottom: 1rem;
}

.feature-item h3 {
  color: var(--vp-c-brand);
  margin-top: 0;
  margin-bottom: 0.5rem;
}

.deployment-table {
  margin: 2rem 0;
  overflow-x: auto;
}

.deployment-table table {
  width: 100%;
  border-collapse: collapse;
}

.deployment-table th, 
.deployment-table td {
  padding: 1rem;
  text-align: left;
  border-bottom: 1px solid var(--vp-c-divider);
}

.deployment-table th {
  background-color: var(--vp-c-bg-soft);
  font-weight: 500;
}

.platform-item {
  margin: 1.5rem 0;
  padding: 1.5rem;
  background-color: var(--vp-c-bg-soft);
  border-radius: 8px;
}

.platform-item h4 {
  color: var(--vp-c-brand);
  margin-top: 0;
  margin-bottom: 1rem;
}

.platform-item p {
  margin: 0.5rem 0;
}

.demo-videos {
  margin: 2rem 0;
}

.video-grid {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(280px, 1fr));
  gap: 1.5rem;
}

.video-item {
  display: block;
  text-decoration: none;
  color: inherit;
  border-radius: 8px;
  overflow: hidden;
  transition: transform 0.3s ease;
  background-color: var(--vp-c-bg-soft);
}

.video-item:hover {
  transform: translateY(-5px);
}

.video-thumbnail {
  width: 100%;
  aspect-ratio: 16 / 9;
  overflow: hidden;
}

.video-thumbnail img {
  width: 100%;
  height: 100%;
  object-fit: cover;
  transition: transform 0.3s ease;
}

.video-item:hover .video-thumbnail img {
  transform: scale(1.05);
}

.video-title {
  padding: 1rem;
  font-weight: 500;
}

.demo-more {
  text-align: center;
  margin-top: 1.5rem;
}

.demo-more a {
  display: inline-block;
  padding: 0.5rem 1.5rem;
  background-color: var(--vp-c-brand);
  color: white;
  border-radius: 4px;
  text-decoration: none;
  transition: background-color 0.3s ease;
}

.demo-more a:hover {
  background-color: var(--vp-c-brand-dark);
}

.related-projects {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.project-card {
  background-color: var(--vp-c-bg-soft);
  border-radius: 8px;
  padding: 1.5rem;
  display: flex;
  flex-direction: column;
  border: 1px solid var(--vp-c-divider);
  transition: transform 0.3s ease, box-shadow 0.3s ease;
}

.project-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.project-card h3 {
  color: var(--vp-c-brand);
  margin-top: 0;
  margin-bottom: 1rem;
}

.project-link {
  margin-top: auto;
  display: inline-block;
  padding: 0.5rem 1rem;
  background-color: var(--vp-c-brand);
  color: white;
  text-decoration: none;
  border-radius: 4px;
  text-align: center;
  transition: background-color 0.3s ease;
}

.project-link:hover {
  background-color: var(--vp-c-brand-dark);
}

.contributors {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  gap: 2rem;
  margin: 2rem 0;
}

.contributor {
  background-color: var(--vp-c-bg-soft);
  border-radius: 8px;
  padding: 1.5rem;
  text-align: center;
  border: 1px solid var(--vp-c-divider);
}

.contributor img {
  width: 120px;
  height: 60px;
  object-fit: contain;
  margin-bottom: 1rem;
}

.contributor h4 {
  color: var(--vp-c-brand);
  margin-top: 0;
  margin-bottom: 0.5rem;
}

@media (max-width: 768px) {
  .project-header {
    flex-direction: column;
    align-items: flex-start;
  }
  
  .project-logo {
    margin-bottom: 1rem;
  }
  
  .contributors {
    grid-template-columns: 1fr;
  }
  
  .related-projects {
    grid-template-columns: 1fr;
  }
  
  .features-container {
    grid-template-columns: 1fr;
  }
}
</style>