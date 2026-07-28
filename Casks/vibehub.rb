cask "vibehub" do
  version "3.1.0"

  on_arm do
    sha256 "92710d2479d9500fa69891fe76d022f4efe7f176ebc11c5b3b660fe70fbb1389"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.1.0/VibeHub_3.1.0_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "35a03cddcb37a1e019c75d7eccdce3aebd9cc2a361ac53871341d9d76d3e1ccf"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.1.0/VibeHub_3.1.0_x64.dmg",
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
