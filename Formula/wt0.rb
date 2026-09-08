class Wt0 < Formula
  desc "Copy-on-write Git worktrees with a full runtime lifecycle for coding agents"
  homepage "https://github.com/lonormaly/worktree-zero"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v0.1.19/wt0-aarch64-apple-darwin.tar.gz"
      sha256 "709ac026ec9c5c898e71ddcaae9892c76aa587572082e6fe4fcbf0e52149631b"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v0.1.19/wt0-x86_64-apple-darwin.tar.gz"
      sha256 "74b37ebcd928e0ae5c8ed84a6d842189f955a53f545faa53ee4ea8083b9bc1a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v0.1.19/wt0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "97e35aeb5d41f6b3266741ceb1b2ea15a4f03c9ea75ecaa8ec719ba0f028c1b1"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v0.1.19/wt0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b39b11a8f56d43f9a8f055181a905d3de30299558a5e96c7267409d8592f6d2d"
    end
  end

  def install
    bin.install "wt0"
  end

  test do
    assert_match "wt0 #{version}", shell_output("#{bin}/wt0 --version")
  end
end
