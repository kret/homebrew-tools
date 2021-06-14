cask "haskell-language-server-wrapper" do
  version "1.2.0"
  sha256 "980f494fccda5e6e60eb6de3b40fe41e23a20fe44e15e04296e07c1970547f8e"

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
