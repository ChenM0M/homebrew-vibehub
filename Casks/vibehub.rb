cask "vibehub" do
  version "3.3.1"

  on_arm do
    sha256 "361ad55fbb6e89025de639346ffa49095f678e0dbc10565020882169d4dc6557"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.1/VibeHub_3.3.1_aarch64.dmg",
        verified: "github.com/ChenM0M/VibeHub/"
  end

  on_intel do
    sha256 "721d8f03845e277f5682f7befd77376bcbf9ad1de22530bfd3a277accbcd26a3"
    url "https://github.com/ChenM0M/VibeHub/releases/download/v3.3.1/VibeHub_3.3.1_x64.dmg",
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
