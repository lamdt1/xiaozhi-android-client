---
title: Contributors List
description: Thanks to all open-source personnel who contributed to the project
sidebar: false
outline: deep
---

<div class="contributors-page">

# Contributors List

<div class="header-content">
  <h2>Thanks to the following personnel for their help in the mobile project ❤️</h2>
  <p>Ranking in no particular order</p>
</div>

<div class="contributors-list">

  <div class="contributor-card">
    <div class="contributor-name">huangjunsen0406</div>
    <div class="contributor-link"><a href="https://github.com/huangjunsen0406" target="_blank">GitHub Profile</a></div>
  </div>
  
  <div class="contributor-card">
    <div class="contributor-name">xinnan-tech</div>
    <div class="contributor-link"><a href="https://github.com/xinnan-tech" target="_blank">GitHub Profile</a></div>
  </div>

</div>

</div>

<style>
.contributors-page {
  max-width: 900px;
  margin: 0 auto;
  padding: 2rem 1.5rem;
}

.contributors-page h1 {
  text-align: center;
  margin-bottom: 1rem;
}

.header-content {
  text-align: center;
  margin-bottom: 3rem;
}

.header-content h2 {
  color: var(--vp-c-brand);
  margin-bottom: 0.5rem;
}

.contributors-list {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
  gap: 1.5rem;
  margin-bottom: 3rem;
}

.contributor-card {
  border: 1px solid var(--vp-c-divider);
  border-radius: 8px;
  padding: 1.5rem;
  transition: all 0.3s ease;
  text-align: center;
}

.contributor-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 5px 15px rgba(0, 0, 0, 0.1);
}

.contributor-name {
  font-size: 1.2rem;
  font-weight: 600;
  margin-bottom: 0.5rem;
}

.contributor-description {
  color: var(--vp-c-text-2);
  font-size: 0.9rem;
  margin-bottom: 0.75rem;
}

.contributor-link a {
  color: var(--vp-c-brand);
  text-decoration: none;
}

.contributor-link a:hover {
  text-decoration: underline;
}

@media (max-width: 768px) {
  .contributors-list {
    grid-template-columns: 1fr;
  }
}
</style>