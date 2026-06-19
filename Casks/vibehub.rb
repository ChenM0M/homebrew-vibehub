cask "vibehub" do
  version "2.0.0-pre.18"

  on_arm do
    sha256 "1e30039efbeab02f7599ccb6a2c94e95325b4d752840060a6308c12cb6cc55dc"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.18/VibeHub_2.0.0-pre.18_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "38d922545332eb5584289947eb8247cf98de4fcfd63ca21c7c3d96767d2c023b"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.18/VibeHub_2.0.0-pre.18_x64.dmg",
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
