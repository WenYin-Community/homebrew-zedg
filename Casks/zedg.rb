cask "zedg" do
  version "1.27.0"
  sha256 "9676c282ab034456cb22b4bf59c4878fb2fedccb49f5e05d6809039aab5eb889"

  url "https://github.com/wenyinos/ZedG/releases/download/v#{version}/zedg-zh-cn-macos-aarch64-v#{version}.dmg"
  name "ZedG"
  desc "Zed Editor (Localized / 汉化版)"
  homepage "https://github.com/wenyinos/ZedG"

  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "ZedG.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-rd", "com.apple.quarantine", "#{appdir}/ZedG.app"]
  end

  zap trash: [
    "~/Library/Application Support/Zed",
    "~/Library/Caches/dev.zed.ZedG",
    "~/Library/Preferences/dev.zed.ZedG.plist",
  ]
end
