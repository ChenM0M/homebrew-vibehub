cask "vibehub" do
  version "3.3.0"

  on_arm do
    sha256 "067da6388b46f3c915c4fc26567e566ba22826cfe78399c1882a3810f6209dfd"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.0/VibeHub_3.3.0_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "bbe2ef4b601de94cd7cf654d9ccea8b8c39e2bcff8bb0f8e4908bf47ccbd2be7"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.0/VibeHub_3.3.0_x64.dmg",
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
