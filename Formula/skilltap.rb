class Skilltap < Formula
  desc "CLI for installing agent skills from any git host"
  homepage "https://github.com/nklisch/skilltap"
  version "0.7.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "23fbb667c011d740c6aa1b41c110eb38ffb971a430a8dd484843f564538363d2"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "543a5b6b7ab63a3c31e94b9ffa18297d1a8225d337ab0e1fcf3d553fbdffa692"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "3adebc8d7d8c3a6e6573c509a5a92a9a3c90ed5d28a938f502d59e2c49ef736a"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "6f0a7a17115e20dc4bafb9adb3f9f178a9ad403541f3578b14f51e5a1c2cb7ec"
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
