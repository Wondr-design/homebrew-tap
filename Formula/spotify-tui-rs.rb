class SpotifyTuiRs < Formula
  desc "Brutalist terminal UI for Spotify on macOS (Rust)"
  homepage "https://github.com/Wondr-design/Spotify_tui-rust"
  version "0.1.3"

  on_arm do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.3/spotify-tui-rs_darwin_arm64.tar.gz"
    sha256 "c41cf36421d412f07a7cb79a4091fabd0e200bd6541358102376c2429495d755"
  end

  on_intel do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.3/spotify-tui-rs_darwin_amd64.tar.gz"
    sha256 "95a7b522a22412732c94438630302c48d6445cda24355aa72474e3dc51a94ebc"
  end

  def install
    bin.install "spotify-tui-rs"
  end

  test do
    system "#{bin}/spotify-tui-rs", "--version"
  end
end
