cask "vibehub" do
  version "2.0.0-pre.20"

  on_arm do
    sha256 "d7f371bfbf561af756a0b7747d45fac66d3533a77317a4bec8758495af5abf04"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.20/VibeHub_2.0.0-pre.20_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "6e5d46a53ed2ba174e3d2142cb16af3d1b7a83183be9baef1563f3e6e5d16a2d"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.20/VibeHub_2.0.0-pre.20_x64.dmg",
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
