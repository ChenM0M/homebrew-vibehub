cask "vibehub" do
  version "3.0.3"

  on_arm do
    sha256 "0dfa74b7d4b3acf30024301ca2a29dc3c49e1eb4be3caaaad752362f331df904"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.3/VibeHub_3.0.3_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "308c1e5cc37c1b3c55b2e6f7a9cb8c8c3fd377d20f82996376aeff752f0f12b9"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.3/VibeHub_3.0.3_x64.dmg",
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
