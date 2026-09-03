class Wt0 < Formula
  desc "Copy-on-write Git worktrees with a full runtime lifecycle for coding agents"
  homepage "https://github.com/lonormaly/worktree-zero"
  version "0.1.18"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-apple-darwin.tar.gz"
      sha256 "56ee2aca010748b5b0a70f88699832976724b8bf1754203405d369f822651493"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-apple-darwin.tar.gz"
      sha256 "9b24811ff628f206cf8a1329a42d8ab32612bacc477d778d36e8c54fa544cf7b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1d4f8e714e1e0c8fd12d19ecf5972c2675e58d87a6cc42e70c2313af8c206b0b"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "03ba216d29caf2c5dfa9d80ef4d1480bda30f16c6ec9379a547093a0fc23162a"
    end
  end

  def install
    bin.install "wt0"
  end

  test do
    assert_match "wt0 #{version}", shell_output("#{bin}/wt0 --version")
  end
end
