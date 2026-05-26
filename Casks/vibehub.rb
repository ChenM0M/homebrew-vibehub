cask "vibehub" do
  version "2.0.0-pre.13"

  on_arm do
    sha256 "2de8371568705ca0349c370a2d2d4e0bf429fd8eaf995f39f1d80cb06c0d5068"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.13/VibeHub_2.0.0-pre.13_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "6f13b9e93558ea538749fee8d097eb5ad6bb2513a81b75ae91f2abb95e5747c8"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.13/VibeHub_2.0.0-pre.13_x64.dmg",
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
