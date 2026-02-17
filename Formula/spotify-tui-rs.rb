class SpotifyTuiRs < Formula
  desc "Brutalist terminal UI for Spotify on macOS (Rust)"
  homepage "https://github.com/Wondr-design/Spotify_tui-rust"
  version "0.1.9"

  on_arm do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.9/spotify-tui-rs_darwin_arm64.tar.gz"
    sha256 "59aa61eba9a7b93555e821d14be74de078a26d8ed17d27274a390db56dd5576f"
  end

  on_intel do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.9/spotify-tui-rs_darwin_amd64.tar.gz"
    sha256 "07b032fef8f27e28405197ffbab380db8e0d33d9c73d4ae780b11acf0cff88d8"
  end

  def install
    bin.install "spotify-tui-rs"
  end

  test do
    system "#{bin}/spotify-tui-rs", "--version"
  end
end
