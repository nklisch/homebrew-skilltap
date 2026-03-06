class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "0.6.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "b5743ae540dd579aadf25e9aaf3fc90c7777985de1701af62cd1e7ed51e127ee"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "9e1fd535012b7ac2165ab34a07c51c6a1fc6e7081073ffd96b6d7d1450994a38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "d896c9717e8f16f53ccf412a7e3d3406f8c0b85d6a438280aa8c1daaf80e2a14"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "fab160f326dbdbf2c1adef354e07bec21d7753d77addcc267ad08ab845981817"
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
