class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.22.tar.gz"
  sha256 "80ba2c527d696b7a139ebd86f968070962bd15422370dba6169ab2d8595e036a"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.22"
    sha256 cellar: :any_skip_relocation, big_sur:  "89958edd5699449c48fbfa59f72b9b86e812c1335e5abf4f8a59358c1ad1eac2"
    sha256 cellar: :any_skip_relocation, catalina: "ea29b791b8c20823fdde4257c870522a7d994a0bc9f6e1aa420c860ed0aafc98"
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
