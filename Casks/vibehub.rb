cask "vibehub" do
  version "2.0.0-pre.22"

  on_arm do
    sha256 "f8cd55b8fe7cf5d7dda3d0fafe08056ff4dcb231c3b00ccfa7dddfc71f6247c7"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.22/VibeHub_2.0.0-pre.22_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "eb8abd155fc9911a461e82628afa7be40553cabe3d3e170a6df1209c7133e500"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v2.0.0-pre.22/VibeHub_2.0.0-pre.22_x64.dmg",
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
