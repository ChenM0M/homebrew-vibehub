cask "vibehub" do
  version "3.0.4"

  on_arm do
    sha256 "52a44fd7f3977b5fa8dea6ce3fcd52fd4a3cdb31694a7302f15f3e9ee8aeb009"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.4/VibeHub_3.0.4_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "d7d4461f43a369742165b39fd79f4d3222f43b49781d8ab74a49245d91174fc4"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.0.4/VibeHub_3.0.4_x64.dmg",
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
