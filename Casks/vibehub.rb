cask "vibehub" do
  version "3.4.3"

  on_arm do
    sha256 "392308641c259f643b2314b290df7a6a870bf90a128c71caf20c1cbb67967b64"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.4.3/VibeHub_3.4.3_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "aae173793f3906a227702a3fb70f7dc6f5ffb84e5d954ad8a9bb6ca8a8b2831a"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.4.3/VibeHub_3.4.3_x64.dmg",
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
