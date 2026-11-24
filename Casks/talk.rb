cask "talk" do
  version "1.3.0"
  sha256 "9b1c8c25248cdb61fc3885a640ca984f8c668ef2da2ccee25aa9c712e6fa8f5d"

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
