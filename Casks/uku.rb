cask "uku" do
  version "1.20.4"
  sha256 "bfc33df1e3aa1f9398c32304dfd9f12c8ccd03e52d4e8f98d1a06c8d0002904b"

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
