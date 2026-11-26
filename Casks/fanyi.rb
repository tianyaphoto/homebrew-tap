cask "fanyi" do
  version "1.8"
  sha256 "0dc29cd0f3a541f4e10e9d563fcbe7b8bf1ce88df271724e70ee996142eea6c7"

  url "https://github.com/tianyaphoto/fanyi/releases/download/v#{version}/Fanyi.zip"
  name "Fanyi"
  name "翻译神器"
  desc "Menu bar translator for selected text, screenshots and one-key polish"
  homepage "https://tianyaphoto.github.io/fanyi/"

  livecheck do
    url :url
    strategy :github_latest
  end

  # 内置 Sparkle 自动更新
  auto_updates true
  depends_on macos: :sonoma

  app "Fanyi.app"

  zap trash: [
    "~/Library/Application Support/Fanyi",
    "~/Library/Caches/com.local.fanyi",
    "~/Library/HTTPStorages/com.local.fanyi",
    "~/Library/Preferences/com.local.fanyi.plist",
  ]
end
