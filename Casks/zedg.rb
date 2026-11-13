cask "zedg" do
  version "1.28.1"
  sha256 "046b96c008f571700a05bcb6ca8320bf17ba6d5b784a2bfbcf10b353c22fe9db"

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
