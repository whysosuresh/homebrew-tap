# Written by github.com/whysosuresh/capsjump's release workflow from
# packaging/capsjump.rb.in on every release. Edit the template there, not this file.
cask "capsjump" do
  version "0.7.2"
  sha256 "75824effafffec108dcc834aa42fa91069229482db698ce9088d735e6c9f475a"

  url "https://github.com/whysosuresh/capsjump/releases/download/v#{version}/CapsJump-#{version}.zip"
  name "CapsJump"
  desc "Caps Lock shortcuts for apps, Chrome accounts, windows and links"
  homepage "https://capsjump.com/"

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
