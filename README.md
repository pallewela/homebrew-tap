# homebrew-tap

Homebrew tap for [`rusta`](https://github.com/pallewela/rusta),
[`multilink`](https://github.com/pallewela/multilink) and
[`diskfree`](https://github.com/pallewela/diskfree).

## Install

```sh
brew install pallewela/tap/rusta
brew install --cask pallewela/tap/multilink
brew install --cask pallewela/tap/diskfree
```

## Formulae and casks

| Name                | Description                                                     |
| ------------------- | --------------------------------------------------------------- |
| `rusta`             | macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart.    |
| `multilink` (cask)  | Menu bar app that balances connections across network links.    |
| `diskfree` (cask)   | Disk usage explorer with a size-sorted tree (macOS 26+).        |

`multilink` and `diskfree` aren't notarized yet, so their casks clear the quarantine flag after install.

## How releases land here

`pallewela/rusta`'s release workflow fires a `repository_dispatch` event
of type `rusta-release` when a new `v*` tag is pushed. The
`.github/workflows/update-formula.yml` workflow here picks that up and
rewrites `Formula/rusta.rb` with the new version, tarball URL, and
SHA256.

`pallewela/multilink` does the same with a `multilink-release` event,
handled by `.github/workflows/update-cask.yml`, which rewrites the
version and SHA256 in `Casks/multilink.rb`.

`pallewela/diskfree` sends a `diskfree-release` event, handled by
`.github/workflows/update-diskfree-cask.yml`. That workflow writes the
whole `Casks/diskfree.rb` from a template, so the first release creates it.

If automation breaks, both workflows expose a `workflow_dispatch`
trigger so you can bump them manually from the Actions tab.
