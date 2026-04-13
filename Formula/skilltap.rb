class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "0.10.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "7914ebd15fd700b9e0f8dc861eb8f83dcc62a21d7ad8bd77843d17ec9f0eca83"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "3767f76a0dc8a5e0680a8c69e8dcbfcd886ec4fc7ec939efeb29e6c905b3abac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "87ada334e9862b4d23231ea668ed80da179ca6bee85697bf4b95073219c88161"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "b9387195a3bf1f4304597c425ef17ddb76f613768c3061f0b0282b22a03ea94a"
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
