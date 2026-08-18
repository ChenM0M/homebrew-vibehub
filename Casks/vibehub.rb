cask "vibehub" do
  version "3.3.3"

  on_arm do
    sha256 "4584cc34248c36c3ee6be5dc8cdb43c34422b2c3b300363e25e36a5b7e301ead"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.3/VibeHub_3.3.3_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "ed5f2e9f48e0aba9ff234487c6550b18b07e0252650381e48ae083c4b6621751"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.3/VibeHub_3.3.3_x64.dmg",
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
