# android-xiaozhi Documentation

This is the documentation website for the android-xiaozhi project, built with VitePress.

## Features

- Project Guide: Provides detailed usage instructions and development documentation
- Sponsors Page: Showcases and thanks all project sponsors
- Contributing Guide: Instructions on how to contribute code to the project
- Contributors List: Showcases all developers who have contributed to the project
- Responsive Design: Optimized for both desktop and mobile devices

## Local Development

```bash
# Install dependencies
pnpm install

# Start development server
pnpm docs:dev

# Build static files
pnpm docs:build

# Preview build results
pnpm docs:preview
```

## Directory Structure

```
documents/
├── docs/                  # Documentation source files
│   ├── .vitepress/        # VitePress configuration
│   ├── guide/             # Guide documents
│   ├── sponsors/          # Sponsors page
│   ├── contributing.md    # Contributing guide
│   ├── contributors.md    # Contributors list
│   └── index.md           # Homepage
├── package.json           # Project configuration
└── README.md              # Project description
```

## Sponsors Page

The sponsors page is implemented through:

1. The `/sponsors/` directory contains sponsor-related content
2. `data.json` file stores sponsor data
3. Vue components dynamically render the sponsor list on the client side
4. Detailed instructions and payment methods to become a sponsor

## Contributing Guide

The contributing guide page provides:

1. Development environment setup guide
2. Code contribution process instructions
3. Coding and commit standards
4. Pull Request creation and review process
5. Documentation contribution guide

## Contributors List

The contributors list page showcases all developers who have contributed, including:

1. Core development team members
2. Code contributors
3. Documentation contributors
4. Testers and feedback providers

## Deployment

The documentation website is automatically deployed to GitHub Pages via GitHub Actions.