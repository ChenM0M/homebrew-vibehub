cask "vibehub" do
  version "2.0.0-pre.15"

  on_arm do
    sha256 "30e32e7268b9911392d53955bf27457171354238752f33d6f7b2bfc1e3aca37b"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.15/VibeHub_2.0.0-pre.15_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "d220203e424a80edd1356b74be32039a8eda400ec10ef03367886e3574505ea2"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.15/VibeHub_2.0.0-pre.15_x64.dmg",
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
