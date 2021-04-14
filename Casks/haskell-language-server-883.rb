cask "haskell-language-server-883" do
  version "1.1.0"
  sha256 "67e2cdae68071a432d6a59147087979e309e3086f9bc4a80e5e96be822849576"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-macOS-8.8.3.gz"
  name "Haskell Language Server for GHC 8.8.3"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  conflicts_with formula: "haskell-language-server",
                 cask: "kret/tools/haskell-language-server-full"

  binary "haskell-language-server-8.8.3"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
