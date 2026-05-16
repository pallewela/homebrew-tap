class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.25"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.25/rusta-v1.0.25-aarch64-apple-darwin.tar.gz"
  sha256 "f2925d45002a46fe08922908f95b90e8f67fd209a3eb383caa8b3bb1f80d500f"
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
