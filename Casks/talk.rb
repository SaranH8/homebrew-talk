cask "talk" do
  version "1.3.7"
  sha256 "069988d7fc5f0d07782b2f6d4fbd0a5e4089334cdc92fa0c2844437467239cf8"

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
