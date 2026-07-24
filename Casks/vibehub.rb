cask "vibehub" do
  version "3.0.6"

  on_arm do
    sha256 "7612f6a6131db924782c3bc503cce43ff3fd45dd663012d613e93b5a7af802de"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.6/VibeHub_3.0.6_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "0b72ba521f7b66f30fc65304256e4d463efe9bd5ff59805a32d99315233d17b8"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.6/VibeHub_3.0.6_x64.dmg",
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
