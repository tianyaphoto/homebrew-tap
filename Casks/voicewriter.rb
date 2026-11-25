cask "voicewriter" do
  version :latest
  sha256 :no_check

  url "https://voice-writer.com/VoiceWriter.dmg"
  name "VoiceWriter"
  desc "Hold a hotkey to dictate: speech to polished text at the cursor"
  homepage "https://voice-writer.com/"

  # 内置 Sparkle 自动更新；下载地址每次发版原地替换，所以不固定版本和校验值
  auto_updates true
  depends_on macos: :ventura

  app "VoiceWriter.app"

  zap trash: [
    "~/Library/Application Support/VoiceWriter",
    "~/Library/Caches/com.hexudong.VoiceWriter",
    "~/Library/HTTPStorages/com.hexudong.VoiceWriter",
    "~/Library/Preferences/com.hexudong.VoiceWriter.plist",
  ]
end
