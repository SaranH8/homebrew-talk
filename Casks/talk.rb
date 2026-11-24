cask "talk" do
  version "1.3.5"
  sha256 "6a103f7e9a63855a988152f7072c57a741d31b841edd4487ad3bb612cdc8f36e"

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
