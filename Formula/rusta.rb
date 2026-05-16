class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.0.2"
  url "https://github.com/pallewela/rusta/releases/download/v1.0.2/rusta-v1.0.2-aarch64-apple-darwin.tar.gz"
  sha256 "df43ba1acc36106dcdddbdc8196f1201f71864c69bdfcbf26996b9b27e702122"
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
