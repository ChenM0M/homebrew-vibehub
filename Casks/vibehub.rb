cask "vibehub" do
  version "3.3.9"

  on_arm do
    sha256 "f69fd5b6db30c112f724b4fce982be881be16fcc9dd8b26c26b7c2c0cba4bf81"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.9/VibeHub_3.3.9_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "9718f5a8aade3310f50422be2316657efcebc56cb5f44a42690de75fdf97885f"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.9/VibeHub_3.3.9_x64.dmg",
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
