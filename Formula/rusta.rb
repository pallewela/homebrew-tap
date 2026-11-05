class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.20"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.20/rusta-v1.3.20-aarch64-apple-darwin.tar.gz"
  sha256 "de3a79a400d1a68a1ff8901e24f9e92b3052fb909e5e1ba979ed08194159f117"
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
