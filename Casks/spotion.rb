cask "spotion" do
  version "0.3.1"
  sha256 "8763b5c1b7f7999bd66fcc5d7db425fbf469c75eb4c66ec80f6cfa3149e02650"

  url "https://github.com/Iris-Ares/Spotion/releases/download/v#{version}/Spotion-#{version}.zip"
  name "Spotion"
  desc "Menu bar app indexing Codex CLI and Claude Code sessions into Spotlight"
  homepage "https://github.com/Iris-Ares/Spotion"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Spotion.app"

  uninstall quit: "com.ares.spotion"

  zap trash: [
    "~/Library/Application Support/Spotion",
    "~/Library/Caches/com.ares.spotion",
    "~/Library/HTTPStorages/com.ares.spotion",
    "~/Library/HTTPStorages/com.ares.spotion.binarycookies",
    "~/Library/Preferences/com.ares.spotion.plist",
  ]
end
