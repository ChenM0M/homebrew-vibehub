cask "vibehub" do
  version "2.0.0-pre.14"

  on_arm do
    sha256 "8493d52ed37c9a16ec8f921fd97c10249d69adde54cca6d002ad4dbe6e5149fa"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.14/VibeHub_2.0.0-pre.14_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "bb792dbcf23681fe16c41872ec04a277c4f86bde454712b57b8fbeb99da8170d"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.14/VibeHub_2.0.0-pre.14_x64.dmg",
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
