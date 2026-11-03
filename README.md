# ZedG Homebrew Tap

[ZedG](https://github.com/wenyinos/ZedG)（Zed 编辑器简体中文版）的 Homebrew tap。

## 安装（Apple Silicon）

```bash
brew tap wenyinos/zedg
brew install --cask zedg
```

> 目前仅提供 Apple Silicon（arm64）构建。Intel 机型可使用 ZedG 的源码补丁自行编译。

## 更新

```bash
brew update
brew upgrade --cask zedg
```

Cask 由 ZedG 仓库的 Release 流程自动更新（ZedG 仓库 `.github/workflows/06-update-homebrew.yml`），发布新版本后通常几分钟内生效。
