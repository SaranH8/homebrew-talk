cask "talk" do
  version "1.3.6"
  sha256 "f454f5f77e9b92d1841f5318b1aed4dc901c4a8bd52d28ef2167f2c04894acd1"

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
