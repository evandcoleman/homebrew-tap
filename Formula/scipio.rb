class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.6.tar.gz"
  sha256 "34881cb678e309059986e2d94db94928f8ac61ca7002c85956d58f5decb23810"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.6"
    sha256 cellar: :any_skip_relocation, big_sur: "34b1bd1a87c7bce25d743a2b7e48ff2458f6cef7a6b139cb3c7fae2beb66286e"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
