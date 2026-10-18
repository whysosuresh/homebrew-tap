# homebrew-tap

Homebrew tap for Suresh Attaluri's tools.

## CapsJump

Caps Lock finally has a job: one key to the right app, window or tab, in the Chrome profile you choose. For macOS ([site](https://capsjump.com/), [source](https://github.com/whysosuresh/capsjump)).

```bash
brew install --cask whysosuresh/tap/capsjump
```

Naming the cask in full trusts that one cask; no `brew tap` or `brew trust` step is needed. `brew upgrade --cask capsjump` picks up new releases, which CapsJump's release workflow writes to `Casks/capsjump.rb`.

Moving from `stigmer/tap`: run `brew uninstall --cask capsjump`, then the install line above, then `open -a CapsJump` (the uninstall quits it). Your Accessibility permission, start-at-login and `~/.capsjump.yaml` stay.
