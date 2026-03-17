class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "0.9.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "c424f561db468f0e1ae244d15cbd5da5425f014a3c892e35f61c95de83b71d9a"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "9ecc8fc796265483008f27e2b023923c54547bcbd2112cfa368f35d643336123"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "8f18ce72cd7f4e99503c001f65e65084a7be46f98034ee8cd135200c7f8c30ab"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "5346cd751db926871d532b2fcbf64381a5da5fdee6dcb680a58f75f1c8e7fa0d"
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
