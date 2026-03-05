class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "0.6.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "80c2e8216905bbd6763a4912a0a4c9565d44eedc52321370669b49c4342e7ff1"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "49531cac05ebb77aa7a1ceef9d063bf5fe1d99e4e389dd08a644178e1cc4430e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "419cc7e8ffb109836b52a4c6e4254e7ec563d7c66aaf4381f1ff8bc5b334181d"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "ab08cf2e320b03019fdf362d57adc9a0a2db42e3cd91a63c96de281c2faa43e6"
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
