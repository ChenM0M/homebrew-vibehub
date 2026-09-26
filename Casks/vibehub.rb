cask "vibehub" do
  version "3.4.0"

  on_arm do
    sha256 "bf479af92231173e38c35de808ac90138c107a72564f0de67357c0fde99cd9c1"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.4.0/VibeHub_3.4.0_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "103ed181e05ec5621e1a42d160639dcb6e6267bb7fd818e4c1965fad4c4bd83d"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.4.0/VibeHub_3.4.0_x64.dmg",
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
