class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.7.tar.gz"
  sha256 "8410996f9168ca0f63881d4c61ed58043757149c99a4efa4ab76a1825c9a0793"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.7"
    sha256 cellar: :any_skip_relocation, big_sur: "7f8a02c8ceb832a3be7355ae0d652e98fabc1adb3f3cecc2bfb7134529a8797d"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
