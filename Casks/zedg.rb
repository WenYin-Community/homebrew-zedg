cask "zedg" do
  version "1.29.3"
  sha256 "dab4fdb50fa447d3c7e5c44caa1304bcc462132fd72e9420078f636195613964"

  url "https://github.com/WenYin-Community/ZedG/releases/download/v#{version}/zedg-zh-cn-macos-aarch64-v#{version}.dmg"
  name "ZedG"
  desc "Zed Editor (Localized / 汉化版)"
  homepage "https://github.com/WenYin-Community/ZedG"

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
