cask "haskell-language-server-8105" do
  version "1.2.0"
  sha256 "122811dbd224ebc10ec652f2b4a0c70f1cd45c45bb800b7f875fc421ef743ba8"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-macOS-8.10.5.gz"
  name "Haskell Language Server for GHC 8.10.5"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  conflicts_with formula: "haskell-language-server",
                 cask: "kret/tools/haskell-language-server-full"

  binary "haskell-language-server-8.10.5"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
