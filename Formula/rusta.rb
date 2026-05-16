class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.10"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.10/rusta-v1.0.10-aarch64-apple-darwin.tar.gz"
  sha256 "422302e4e40747f7ef6b8576cc0f5b018dd077851f64b4530146c08a09a74a4d"
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
