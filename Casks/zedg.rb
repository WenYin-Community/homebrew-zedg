cask "zedg" do
  version "1.26.2"
  sha256 "d85c28c4e67d75daff2094e2096a67cc115e3ef6312cdf1f9dfb9af9094201d9"

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
