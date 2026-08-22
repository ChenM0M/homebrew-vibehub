cask "vibehub" do
  version "3.3.5"

  on_arm do
    sha256 "8d046a2450a14ff28458a900c3bcace2644e430d97cef87058926c1d9e114ffb"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.5/VibeHub_3.3.5_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "f1424dcd014b67d505b8be853d30575f26b99310e438568293b61e1b9a6d0fd8"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.5/VibeHub_3.3.5_x64.dmg",
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
