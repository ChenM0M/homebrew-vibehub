cask "vibehub" do
  version "3.3.2"

  on_arm do
    sha256 "1ab6962ce6cc2c630fad455bca870acbb8c85a960e008637b46e89e28d0c7de4"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.2/VibeHub_3.3.2_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "f86d80a9ff7f62c6f98aad0a9c185f7a21ff49e13cbeada24a6916c559feb33a"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.2/VibeHub_3.3.2_x64.dmg",
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
