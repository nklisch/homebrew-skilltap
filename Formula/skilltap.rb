class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "2.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "12bbec05ddebd773a6666ff288fc426f0622c4a808a67aad1c2e31df325d0562"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "af6693623bc285cc10391fea9f90f6303764acdab020328fc1e834d7e6ca52c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "7caa179c91d414ad6292dcc8d5a695923502d9b2370e90444ff52be60e2566b1"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "32772a22116f70c610134b21ff52bcdeb17713989643f4de206551e8689cd902"
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
