cask "vibehub" do
  version "3.3.10"

  on_arm do
    sha256 "8df856489b7582b180619a53b28a2eab6c63faf3b73c10e9a317a6939d8f312e"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.10/VibeHub_3.3.10_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "32e347ee897a35f587be4248e0d17cf317ed2606777fc0a6113408d402aeac9f"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.10/VibeHub_3.3.10_x64.dmg",
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
