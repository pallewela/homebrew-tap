class Rusta < Formula
  desc "macOS CLI for managing Ubuntu VMs on Apple Silicon via Tart"
  homepage "https://github.com/pallewela/rusta"
  version "1.3.22"
  url "https://github.com/pallewela/rusta/releases/download/v1.3.22/rusta-v1.3.22-aarch64-apple-darwin.tar.gz"
  sha256 "22b132b4476f477b9fb3b7359795062280318673cb50cc1fe3ab96c17d3086c4"
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
