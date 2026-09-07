cask "vibehub" do
  version "3.3.11"

  on_arm do
    sha256 "4f51945ff2ca5317c38b3b373390a8ffb775ad6cfe4ef887deb9da05b3ab87be"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.11/VibeHub_3.3.11_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "49cc817b60fddcf1cbe251cd37d35458012e1f1bd08c9c78a8267fabce3aac12"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.11/VibeHub_3.3.11_x64.dmg",
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
