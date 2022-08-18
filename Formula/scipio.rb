class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.2.8.tar.gz"
  sha256 "0342d963ef61df0ac5bea47371b61ddadfe6f3f811752e6a8f92648307272e69"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.2.8"
    sha256 cellar: :any_skip_relocation, monterey: "edfb82c3d70894c149229931263aef4fce332b106d425b1ede45147388bbea7d"
    sha256 cellar: :any_skip_relocation, big_sur:  "365c87e6c0e7ed6bb5879710e3c0c577d43b91f118460d3a6371506c44bcc50f"
    sha256 cellar: :any_skip_relocation, catalina: "5eb065a2efdc4d42a622fe3f550aa5ebe6f3d5f5a27b51dac167dfece1db14c9"
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
