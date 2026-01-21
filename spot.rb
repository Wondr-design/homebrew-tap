class Spot < Formula
  desc "Brutalist terminal UI for Spotify on macOS"
  homepage "https://github.com/Wondr-design/spotify"
  version "0.1.0"
  license "MIT"
  depends_on :macos

  if Hardware::CPU.intel?
    url "https://github.com/Wondr-design/spotify/releases/download/v0.1.0/spot_darwin_amd64.tar.gz"
    sha256 "0b6663d0604c873ad2be156e214a9320b563aa52613082d8bc7674a35a156d7d"

    def install
      bin.install "spot"
    end
  end
  if Hardware::CPU.arm?
    url "https://github.com/Wondr-design/spotify/releases/download/v0.1.0/spot_darwin_arm64.tar.gz"
    sha256 "ff0bd0eecdb17c6caf6a395e11a49c9aff52cc407eb57a48f96ac57a4eb189ac"

    def install
      bin.install "spot"
    end
  end

  test do
    system "#{bin}/spot", "--version"
  end
end
