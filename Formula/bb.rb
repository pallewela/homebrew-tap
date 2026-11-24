class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "dc9c9ab3be97ac476b6750fc6306dfccb55786cfbbd1f48616da89c05a90c5ce"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "375a86de5d0de98497783cea0975987bdc7d49ce6a9f55b5a0ae1bdce23036d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eae2bec977cdf95214eb046bac8f369c61f94d5e9922e1472b56356453b529e0"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1a13397b91f8b90db9ddffc383770fdb6c355a657a9c1f00cc1700d3952e883"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
