cask "haskell-language-server-864" do
  version "1.0.0"
  sha256 "6adf67f1814d46fd24a2aae69530e9ef42971f52bc836eefba5a09cdaa52a8d5"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-macOS-8.6.4.gz"
  name "Haskell Language Server for GHC 8.6.4"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  conflicts_with cask: "kret/tools/haskell-language-server-full"

  binary "haskell-language-server-8.6.4"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
