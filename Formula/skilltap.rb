class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "0.7.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "1942f2f6d6c43debec72d4ce931bafcf347485f9f80df41c7573ffb10dbb5efc"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "d9cd142eaec54481b5acce4e563ce0ff00a3b2f66d8e59dea828700a14b8a12f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "c191915553be8ce9d5fe3b0c28637d2d34cf4c5be806676269be0b0f4cd76cd9"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "9cf59bf94ad16d6a87c1e2e4131d399e43b7e60cced64c22bbaaadcb1a9d2348"
    end
  end

  def install
    binary = Dir["skilltap-*"].first
    bin.install binary => "skilltap"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/skilltap --version")
  end
end
