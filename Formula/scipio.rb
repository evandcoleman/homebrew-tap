class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/releae/0.1.14.tar.gz"
  sha256 "e8e870187bdedebff9dfb52d1ffd981abce57318b80b0631269a3f779be57a45"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.13"
    sha256 cellar: :any_skip_relocation, big_sur: "48d08f1136da861c0798ee85f9ce8ed5830aa0853652e87429ece98aa8b5adcc"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
