class Skilltap < Formula
  desc "Personal control plane for Codex and Claude Code environments"
  homepage "https://github.com/nklisch/skilltap"
  version "4.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "df8afcca819009189a09a1d1d35646a13db342d5c968c9f52e53d5d3ccd71af5"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "1923afbbb043f4240dd105dab55c367c80a7fa96c84381633cb40880e1f74fb2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "a4ac5c69affbec3c9846d7aa8aa1b9577af8b60cca479e5286e27ca9059154f2"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "d03fb8af47f5a32bf9d35eaca686c7079c936d0b9575f07bd71e8034d4d97696"
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
