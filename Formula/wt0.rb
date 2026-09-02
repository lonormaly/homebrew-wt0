class Wt0 < Formula
  desc "Copy-on-write Git worktrees with a full runtime lifecycle for coding agents"
  homepage "https://github.com/lonormaly/worktree-zero"
  version "0.1.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-apple-darwin.tar.gz"
      sha256 "ff9101237f7500f131c65c368ce6710460784d31c1a04a7bcb89bccc53b71adb"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-apple-darwin.tar.gz"
      sha256 "fec06a23a11800daaae453930d7c392201e7ddd3d3902773ee8d7af2725ec503"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "51623af08ffec2df4a9d18fc307bce2d6608eed58cb69f1e0f97def992caea24"
    else
      url "https://github.com/lonormaly/worktree-zero/releases/download/v#{version}/wt0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8142b6d7e3468c7b98fc201fd692a0ad4878cb47d9f705708847995730d3470c"
    end
  end

  def install
    bin.install "wt0"
  end

  test do
    assert_match "wt0 #{version}", shell_output("#{bin}/wt0 --version")
  end
end
