cask "spotion" do
  version "0.2.0"
  sha256 "2a6a65fbb64b9a2b64cb6f55d1d02c6a844d9bb3a957b7f86deacbb1749db86b"

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
