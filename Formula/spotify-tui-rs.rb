class SpotifyTuiRs < Formula
  desc "Brutalist terminal UI for Spotify on macOS (Rust)"
  homepage "https://github.com/Wondr-design/Spotify_tui-rust"
  version "0.1.5"

  on_arm do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.5/spotify-tui-rs_darwin_arm64.tar.gz"
    sha256 "00fe16af7e797c844f83fde1ce86db9c9fda18718745369e03e95632da90e893"
  end

  on_intel do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.5/spotify-tui-rs_darwin_amd64.tar.gz"
    sha256 "f053000bed3dfcf72afeb79a02f031c5aa064fcdf28fcf261b587aa3c1d6643d"
  end

  def install
    bin.install "spotify-tui-rs"
  end

  test do
    system "#{bin}/spotify-tui-rs", "--version"
  end
end
