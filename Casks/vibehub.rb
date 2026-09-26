cask "vibehub" do
  version "3.4.1"

  on_arm do
    sha256 "adaada0753264cdea33e4c7a909d6ec20d7afdb6c540b802d7bb3e0d4d1fb1ef"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.4.1/VibeHub_3.4.1_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "2d016324ca6763c387fc7f810847edb1b33b777b447bcae0508164da3a4576d0"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.4.1/VibeHub_3.4.1_x64.dmg",
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
