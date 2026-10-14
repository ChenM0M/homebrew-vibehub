cask "vibehub" do
  version "3.4.2"

  on_arm do
    sha256 "6bfcc8134a5cc5c124c39057c1affcd034d5fe06d817ee3a4997e466ea786438"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.4.2/VibeHub_3.4.2_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "8e0eafa9acd70df893a87ce062c20aa6f7bcc53f282d44475027f86239b2a62c"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.4.2/VibeHub_3.4.2_x64.dmg",
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
