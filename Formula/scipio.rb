class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.15.tar.gz"
  sha256 "ea271800314d68b5d9c00ed24319f84a752809d29d4e4b9aed155b8834931d5f"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.15"
    sha256 cellar: :any_skip_relocation, big_sur: "875f81fee144c734abf88224b0828baf15a309457a50712b1b6d45d5104b4f1b"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
