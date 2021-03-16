cask "haskell-language-server-8103" do
  version "1.0.0"
  sha256 "9cad2dd1083d3692b8c3023f3590dc77dcc4389484c5513874b24145843eea4a"

  url "https://github.com/haskell/haskell-language-server/releases/download/#{version}/haskell-language-server-macOS-8.10.3.gz"
  name "Haskell Language Server for GHC 8.10.3"
  desc "Integration point for ghcide and haskell-ide-engine. One IDE to rule them all"
  homepage "https://github.com/haskell/haskell-language-server"

  conflicts_with cask: "kret/tools/haskell-language-server-full"

  binary "haskell-language-server-8.10.3"

  caveats <<-EOS
    Install with `brew install #{token} --no-quarantine`,
    or manually approve security exceptions in System Preferences -> Security & Privacy.

    You need to provide GHC/stack/cabal yourself, depending on your needs
    (see https://github.com/haskell/haskell-language-server#prerequisites).
  EOS
end
