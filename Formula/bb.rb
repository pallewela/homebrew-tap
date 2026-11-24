class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "a527070217a65024090379a81e3e8b4fc37246ea36c47883ecfc952fa84bb3fb"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "434d88a7273abcc434088bb6da7097ded97c21d751535a457184ebb27cdfa1f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "edaa4eb6e833906ccc7c982e93d2dc1887a05b4bbd4479541f3488bec8b0507a"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cbc9752c12298102f7190fbc04c91a1d5726e48ab4935f3031c5f64a0e65b426"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
