cask "fanyi" do
  version "1.6"
  sha256 "6f753bb5ddb99c860c47258c5e8d145a0f2d4e3d701b6bf7250b1cf6e1c131e5"

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
