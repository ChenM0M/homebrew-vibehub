cask "vibehub" do
  version "3.3.8"

  on_arm do
    sha256 "d41012b049fe7bf84670fc741db722d81cae5ef2b600de2a95c920666e41c110"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.8/VibeHub_3.3.8_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "6a5a5b32d40c82e1ecba229464926af5eb09ad016dd8e373f140c6e0dc84d635"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.8/VibeHub_3.3.8_x64.dmg",
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
