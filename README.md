# homebrew-tap

Homebrew tap for [`rusta`](https://github.com/pallewela/rusta).

## Install

```sh
brew install pallewela/tap/rusta
```

## Formulae

| Formula | Description                                                  |
| ------- | ------------------------------------------------------------ |
| `rusta` | macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart. |

## How releases land here

`pallewela/rusta`'s release workflow fires a `repository_dispatch` event
of type `rusta-release` when a new `v*` tag is pushed. The
`.github/workflows/update-formula.yml` workflow here picks that up and
rewrites `Formula/rusta.rb` with the new version, tarball URL, and
SHA256.

If automation breaks, the same workflow exposes a `workflow_dispatch`
trigger that accepts `tag`, `url`, and `sha256` as inputs so you can
bump the formula manually from the Actions tab.
