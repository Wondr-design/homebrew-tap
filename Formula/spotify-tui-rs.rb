# typed: false
# frozen_string_literal: true

class SpotifyTuiRs < Formula
  desc "Brutalist terminal UI for Spotify on macOS (Rust)"
  homepage "https://github.com/Wondr-design/Spotify_tui-rust"
  url "https://github.com/Wondr-design/Spotify_tui-rust/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "dbd7c201fef8fbae63a6de5ffc9e0c30eb5ae2f7eb031c7262deee02cefa092a"
  version "0.1.0"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    system "#{bin}/spotify-tui-rs", "--version"
  end
end
