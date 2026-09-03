class Wt0 < Formula
  desc "Copy-on-write Git worktrees with a full runtime lifecycle for coding agents"
  homepage "https://github.com/lonormaly/worktree-zero"
  version "0.1.17"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-apple-darwin.tar.gz"
      sha256 "f4f7f28d0a28b05adac0b866117684a68f8b887f98e7445386f07867d6ebcf03"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-apple-darwin.tar.gz"
      sha256 "e55b940c83ce2c505aaf1a35e2a70bccbe52e2a0dd87b056ec3f288689f74ede"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "a74dae358c356cda512f21f38b00c6f043c7e05d467d5918e807c3b8cb8c5ff2"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e530581ead5d2b128b24cbfcfd4a61825878b728a0baf4ef244f8d04cd22b34c"
    end
  end

  def install
    bin.install "wt0"
  end

  test do
    assert_match "wt0 #{version}", shell_output("#{bin}/wt0 --version")
  end
end
