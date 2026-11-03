cask "uku" do
  version "1.15.1"
  sha256 "8cf5462bd15dded2ae1de03ed817b01a6c0274406da3141df1b31f473209c69e"

  url "https://github.com/pulsar-a/uku-releases/releases/download/v#{version}/Uku.dmg",
      verified: "github.com/pulsar-a/uku-releases/"
  name "Uku"
  desc "Quiet Markdown reader"
  homepage "https://ukumd.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Uku.app"
  binary "#{appdir}/Uku.app/Contents/MacOS/Uku", target: "uku"

  zap trash: "~/Library/Application Support/Uku"
end
