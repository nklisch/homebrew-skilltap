class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "0.9.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "bc091fef0361d3db24c9f34163dfcbbae2ece5a0142f82b11e8df4cf536d1514"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "fbbb62256721b96fa0e727293ef0ab703e416b37103daf6a6e834ed68f86258c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "9b759f6adaba6a470a749c2e5e966774dd854b9136de4351af0ec222f066e937"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "0894557cd828de297f92f70dfaed91c590e4fa12773e332ea50d41d28e135bcd"
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
