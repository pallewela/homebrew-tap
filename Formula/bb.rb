class Bb < Formula
  desc "Work with Bitbucket Cloud from the command line, gh-style"
  homepage "https://github.com/pallewela/bb"
  version "0.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "75fd1e059bcd968d38d8486ecd4fa57a1a33906a1b8f3850398fd732308736f0"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "a0b2895c1773443fda204cf3f534cd3cdb7fb07c8c80f00d030c25d426b10a60"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fca6b74ae694812c7085477703f53c78728ac25dfb47ec4c0121b162302f9d6d"
    end
    on_intel do
      url "https://github.com/pallewela/bb/releases/download/v#{version}/bb-v#{version}-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5ff01bd7c9ebce4426b2b23f0e2fc586e09c09cd420da1acb51995c5f3314f04"
    end
  end

  def install
    bin.install "bb"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bb --version")
  end
end
