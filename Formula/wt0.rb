class Wt0 < Formula
  desc "Copy-on-write Git worktrees with a full runtime lifecycle for coding agents"
  homepage "https://github.com/lonormaly/worktree-zero"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v0.1.20/wt0-aarch64-apple-darwin.tar.gz"
      sha256 "a1bb7275d0229d4929eafe789efea4855cd94bebb4b2e598087f9fc5b2634f93"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v0.1.20/wt0-x86_64-apple-darwin.tar.gz"
      sha256 "4445d65038789ee48752c93d786bfc9c279dac9b269fc3e6df71a1db26afe7e4"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v0.1.20/wt0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9edc6e50a0909de667937c920a6dbfcdcb529240dcd8807e114e197b6f554811"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v0.1.20/wt0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1c48093ec5ab796cf4149605b76b9ad7133c3833a88f99adbe20bc9eee447ec0"
    end
  end

  def install
    bin.install "wt0"
  end

  test do
    assert_match "wt0 #{version}", shell_output("#{bin}/wt0 --version")
  end
end
