class SpotifyTuiRs < Formula
  desc "Brutalist terminal UI for Spotify on macOS (Rust)"
  homepage "https://github.com/Wondr-design/Spotify_tui-rust"
  version "0.1.7"

  on_arm do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.7/spotify-tui-rs_darwin_arm64.tar.gz"
    sha256 "934305697456fbd09346320a716d185504814e5036f0ea92098831b865af390c"
  end

  on_intel do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.7/spotify-tui-rs_darwin_amd64.tar.gz"
    sha256 "306ebd1c8ce05cf700eab83dbdd48ee6713d1b31609c36951adbd9a826933bb7"
  end

  def install
    bin.install "spotify-tui-rs"
  end

  test do
    system "#{bin}/spotify-tui-rs", "--version"
  end
end
