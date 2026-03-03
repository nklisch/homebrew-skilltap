class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "8584b9ff8482911f3a28d257b9ef02c9973482787a9ebedd534bba37fe6b8ac4"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "2a5ea8262cce5d2c5541fc084c9d5659a1db2bda76a6d99d4c87a8e06830dd9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "b8c890f226ae7994d8ad0c02eebf7be3756fb0257126fc8f0f5173da3075fe77"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "00f497b21f4bc921a212e0cdc68ef96de25caffcfda0acdc77de7869f5d2d582"
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
