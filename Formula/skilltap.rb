class Skilltap < Formula
  desc "Personal control plane for Codex and Claude Code environments"
  homepage "https://github.com/nklisch/skilltap"
  version "3.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-arm64"
      sha256 "4687ee63ebc33e729afa74dfa885005026d72f1769918dcd54fe6e4729f81fa9"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-darwin-x64"
      sha256 "4da76eca7b9429d8e0abbbf5678c7784ded6f5fbacbc407d55f36c66c17f57ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-arm64"
      sha256 "26ab57262b9b495baee5a3ca5717841e1e56e92aac600ab67eb1841b9dbe2627"
    end
    on_intel do
      url "https://github.com/nklisch/skilltap/releases/download/v#{version}/skilltap-linux-x64"
      sha256 "422254820cb640830f523b0d85e3294e049fe06b39b8dd2fe5a89d52772b519d"
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
