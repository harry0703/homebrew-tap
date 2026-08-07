# Harry0703 Homebrew Tap

Homebrew formulae and casks for projects maintained by
[@harry0703](https://github.com/harry0703).

## Packages

| Package | Type | Description | Install |
| --- | --- | --- | --- |
| [MangoDisk](https://github.com/harry0703/MangoDisk) | Cask | Safety-first disk cleaner and disk space analyzer | `brew install --cask harry0703/tap/mangodisk` |

Using a fully qualified package name automatically adds this tap. To add it
manually instead, run:

```sh
brew tap harry0703/tap
```

After the tap is installed, package names can be shortened for routine
operations, for example:

```sh
brew upgrade --cask mangodisk
```

## Package notes

### MangoDisk

Uninstall the application while keeping its settings and operational history:

```sh
brew uninstall --cask mangodisk
```

Remove MangoDisk together with its settings, history, logs, and caches:

```sh
brew uninstall --zap --cask mangodisk
```

## Maintenance

- Casks live in `Casks/`; formulae live in `Formula/`.
- Every package must use a versioned, immutable upstream release when possible.
- Published release assets must never be replaced in place.
- Every versioned download must pin its matching SHA-256 checksum.
- CI validates the complete tap and fetches every declared package download.
