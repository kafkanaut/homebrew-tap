cask "kafkanaut" do
  version "0.49.0"
  sha256 "38df4a77cf6691b5115a3d4bff079225a662c603f8ceb96edfed82c20568d31c"

  url "https://github.com/kafkanaut/kafkanaut-app/releases/download/v#{version}/Kafkanaut_#{version}_universal.dmg"
  name "Kafkanaut"
  desc "Free desktop Kafka client — browse, filter and produce Kafka messages"
  homepage "https://kafkanaut.github.io/kafkanaut-app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Kafkanaut.app"

  zap trash: "~/Library/Application Support/dev.kafkanaut.app"

  caveats <<~EOS
    Kafkanaut is ad-hoc signed and not notarized by Apple, so Gatekeeper
    will block the first launch. To open it:

      Right-click Kafkanaut.app in /Applications and choose "Open",
      then confirm in the dialog.

    Alternatively, install without the quarantine flag:

      brew install --cask --no-quarantine kafkanaut/tap/kafkanaut
  EOS
end
