cask "haskell-language-server-865" do
  version "1.1.0"
  sha256 "480ca83514b26564cdf8fe26642ae75b3bd84f55c1eb5b3337a81ad338bf1016"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-macOS-8.6.5.gz"
  name "Haskell Language Server for GHC 8.6.5"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  conflicts_with formula: "haskell-language-server",
                 cask: "kret/tools/haskell-language-server-full"

  binary "haskell-language-server-8.6.5"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
