# Written by github.com/whysosuresh/capsjump's release workflow from
# packaging/capsjump.rb.in on every release. Edit the template there, not this file.
cask "capsjump" do
  version "0.9.3"
  sha256 "a5a37c512ef8c1dfd802dfce72e58fda34af0be5a51c46b13866804a73ba4d00"

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
