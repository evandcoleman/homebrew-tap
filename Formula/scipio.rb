class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.10.tar.gz"
  sha256 "d2d5291ba1b014bb2216486ecd0d75fca1ea551fd961ec5aa13c608c38c8fc11"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.10"
    sha256 cellar: :any_skip_relocation, big_sur: "9452e86ede393e15342478276a75af03d4dc522222d9b6c4a64dcb4db8b87702"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
