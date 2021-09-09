class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.18.tar.gz"
  sha256 "f2021d47c6aa9c510b8582e4a09180469d72e1d325ebaf6137d7b6c2ae204fc6"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.17"
    sha256 cellar: :any_skip_relocation, big_sur: "8ddd4758728ce2e4a5a3521c7e52f14a6883fa16e6420deec1ecc351e981432b"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
