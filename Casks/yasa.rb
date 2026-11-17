cask "yasa" do
  version "1.8.2"
  sha256 "c4edc242d402733f8c6c3052d085dcbc85ec7c8cc74e6381c642d1df3259fae4"

  url "https://github.com/pulsar-a/yasa-releases/releases/download/v#{version}/Yasa.dmg"
  name "Yasa"
  desc "Kanban todo app with a menu bar task"
  homepage "https://yasatodo.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :monterey

  app "Yasa.app"
  binary "#{appdir}/Yasa.app/Contents/MacOS/Yasa", target: "yasa"

  uninstall launchctl: "app.yasa.login",
            quit:      "com.yasatodo.app"

  zap trash: [
    "~/Library/Application Support/Yasa",
    "~/Library/Preferences/com.yasatodo.app.plist",
    "~/Library/Saved Application State/com.yasatodo.app.savedState",
  ]
end
