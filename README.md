# Iris-Ares Homebrew Tap

Homebrew casks for my macOS apps.

```bash
brew tap Iris-Ares/tap
brew install --cask spotion
```

Or without tapping first:

```bash
brew install --cask iris-ares/tap/spotion
```

## Casks

| Cask | |
|---|---|
| [`spotion`](Casks/spotion.rb) | [Spotion](https://github.com/Iris-Ares/Spotion) — search, resume and launch Codex CLI & Claude Code sessions from native macOS Spotlight |

## Notes

**First launch is still blocked by Gatekeeper.** Spotion is not Developer-ID signed
or notarized yet, and Homebrew always quarantines cask downloads, so macOS refuses
the first launch. Open **System Settings → Privacy & Security**, find the
*"Spotion.app" was blocked* notice and click **Open Anyway**. Later in-app updates
(Sparkle) are not quarantined and don't repeat this.

**Already have `/Applications/Spotion.app`?** From a manual download or
`make install` — let Homebrew take it over instead of erroring out:

```bash
brew install --cask --adopt spotion
```

**`brew upgrade` and in-app updates coexist.** The cask is marked `auto_updates true`,
so Homebrew leaves the app alone while Sparkle keeps it current, and steps in only if
the installed bundle actually falls behind the cask.

**Uninstalling leaves the login item.** `brew uninstall --cask spotion` removes the
app, but a "launch at login" registration is owned by macOS and survives as an orphan
entry in *System Settings → General → Login Items*. Turn launch-at-login off in
Spotion's settings before uninstalling. To also remove preferences and the scan
cache, use `brew uninstall --zap --cask spotion`.

## Maintenance

`Casks/spotion.rb` is bumped automatically by
[Spotion's release workflow](https://github.com/Iris-Ares/Spotion/blob/main/.github/workflows/release.yml)
on every `vX.Y.Z` tag — don't hand-edit the `version` / `sha256` lines, they get
overwritten. Everything else in the cask is maintained here.

## License

The cask definitions in this repository are [MIT-licensed](LICENSE). The packaged
software carries its own license.
