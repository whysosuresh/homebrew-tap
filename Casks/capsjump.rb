# Written by github.com/whysosuresh/capsjump's release workflow from
# packaging/capsjump.rb.in on every release. Edit the template there, not this file.
cask "capsjump" do
  version "0.9.7"
  sha256 "4e4d69aeb7c010f0ef78c5d7849e5d7d30044ecb0482009677e314760e52f231"

  url "https://github.com/whysosuresh/capsjump/releases/download/v#{version}/CapsJump-#{version}.zip"
  name "CapsJump"
  desc "Caps Lock shortcuts for Chrome profiles, apps, windows and links"
  homepage "https://capsjump.com/"

  depends_on macos: :ventura

  app "CapsJump.app"
  binary "#{appdir}/CapsJump.app/Contents/Helpers/capsjump"

  # Quitting gives Caps Lock back; an app removed while running would leave it mapped.
  uninstall quit: "ai.stigmer.capsjump"

  caveats <<~EOS
    Open CapsJump to finish setting up; its Welcome window walks you through it:
      open -a CapsJump
  EOS
end
