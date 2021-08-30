class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.5.tar.gz"
  sha256 "eebdba128588bba5cbbdeeaeba2872d7fb4a73a1c9e1c728cc7977c64d16115d"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.5"
    sha256 cellar: :any_skip_relocation, big_sur: "e57d8219f0519ae66bed8462fd84e0927eb8886f807bc517d6d51a8a254bd86b"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
