cask "vibehub" do
  version "3.3.7"

  on_arm do
    sha256 "b1b35a1ebcdd8d03dd2f8e84bc2cebfdd1ba659b83143fddea3d7c239055c942"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.7/VibeHub_3.3.7_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "3b530eb436b909644fd6d1c59cae035dfadc4b09cfa6497303bb851816e84129"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.7/VibeHub_3.3.7_x64.dmg",
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
