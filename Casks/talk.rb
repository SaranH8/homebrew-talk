cask "talk" do
  version "1.3.4"
  sha256 "309847cf1fa1f4a5347281df68ac9ad15496c87a3a1cbb7ca2ca01a099455c9a"

  url "https://github.com/SaranH8/homebrew-talk/releases/download/v#{version}/TALK-v#{version}.dmg"
  name "TALK"
  desc "Hold-to-talk dictation — Gemini cloud transcription with on-device Whisper fallback"
  homepage "https://cathunters.com/hub"

  app "TALK.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/TALK.app"]
  end
end
