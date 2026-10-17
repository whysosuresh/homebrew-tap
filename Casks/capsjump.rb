# Written by github.com/whysosuresh/capsjump's release workflow from
# packaging/capsjump.rb.in on every release. Edit the template there, not this file.
cask "capsjump" do
  version "0.7.1"
  sha256 "8f41b4616ab92e073f1e2ce44f4e11516bdb9acd215b4ce9b7c250b13b1a87c9"

  url "https://github.com/whysosuresh/capsjump/releases/download/v#{version}/CapsJump-#{version}.zip"
  name "CapsJump"
  desc "Caps Lock shortcuts for apps, Chrome accounts, windows and links"
  homepage "https://whysosuresh.github.io/capsjump/"

  depends_on macos: :ventura

  app "CapsJump.app"
  binary "#{appdir}/CapsJump.app/Contents/Helpers/capsjump"

  # Quitting gives Caps Lock back; an app removed while running would leave it mapped.
  uninstall quit: "ai.stigmer.capsjump"

  caveats <<~EOS
    Grant CapsJump its permissions once (they survive upgrades):
      capsjump setup
    Then write your keys and sites, and check them:
      capsjump init
      capsjump check
  EOS
end
