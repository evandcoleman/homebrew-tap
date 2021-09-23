class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.2.1.tar.gz"
  sha256 "844e119d817dfa1730fe60ba7093937ed7565b3fa49d6245559c808222feaa1a"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.2.1"
    sha256 cellar: :any_skip_relocation, big_sur:  "bceb58e6222048d7a2118ceb4e0602e327b48228a84755f9933d082cfbc85b57"
    sha256 cellar: :any_skip_relocation, catalina: "3b269593f6d48a10de5ce7a99a508a641fff4562d3b973350f84057431209f70"
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
