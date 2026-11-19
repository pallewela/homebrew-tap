class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.1.3"
  url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "88f67fe1819b2c2a090b983af0478d69654139c5471ea92eaef2467d7869dadf"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
