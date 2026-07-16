cask "vibehub" do
  version "3.0.2"

  on_arm do
    sha256 "dc7358ef55e61a3bd33250295a1f5927191530e23e7feb7cab7657c8d2017ce5"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.2/VibeHub_3.0.2_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "92580ccd04eb8eba43e5118bf29a7c6ac07f45dafb7598f86709fc7efe558881"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.2/VibeHub_3.0.2_x64.dmg",
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
