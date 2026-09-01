class Wt0 < Formula
  desc "Copy-on-write Git worktrees with a full runtime lifecycle for coding agents"
  homepage "https://github.com/lonormaly/worktree-zero"
  version "0.1.13"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-apple-darwin.tar.gz"
      sha256 "79406ce6d59ba5cdaf925d141d992dd739accf49889a1b4855263f9450924cfe"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-apple-darwin.tar.gz"
      sha256 "352efbce7d92a1cc447a6a0fa659c36073fb66afebf3735bb941c6db76fbfe99"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "659a7f06d4babca50dd63c881571e4617198648dbd2e1af3c8f28e7f189a3313"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "72748a2e0ce5b59b80c52d08dfabf37f1ac880d4f67c71c1f98449afa7053d6b"
    end
  end

  def install
    bin.install "wt0"
  end

  test do
    assert_match "wt0 #{version}", shell_output("#{bin}/wt0 --version")
  end
end
