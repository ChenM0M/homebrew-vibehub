cask "vibehub" do
  version "3.3.12"

  on_arm do
    sha256 "d1531c959c53c60a1c5e76d6b627596df841f8c88472a156c681cfdc4a345ae9"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.12/VibeHub_3.3.12_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "3dd3a105924f34e2478ade47a9ab974c70610a637ce47669b0a8213caebb7859"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.12/VibeHub_3.3.12_x64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  name "VibeHub"
  desc "Cross-platform launcher for development tools with an AI gateway"
  homepage "https://github.com/ChenM0M/VibeHub"

  app "VibeHub.app"
  binary "#{appdir}/VibeHub.app/Contents/MacOS/vibehub", target: "vibehub"

  zap trash: [
    "~/Library/Application Support/VibeHub",
    "~/Library/Preferences/com.vibehub.launcher.plist",
    "~/Library/Saved Application State/com.vibehub.launcher.savedState",
  ]
end
