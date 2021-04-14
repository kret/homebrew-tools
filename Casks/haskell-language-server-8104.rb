cask "haskell-language-server-8104" do
  version "1.1.0"
  sha256 "c281aa02c6261e48710c85777acbec3fee3422494d915db6305d5cf02bf87741"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-macOS-8.10.4.gz"
  name "Haskell Language Server for GHC 8.10.4"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  conflicts_with formula: "haskell-language-server",
                 cask: "kret/tools/haskell-language-server-full"

  binary "haskell-language-server-8.10.4"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
