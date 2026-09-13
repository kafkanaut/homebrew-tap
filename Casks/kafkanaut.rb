cask "kafkanaut" do
  version "0.55.0"
  sha256 "1cb8b3be36ba32c423f9944e2c8a4b40989046bd05094b11f4b9376fc6c14a30"

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
