# Written by github.com/whysosuresh/capsjump's release workflow from
# packaging/capsjump.rb.in on every release. Edit the template there, not this file.
cask "capsjump" do
  version "0.9.10"
  sha256 "c59c2981ad384914a845e67e4a6152678106042cc947204203a87650b25c189c"

  url "https://github.com/whysosuresh/capsjump/releases/download/v#{version}/CapsJump-#{version}.zip"
  name "CapsJump"
  desc "Caps Lock shortcuts for Chrome and Brave profiles, apps, windows and links"
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
