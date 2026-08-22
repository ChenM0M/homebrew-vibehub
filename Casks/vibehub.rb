cask "vibehub" do
  version "3.3.4"

  on_arm do
    sha256 "e7a24a43092889bd32bd3b9bb7a0e5fb1d80673f447b902c4181579e1dd7610c"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.4/VibeHub_3.3.4_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "74c1436f9ea2c1426ff50d6be8711642457d83173f369196b40b897dba6cba30"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.4/VibeHub_3.3.4_x64.dmg",
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
