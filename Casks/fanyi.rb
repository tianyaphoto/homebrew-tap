cask "fanyi" do
  version "1.3"
  sha256 "e4c4c445eda0882b22f3d1057e245ca25281a35e5922a702feedf677b562904b"

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
