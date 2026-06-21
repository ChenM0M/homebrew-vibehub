cask "vibehub" do
  version "2.0.0-pre.21"

  on_arm do
    sha256 "876b237ff8e79033e9b8185a2a5829b2e33ae6076c1223b8c78bef26d641b11e"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.21/VibeHub_2.0.0-pre.21_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "bf51a5f17cca88408cbefb4c1c60ae620aff9214ab3007d5fea3e05a15069c8a"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.21/VibeHub_2.0.0-pre.21_x64.dmg",
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
