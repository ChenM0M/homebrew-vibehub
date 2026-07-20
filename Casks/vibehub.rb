cask "vibehub" do
  version "3.0.5"

  on_arm do
    sha256 "1d114cb0280254fc9dc2dbb98f7451dc70cc2654f376f6de7e78b3fae2d7e8d5"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.5/VibeHub_3.0.5_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "a39d9963f5852bd5ccb621f491e4fb7684c736f34f09d194e3e927789e65287c"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.5/VibeHub_3.0.5_x64.dmg",
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
