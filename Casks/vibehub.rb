cask "vibehub" do
  version "2.0.0-pre.10"

  on_arm do
    sha256 "c6822a7374532f605e2b74816e3155dd9fa44c586ef6b105a76b7f8fe73617c1"
    url "https://github.com/ChenM0M/VibeHub/releases/download/2.0.0-pre.10/VibeHub_2.0.0-pre.10_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "4b4640c75ee17646324ae694ee114d07268fdba6dd34ff764b67f67ed4d585b2"
    url "https://github.com/ChenM0M/VibeHub/releases/download/2.0.0-pre.10/VibeHub_2.0.0-pre.10_x64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  name "VibeHub"
  desc "Cross-platform launcher for development tools with an AI gateway"
  homepage "https://github.com/ChenM0M/VibeHub"
  depends_on macos: ">= :high_sierra"

  app "VibeHub.app"
  binary "#{appdir}/VibeHub.app/Contents/MacOS/vibehub", target: "vibehub"

  zap trash: [
    "~/Library/Application Support/VibeHub",
    "~/Library/Preferences/com.vibehub.launcher.plist",
    "~/Library/Saved Application State/com.vibehub.launcher.savedState",
  ]
end
