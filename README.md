# Kret's Tools


A [Homebrew](https://brew.sh) tap with some tools.
At the moment [Haskell Language Server](https://github.com/haskell/haskell-language-server) (HLS).

## Casks available

* `haskell-language-server-full` - HLS full release (wrapper + all language server binaries)
* `haskell-language-server-wrapper` - HLS wrapper binary
* `haskell-language-server-8104` - HLS language server binary compiled for GHC 8.10.4
* `haskell-language-server-8103` - HLS language server binary compiled for GHC 8.10.3
* `haskell-language-server-8102` - HLS language server binary compiled for GHC 8.10.2
* `haskell-language-server-884` - HLS language server binary compiled for GHC 8.8.4
* `haskell-language-server-883` - HLS language server binary compiled for GHC 8.8.3
* `haskell-language-server-882` - HLS language server binary compiled for GHC 8.8.2
* `haskell-language-server-865` - HLS language server binary compiled for GHC 8.6.5
* `haskell-language-server-864` - HLS language server binary compiled for GHC 8.6.4

_Tip:_ install with `--no-quarantine` Homebrew flag for ease of use - otherwise macOS
will require you to manually approve security exceptions
first time each binary is used (System Preferences > Security & Privacy).


## How do I install these casks?
`brew install kret/tools/<cask>`

Or `brew tap kret/tools` and then `brew install <cask>`.


## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
