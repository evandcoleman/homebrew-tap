class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.21.tar.gz"
  sha256 "d48fecea5f3b99bef0effd454371a6e43b12c74248069b478480542fbde0ca8f"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.20"
    sha256 cellar: :any_skip_relocation, big_sur:  "c80ab4d0ee5ed3e4b21393e104ceb7e6a1e105dd5771296a4f4aaec375f6e4ef"
    sha256 cellar: :any_skip_relocation, catalina: "660702bc069c23737dacb00d65df02b8ca3bf80552b95a5952310f70c2eef4ed"
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
