cask "vibehub" do
  version "3.0.1"

  on_arm do
    sha256 "ad79c2ce1c07f17ea8d91237d04f1eb9965c97f2c4469edd48a562f1d5676d48"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.1/VibeHub_3.0.1_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "dd10a33f080296bf546fb853beb3fb582a12aad99156d6701872a878971810ee"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.1/VibeHub_3.0.1_x64.dmg",
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
