class Skilltap < Formula
  desc "Personal control plane for Codex and Claude Code environments"
  homepage "https://github.com/nklisch/skilltap"
  version "3.0.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "58f020e3517f06309a076508d954551b68ac0bfc947d27f9be9208e0632d8d20"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "1de20260be3336b11b4c557a0ec2f7a5ef7f6786cbd7c5d2a848cb64e2eabd45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "ddc511750c9d3eda61c4188195fee6563480a8ccd866141aa7b9d46915c8a84c"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "247386c27eed809ab7a5baa8d8f47ef49b573a62b4bbcf9a496dc83a18a56b13"
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
