class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.18"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.18/rusta-v1.3.18-aarch64-apple-darwin.tar.gz"
  sha256 "1eb4959c3ebae6784a2dbe850dcb6fcb6a59944761d3689313d06e89d8ae028e"
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
