class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.2.0.tar.gz"
  sha256 "e438504b81dcebfe73df60f3e6b289bf1288b3eda4a23c9af5bb7c89124e4c2d"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.24"
    sha256 cellar: :any_skip_relocation, big_sur:  "1cadb08fce02e8fe7923d3dc49c2761b4bc9692a12e4d6df6a34792699c8712c"
    sha256 cellar: :any_skip_relocation, catalina: "14685772a57486d1220b22ec80c2ae1a4bb30d929abfa6be46a8c81c0afa4812"
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
