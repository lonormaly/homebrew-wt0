class Wt0 < Formula
  desc "Copy-on-write Git worktrees with a full runtime lifecycle for coding agents"
  homepage "https://github.com/lonormaly/worktree-zero"
  version "0.1.14"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-apple-darwin.tar.gz"
      sha256 "36dd92185cea6f57d12df593561b6b421437440da3bf1c5fca320a22156ab2c1"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-apple-darwin.tar.gz"
      sha256 "8dc11335cdfdc6ea7360310829c04e3041a35aa920facdd321283ad53e1fed82"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f170c145c892cfbee0af145ddb21370506419e361fc9439dbf072aa373fbe351"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "baa8de212c98702ed6cb6bac068a1fad97a77186da8ef2fbdfcc89ed4cc39625"
    end
  end

  def install
    bin.install "wt0"
  end

  test do
    assert_match "wt0 #{version}", shell_output("#{bin}/wt0 --version")
  end
end
