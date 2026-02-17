class SpotifyTuiRs < Formula
  desc "Brutalist terminal UI for Spotify on macOS (Rust)"
  homepage "https://github.com/Wondr-design/Spotify_tui-rust"
  version "0.1.6"

  on_arm do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.6/spotify-tui-rs_darwin_arm64.tar.gz"
    sha256 "1bada94fc8c6c7b83019c27e47d49368443f48e4a64d38e974a4561eab9e80b1"
  end

  on_intel do
    url "https://github.com/Wondr-design/Spotify_tui-rust/releases/download/v0.1.6/spotify-tui-rs_darwin_amd64.tar.gz"
    sha256 "07dd891f675b9aca5191838d49b17507e19e8a81f3e0325e534c0ad2e5862875"
  end

  def install
    bin.install "spotify-tui-rs"
  end

  test do
    system "#{bin}/spotify-tui-rs", "--version"
  end
end
