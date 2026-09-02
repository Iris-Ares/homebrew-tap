cask "spotion" do
  version "0.3.0"
  sha256 "8cbe839ae62dee2b69a07fe252bda62b03f2def07c2f05378a0b9433b6d6d5b0"

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
