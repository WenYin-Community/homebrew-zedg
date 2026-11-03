cask "zedg" do
  version "1.26.2"
  sha256 "580a2797cda4256c7483e75e8243e5e6312a0688afb0f2a83cd57275b663048c"

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
