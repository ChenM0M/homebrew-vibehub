cask "vibehub" do
  version "3.3.6"

  on_arm do
    sha256 "572b2dfe56b14765ebf16610fd053df36a706bff4dc30a043caed9c197cce3c8"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.6/VibeHub_3.3.6_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "ee774be456fb58a7bb3c6436c3acc39d17ca08882402b8b9330f9bb13640feda"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.6/VibeHub_3.3.6_x64.dmg",
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
