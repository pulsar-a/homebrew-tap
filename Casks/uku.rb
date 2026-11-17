cask "uku" do
  version "1.20.2"
  sha256 "c914042d44ec409847de3dca9315853d0bea04387831a14cadb947ac91d67d59"

  url "https://github.com/pulsar-a/uku-releases/releases/download/v#{version}/Uku.dmg"
  name "Uku"
  desc "Quiet Markdown reader"
  homepage "https://ukumd.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Uku.app"
  binary "#{appdir}/Uku.app/Contents/MacOS/Uku", target: "uku"

  zap trash: "~/Library/Application Support/Uku"
end
