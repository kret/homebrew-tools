cask "haskell-language-server-wrapper" do
  version "1.0.0"
  sha256 "f6eb3f530e5a3a34e12779e38955e74667c6b823eefb725310836299712a2b46"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-wrapper-macOS.gz"
  name "Haskell Language Server wrapper"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  conflicts_with cask: "kret/tools/haskell-language-server-full"

  binary "haskell-language-server-wrapper"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
