class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.22.tar.gz"
  sha256 "80ba2c527d696b7a139ebd86f968070962bd15422370dba6169ab2d8595e036a"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.21"
    sha256 cellar: :any_skip_relocation, big_sur:  "3b6386434a5b10f828dac8b554c48e48178edc28923056df79ae11a253524e0e"
    sha256 cellar: :any_skip_relocation, catalina: "ff067317b8cd0788e8bd1e347744da3a5b10533b23334c653fc78f0d50208e1e"
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
