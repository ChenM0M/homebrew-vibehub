cask "vibehub" do
  version "2.0.0-pre.16"

  on_arm do
    sha256 "3ddf0fec9295566fa616899b60cf16f4d9187d49ca11f67e06f45413b59eb1b2"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.16/VibeHub_2.0.0-pre.16_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "ecd6bbfe27691334bc1a08e12d7418a831ab35e6e37bbe4179c733c79526595f"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.16/VibeHub_2.0.0-pre.16_x64.dmg",
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
