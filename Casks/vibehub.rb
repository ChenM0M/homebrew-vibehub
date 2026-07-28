cask "vibehub" do
  version "3.2.0"

  on_arm do
    sha256 "e9019e2d761995569e7b301629888d0198e39e4a5efd9e77fabd81a5e784ef90"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.2.0/VibeHub_3.2.0_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "ecbf33818561d9a6b3963aab23b52ea6c8e750e0290f457da9549259de35f3a3"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.2.0/VibeHub_3.2.0_x64.dmg",
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
