class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.19.tar.gz"
  sha256 "359d6a4a1f84251db254974c8865f4de1dbf718c45e8eb80fcdfae2c1f5aa141"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.19"
    sha256 cellar: :any_skip_relocation, big_sur:  "a94ea879aec71a5c4f92e396ef218032f11907693edd9a73b979797950e87052"
    sha256 cellar: :any_skip_relocation, catalina: "3ed40559089206245ca00c4f71730b88393958d5a4582bbefbdb979acb82fb81"
  end

  depends_on xcode: ["11.0", :build]
  depends_on :macos

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
