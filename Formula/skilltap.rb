class Skilltap < Formula
  desc "Personal control plane for Codex and Claude Code environments"
  homepage "https://github.com/nklisch/skilltap"
  version "3.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "faad2c027deb66be90073d848dd60523cab1b6ff441d80ec253309ba32d3e9e7"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "34b93f4ca6720889152d29838bd75a8e033762635f558fa0633c617f4cb9606d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "114697fd807db8b58b596594fa3050741d2749fe5d69b782a99135a230b7b994"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "ca44d29b9c7c693bfe512a31b315facfd8a12c049c020b461b4884f8d38d77f9"
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
