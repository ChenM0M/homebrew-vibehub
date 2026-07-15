cask "vibehub" do
  version "3.0.0"

  on_arm do
    sha256 "eac6b7dc5d3c8fa90062047660361d3d5de27bb53c5139fe6eb4ecb19847aacd"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.0/VibeHub_3.0.0_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "e4b84a609c29db1dd6741a5284cfea02341ce4fad7e797793b9dec89c0c8dab1"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.0/VibeHub_3.0.0_x64.dmg",
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
