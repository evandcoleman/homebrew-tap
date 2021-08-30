class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.3.tar.gz"
  sha256 "bc116cde5522b44815ab4334c6106e959976409d9186b17803beb3acde2fc2b0"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.3"
    sha256 cellar: :any_skip_relocation, big_sur: "6db65477dbb4d6507931baf0295eb8e22a2630868f902c6a8e997d2e3da7f365"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
