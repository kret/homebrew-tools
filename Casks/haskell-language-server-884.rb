cask "haskell-language-server-884" do
  version "1.0.0"
  sha256 "12db159a0a8e94341cc0d1e677e86a8871ca225be5a95e3fb5280909cb5082f0"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-macOS-8.8.4.gz"
  name "Haskell Language Server for GHC 8.8.4"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  conflicts_with cask: "kret/tools/haskell-language-server-full"

  binary "haskell-language-server-8.8.4"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
