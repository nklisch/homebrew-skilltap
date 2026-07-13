class Skilltap < Formula
  desc "Personal control plane for Codex and Claude Code environments"
  homepage "https://github.com/nklisch/skilltap"
  version "3.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "cc1b26ee99f0f653d54ac40f69d27fcc9c862335992ec22bb70c03c117ba3afb"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "ec0e6f17f975c431edee37e1ec9bcab98a600572a5102ba5c5fcdbfb3089b6d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "b89b55aa378fe18894f86bffafbecaab839107cf7d44f5bfd25433e739a00569"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "68c2a22e380ebdbe3ef97872ad63ea01fb0cd297aec77c868253c048c898de7b"
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
