class SpotifyTuiRs < Formula
  desc "Brutalist terminal UI for Spotify on macOS (Rust)"
  homepage "https://github.com/Wondr-design/Spotify_tui-rust"
  version "0.1.8"

  on_arm do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.8/spotify-tui-rs_darwin_arm64.tar.gz"
    sha256 "33cca93be8a1da810eadbd49d836d561a4cb4ee1f0c13561f44ea43ba48793ab"
  end

  on_intel do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.8/spotify-tui-rs_darwin_amd64.tar.gz"
    sha256 "ce50634f6faf2a0c3ddb917c4b4029851b00789c43d2ce3cb0cf110ef773fefc"
  end

  def install
    bin.install "spotify-tui-rs"
  end

  test do
    system "#{bin}/spotify-tui-rs", "--version"
  end
end
