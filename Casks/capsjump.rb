# Written by github.com/whysosuresh/capsjump's release workflow from
# packaging/capsjump.rb.in on every release. Edit the template there, not this file.
cask "capsjump" do
  version "0.8.0"
  sha256 "97cf4fc34dabeec4ef19a3ad3a351ab1e8abbae26e531c91f3aebf961d63f6c6"

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
    Open CapsJump to finish setting up; its Welcome window walks you through it:
      open -a CapsJump
  EOS
end
