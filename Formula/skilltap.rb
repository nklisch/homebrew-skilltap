class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "2.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "a48e70e8d6b4645113739790eb96f0fed0c9c180809e7671145db422108089a3"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "a4c29f2059ecf5b41baf788adea0f5ed117261afd32d441595fb7b4d18f442d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "0685ad4a6230dbde28141c097aa7fd25abb6dddc5abb4b82cdcfe780b425f5fe"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "c2cd2d9b1356372475a67f6a3c4a346b8f9ebee0eac8697a956a231de6f5c35b"
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
