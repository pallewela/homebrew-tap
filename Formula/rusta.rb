class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.12"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.12/rusta-v1.3.12-aarch64-apple-darwin.tar.gz"
  sha256 "b00615b67eaf3a1063ddf6bf19b17a109323873c53d1fdfbb35f31adad02992c"
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
