cask "haskell-language-server-wrapper" do
  version "1.1.0"
  sha256 "e5cf808961c51cc91ee0331479241d998f0193054a9c5f1019159ed6ed8f7943"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-wrapper-macOS.gz"
  name "Haskell Language Server wrapper"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  conflicts_with formula: "haskell-language-server",
                 cask:    "kret/tools/haskell-language-server-full"

  binary "haskell-language-server-wrapper"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
