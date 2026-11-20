class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.2.6"
  url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
  sha256 "3f65f0b2f42a1389c8fd707b695b2bb452a9586815ecedc56280685af88f8d87"
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
