class Scipio < Formula
  desc "Scipio: A cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.2.tar.gz"
  sha256 "9fb11105e29db427a8d0414c07aa5a8a4571a4b72108d8d9dbd74f18618b7afa"
  head "https://github.com/evandcoleman/Scipio.git", :branch => "main"
  license "Apache-2.0"

  def install
    system "swift build --disable-sandbox -c release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio --version"
  end
end
