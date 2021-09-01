class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.11.tar.gz"
  sha256 "e33eebec6cd5b7fee1ff11812cb1a4de222171b9b4682c09a14caec60ec6b49f"
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
