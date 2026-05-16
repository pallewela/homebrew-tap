class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.9"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.9/rusta-v1.0.9-aarch64-apple-darwin.tar.gz"
  sha256 "631071495ea12b9c0a9e5c7b02343f37e4b489e1006d0e19580bff5712113bfc"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "rusta"
  end

  test do
    assert_match "macOS CLI", shell_output("#{bin}/rusta --help")
  end
end
