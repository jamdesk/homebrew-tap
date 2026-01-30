# Jamdesk Homebrew Tap

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](./LICENSE)

Homebrew formulae for [Jamdesk](https://jamdesk.com) CLI - the command-line tool for building and managing documentation sites.

## What is Jamdesk?

[Jamdesk](https://jamdesk.com) is a documentation platform that transforms MDX (Markdown + React components) into polished documentation websites. The CLI lets you preview docs locally, validate content, and manage your documentation workflow from the terminal.

**What the CLI does:**
- `jamdesk dev` - Preview documentation locally with hot reload
- `jamdesk validate` - Check docs.json schema and MDX syntax
- `jamdesk broken-links` - Find broken internal links
- `jamdesk init` - Initialize a new documentation project

**New to Jamdesk?** Check out the [documentation](https://jamdesk.com/docs) or the [quickstart guide](https://jamdesk.com/docs/quickstart) to get started.

## Installation

```bash
brew tap jamdesk/tap
brew install jamdesk
```

Verify the installation:

```bash
jamdesk --version
```

## Upgrading

```bash
brew upgrade jamdesk
```

## Uninstalling

```bash
brew uninstall jamdesk
brew untap jamdesk/tap
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| `jamdesk` | Documentation platform CLI for local development and validation |

## Requirements

- macOS or Linux
- Homebrew
- Node.js 20+ (installed automatically as dependency)

## Alternative Installation

If you prefer not to use Homebrew:

```bash
# Via npm
npm install -g jamdesk

# Via curl (macOS/Linux)
curl -fsSL https://get.jamdesk.com | bash

# Via PowerShell (Windows)
irm https://get.jamdesk.com/win | iex
```

## Documentation

- [Jamdesk Documentation](https://jamdesk.com/docs) - Full platform docs
- [CLI Reference](https://jamdesk.com/docs/cli/overview) - All CLI commands
- [Local Development](https://jamdesk.com/docs/development/local-preview) - Preview docs locally

## Support

- Issues: [github.com/jamdesk/jamdesk-builder/issues](https://github.com/jamdesk/jamdesk-builder/issues)

## License

MIT
