class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.5"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.5/rusta-v1.3.5-aarch64-apple-darwin.tar.gz"
  sha256 "82f9ab1037bd30c5ad200e9fa14ac95e94dc21ad1a5d509d2a4ca5562c24bb88"
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
