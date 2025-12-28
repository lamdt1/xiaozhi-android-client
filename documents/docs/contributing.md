---
title: Contributing Guide
description: How to contribute code to the android-xiaozhi project
sidebar: false
outline: deep
---

<div class="contributing-page">

# Contributing Guide

<div class="header-content">
  <h2>How to contribute code to the android-xiaozhi project 🚀</h2>
</div>

## Introduction

Thank you for your interest in the android-xiaozhi project! We warmly welcome community contributions, whether it's fixing bugs, improving documentation, or adding new features. This guide will help you understand how to submit contributions to the project.

## Development Environment Setup

### Basic Requirements

- Flutter SDK 3.7.0 or higher
- Dart SDK 3.7.0 or higher
- Git version control system
- Android Studio or Visual Studio Code (with Flutter plugin)
- Android SDK (for Android development)
- Xcode (for iOS development, macOS only)

### Getting the Source Code

1. First, Fork this project on GitHub to your own account:
   - Visit the [android-xiaozhi project page](https://github.com/TOM88812/xiaozhi-android-client)
   - Click the "Fork" button in the top right corner
   - Wait for the Fork to complete; you will be redirected to your copy of the repository

2. Clone your forked repository locally:

```bash
git clone https://github.com/YOUR_USERNAME/xiaozhi-android-client.git
cd xiaozhi-android-client
```

3. Add the upstream repository as a remote source:

```bash
git remote add upstream https://github.com/TOM88812/xiaozhi-android-client.git
```

You can confirm the remote repositories are correctly configured using the `git remote -v` command:

```bash
git remote -v
# Should show:
# origin    https://github.com/YOUR_USERNAME/xiaozhi-android-client.git (fetch)
# origin    https://github.com/YOUR_USERNAME/xiaozhi-android-client.git (push)
# upstream  https://github.com/TOM88812/xiaozhi-android-client.git (fetch)
# upstream  https://github.com/TOM88812/xiaozhi-android-client.git (push)
```

### Installing Development Dependencies

```bash
# Install Flutter dependencies
flutter pub get
```

## Development Process

### Keeping in Sync with the Main Repository

It's important to ensure your local repository is synced with the main project before starting work. Here are the steps to sync your local repository:

1. Switch to your main branch (`main`):

```bash
git checkout main
```

2. Fetch the latest changes from the upstream repository:

```bash
git fetch upstream
```

3. Merge the changes from the upstream main branch into your local main branch:

```bash
git merge upstream/main
```

4. Push the updated local main branch to your GitHub repository:

```bash
git push origin main
```

### Creating a Branch

Before starting any work, ensure you create a new branch from the latest upstream main branch:

```bash
# Get the latest upstream code (as described in the previous section)
git fetch upstream
git checkout -b feature/your-feature-name upstream/main
```

When naming your branch, you can follow these conventions:
- `feature/xxx`: New feature development
- `fix/xxx`: Bug fix
- `docs/xxx`: Documentation update
- `test/xxx`: Test-related work
- `refactor/xxx`: Code refactoring

### Coding Standards

We follow the Flutter official recommended code style guide. Before submitting code, please ensure it meets the following requirements:

- Use 2-space indentation
- Line length should not exceed 120 characters
- Use meaningful variable and function names
- Add documentation comments for public APIs
- Utilize the Dart type system

We recommend using Flutter's static analysis tools to help you follow the coding standards:

```bash
# Check code using dart analyze
flutter analyze
```

### Testing

Before submitting, please ensure all tests pass:

```bash
flutter test
```

## Submitting Changes

### Pre-submission Checklist

Before submitting your code, please ensure the following checks are complete:

1. Does the code comply with Flutter naming conventions?
2. Have necessary test cases been added?
3. Do all tests pass?
4. Has appropriate documentation been added?
5. Does it resolve the issue you intended to fix?
6. Is it in sync with the latest upstream code?

### Committing Changes

Develop a habit of making small, frequent commits during the development process. This makes your changes easier to track and understand:

```bash
# View changed files
git status

# Stage changes
git add lib/feature.dart test/feature_test.dart

# Commit changes
git commit -m "feat: add new feature X"
```

### Resolving Conflicts

If you encounter conflicts while trying to merge upstream changes, please follow these steps to resolve them:

1. First, identify the locations of the conflicts:

```bash
git status
```

2. Open the conflicting files; you will see markers like the following:

```text
<<<<<<< HEAD
Your changes
=======
Upstream code
>>>>>>> upstream/main
```

3. Modify the files to resolve the conflicts and remove the conflict markers.
4. After resolving all conflicts, stage and commit:

```bash
git add .
git commit -m "fix: resolve merge conflicts"
```

### Commit Standards

We use the [Conventional Commits](https://www.conventionalcommits.org/) specification for formatting Git commit messages. Commit messages should follow this format:

```text
<type>[optional scope]: <description>

[optional body]

[optional footer(s)]
```

Common commit types include:
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Changes that do not affect the meaning of the code (whitespace, formatting, etc.)
- `refactor`: Code refactoring that neither fixes a bug nor adds a feature
- `perf`: Code changes that improve performance
- `test`: Adding missing tests or correcting existing tests
- `chore`: Changes to the build process or auxiliary tools and libraries

Example:

```text
feat(tts): add support for new speech synthesis engine

Add support for Baidu Text-to-Speech API, including the following features:
- Support for multiple voices
- Support for speed and volume adjustment
- Support for mixed Chinese and English synthesis

Fixes #123
```

### Pushing Changes

After completing code changes, push your branch to your GitHub repository:

```bash
git push origin feature/your-feature-name
```

If you have already created a Pull Request and need to update it, just push to the same branch again:

```bash
# After making more changes
git add .
git commit -m "refactor: improve code based on feedback"
git push origin feature/your-feature-name
```

### Syncing Latest Code Before Creating a Pull Request

Before creating a Pull Request, it is recommended to sync with the upstream repository again to avoid potential conflicts:

```bash
# Fetch latest upstream code
git fetch upstream

# Rebase your feature branch onto the latest upstream code
git rebase upstream/main

# If conflicts occur, resolve them and continue the rebase
git add .
git rebase --continue

# Force push the updated branch to your repository
git push --force-with-lease origin feature/your-feature-name
```

Note: Using `--force-with-lease` is safer than `--force` as it prevents overwriting someone else's changes.

### Creating a Pull Request

When you have finished feature development or bug fixes, follow these steps to create a Pull Request:

1. Push your changes to GitHub:

```bash
git push origin feature/your-feature-name
```

2. Visit your forked repository page on GitHub and click the "Compare & pull request" button.

3. Fill out the Pull Request form:
   - Use a clear title following the commit message format.
   - Provide detailed information in the description.
   - Reference related issues (using the `#issue_number` format).
   - If this is a work in progress, add the `[WIP]` prefix to the title.

4. Submit the Pull Request and wait for project maintainers to review.

### Pull Request Lifecycle

1. **Creation**: Submit your PR.
2. **CI Checks**: Automated testing and style checks.
3. **Code Review**: Maintainers will review your code and provide feedback.
4. **Revision**: Modify your code based on feedback.
5. **Approval**: Once your PR is approved.
6. **Merge**: Maintainers will merge your PR into the main branch.

## Documentation Contribution

If you want to improve project documentation, please follow these steps:

1. Fork the project and clone it locally following the steps above.

2. Documentation is located in the `documents/docs` directory in Markdown format.

3. Install documentation development dependencies:

```bash
cd documents
pnpm install
```

4. Start the local documentation server:

```bash
pnpm docs:dev
```

5. Visit `http://localhost:5173/xiaozhi-android/` in your browser to preview your changes.

6. After completing your changes, submit your contribution and create a Pull Request.

### Documentation Writing Guidelines

- Use clear and concise language.
- Provide practical examples.
- Explain complex concepts in detail.
- Include appropriate screenshots or diagrams where necessary.
- Avoid excessive technical jargon; provide explanations when necessary.
- Maintain a consistent documentation structure.

## Issue Feedback

If you find a problem but cannot fix it immediately, please [create an Issue](https://github.com/TOM88812/xiaozhi-android-client/issues/new) on GitHub. When creating an Issue, please include the following information:

- Detailed description of the problem.
- Steps to reproduce the issue.
- Expected behavior vs. actual behavior.
- Your Operating System and Flutter/Dart version.
- Relevant log output or error messages.

## Code Review

After submitting a Pull Request, project maintainers will review your code. During the review process:

- Please be patient while waiting for feedback.
- Respond promptly to comments and suggestions.
- Make revisions and update your Pull Request as needed.
- Maintain polite and constructive discussions.

### Handling Code Review Feedback

1. Read all comments and suggestions carefully.
2. Address each point with a response or change.
3. If you disagree with a suggestion, politely explain your reasoning.
4. After modifications are complete, leave a message in the PR to notify the reviewer.

## Becoming a Project Maintainer

If you consistently make valuable contributions to the project, you may be invited to become a project maintainer. As a maintainer, you will have the authority to review and merge others' Pull Requests.

### Maintainer Responsibilities

- Review Pull Requests.
- Manage Issues.
- Participate in project planning.
- Answer community questions.
- Help guide new contributors.

## Code of Conduct

Please respect all project participants and follow these guidelines:

- Use inclusive language.
- Respect different viewpoints and experiences.
- Graciously accept constructive criticism.
- Focus on the best interests of the community.
- Show empathy towards other community members.

## FAQ

### Where should I start contributing?

1. Look for issues labeled "good first issue".
2. Fix errors or unclear parts in the documentation.
3. Add more test cases.
4. Resolve issues you discovered while using the project.

### My PR hasn't received a response for a long time. What should I do?

Leave a comment on the PR and politely ask if further improvements or clarifications are needed. Please understand that maintainers may be busy and need time to review your contribution.

### What types of changes can I contribute?

- Bug fixes
- New features
- Performance improvements
- Documentation updates
- Test cases
- Code refactoring

## Acknowledgments

Thanks again for contributing! Your involvement is very important to us, and together we can make android-xiaozhi even better!

</div>

<style>
.contributing-page {
  max-width: 900px;
  margin: 0 auto;
  padding: 2rem 1.5rem;
}

.contributing-page h1 {
  text-align: center;
  margin-bottom: 1rem;
}

.header-content {
  text-align: center;
}

.header-content h2 {
  color: var(--vp-c-brand);
  margin-bottom: 1rem;
}

.contributing-page h2 {
  margin-top: 3rem;
  padding-top: 1rem;
  border-top: 1px solid var(--vp-c-divider);
}

.contributing-page h3 {
  margin-top: 2rem;
}

.contributing-page code {
  background-color: var(--vp-c-bg-soft);
  padding: 0.2em 0.4em;
  border-radius: 3px;
}

.contributing-page pre {
  margin: 1rem 0;
  border-radius: 8px;
  overflow: auto;
}
</style>