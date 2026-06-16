cask "vibehub" do
  version "2.0.0-pre.17"

  on_arm do
    sha256 "14729d85abb3499adf6bee04fe5314db8192e187047098079aa66280fe7f6e33"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.17/VibeHub_2.0.0-pre.17_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "7a33deb50193db0e397b113c51b86b29089177e7830e26bd4b61e0ec523bf2ed"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.17/VibeHub_2.0.0-pre.17_x64.dmg",
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
