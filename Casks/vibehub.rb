cask "vibehub" do
  version "2.0.0-pre.19"

  on_arm do
    sha256 "f5379ef1f507f3f54a73bb623bde40cde950c6b9d24188df5e7c7a280352e0e5"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.19/VibeHub_2.0.0-pre.19_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "aad6c5f7e9f0698208d731921e6aaf1ec6880dbf024f674e9ed3425a2f77d643"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.19/VibeHub_2.0.0-pre.19_x64.dmg",
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
