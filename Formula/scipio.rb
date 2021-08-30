class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.4.tar.gz"
  sha256 "2cf145f7ce58ef5cee2bb12b6f3d4e195fdbb74d0788fd6523aa7ae836c4b39a"
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
