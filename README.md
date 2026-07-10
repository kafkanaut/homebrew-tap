# homebrew-tap

Homebrew tap for [Kafkanaut](https://smike4658.github.io/kafkanaut-app/), a free desktop Kafka client.

## Install

```sh
brew install --cask smike4658/tap/kafkanaut
```

## Note on unsigned builds

Kafkanaut builds are ad-hoc signed and not notarized by Apple, so Gatekeeper blocks the first launch. Either right-click `Kafkanaut.app` in `/Applications` and choose **Open**, or install without the quarantine flag:

```sh
brew install --cask --no-quarantine smike4658/tap/kafkanaut
```

## Maintenance

Bump on release: update `version` and `sha256` in `Casks/kafkanaut.rb`.
