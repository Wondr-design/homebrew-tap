class SpotifyTuiRs < Formula
  desc "Brutalist terminal UI for Spotify on macOS (Rust)"
  homepage "https://github.com/Wondr-design/Spotify_tui-rust"
  version "0.1.4"

  on_arm do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.4/spotify-tui-rs_darwin_arm64.tar.gz"
    sha256 "de996e1131ef2c29d2047757f56239dad8063f3e9da2cebc222daefcefbe2f34"
  end

  on_intel do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.4/spotify-tui-rs_darwin_amd64.tar.gz"
    sha256 "125980883ece36e9415e0b34b34a4e1764abec479b964be9f4df2c70aad1e0cb"
  end

  def install
    bin.install "spotify-tui-rs"
  end

  test do
    system "#{bin}/spotify-tui-rs", "--version"
  end
end
