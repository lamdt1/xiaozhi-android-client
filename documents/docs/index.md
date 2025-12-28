---
# https://vitepress.dev/reference/default-theme-home-page
layout: home

hero:
  name: "Android-XIAOZHI"
  tagline: android-xiaozhi is a Flutter-based cross-platform Xiaozhi client, supporting iOS, Android, Web, and more.
  actions:
    - theme: brand
      text: Get Started
      link: /guide/00_documentation_index
    - theme: alt
      text: View Source
      link: https://github.com/TOM88812/xiaozhi-android-client

features:
  - title: Cross-platform Support
    details: Developed using Flutter, one codebase supports iOS, Android, Web, Windows, macOS, and Linux.
  - title: Multi-AI Model Integration
    details: Supports Xiaozhi AI service, Dify, OpenAI, and other AI services; switch models at any time.
  - title: Rich Interaction
    details: Supports real-time voice dialogue, text messages, image messages, and manual interruption during calls.
  - title: Voice Optimization
    details: Implements AEC+NS echo cancellation for Android devices to enhance voice interaction quality.
  - title: Premium UI Design
    details: Light skeuomorphic design, smooth animations, and adaptive UI layout for a better visual experience.
  - title: Flexible Configuration
    details: Supports management of multiple AI service configurations; add multiple Xiaozhi agents to the chat list.
  - title: Real-time Voice Recognition
    details: Fast-responding voice recognition system providing real-time speech-to-text.
  - title: Multiple Service Providers
    details: Supports official Xiaozhi services, Dify, OpenAI, and other AI providers.
  - title: Continuous Dialogue Mode
    details: Supports continuous conversation, maintaining context for coherent interaction.
  - title: Local Optimization
    details: Performance optimized for mobile devices to reduce battery consumption.
  - title: Image-Text Interaction
    details: Supports mixed internal image and text dialogue for a multimodal interaction experience.
  - title: Automatic Device Registration
    details: Supports automatic device registration via OTA, simplifying the configuration process.
---

<div class="developers-section">
  <h2>👨‍💻 Developers</h2>
  <p>Thanks to the following developers for their contributions to android-xiaozhi</p>
  
  <div class="contributors-wrapper">
    <a href="https://github.com/TOM88812/xiaozhi-android-client/graphs/contributors" class="contributors-link">
      <img src="https://contrib.rocks/image?repo=TOM88812/xiaozhi-android-client&max=20&columns=10" alt="contributors" class="contributors-image"/>
    </a>
  </div>
  
  <div class="developers-actions">
    <a href="/contributors" class="dev-button">View Special Contributors</a>
    <a href="/contributing" class="dev-button outline">How to Contribute</a>
  </div>

  <div class="join-message">
    <h3>Join the Contributors</h3>
    <p>We welcome more developers to participate in the project! Check the <a href="/contributing">Contributing Guide</a> to learn how to get involved.</p>
  </div>

</div>

<style>
.developers-section {
  text-align: center;
  max-width: 960px;
  margin: 4rem auto 0;
  padding: 2rem;
  border-top: 1px solid var(--vp-c-divider);
}

.developers-section h2 {
  margin-bottom: 0.5rem;
  color: var(--vp-c-brand);
}

.contributors-wrapper {
  margin: 2rem auto;
  max-width: 600px;
  position: relative;
  overflow: hidden;
  border-radius: 10px;
  box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
  transition: all 0.3s ease;
}

.contributors-wrapper:hover {
  transform: translateY(-5px);
  box-shadow: 0 8px 24px rgba(0, 0, 0, 0.15);
}

.contributors-link {
  display: block;
  text-decoration: none;
  background-color: var(--vp-c-bg-soft);
}

.contributors-image {
  width: 100%;
  height: auto;
  display: block;
  transition: all 0.3s ease;
  max-height: 100px;
}

.developers-actions {
  display: flex;
  gap: 1rem;
  justify-content: center;
  margin-top: 1.5rem;
}

.developers-actions a {
  text-decoration: none;
}

.dev-button {
  display: inline-block;
  border-radius: 20px;
  padding: 0.5rem 1.5rem;
  font-weight: 500;
  transition: all 0.2s ease;
  text-decoration: none;
}

.dev-button:not(.outline) {
  background-color: var(--vp-c-brand);
  color: white;
}

.dev-button.outline {
  border: 1px solid var(--vp-c-brand);
  color: var(--vp-c-brand);
}

.dev-button:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

@media (max-width: 640px) {
  .developers-actions {
    flex-direction: column;
  }
  
  .contributors-wrapper {
    margin: 1.5rem auto;
  }
}

.join-message {
  text-align: center;
  margin-top: 2rem;
  padding: 2rem;
  border-top: 1px solid var(--vp-c-divider);
}

.join-message h3 {
  margin-bottom: 1rem;
}
</style>
