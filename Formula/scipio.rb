class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.2.3.tar.gz"
  sha256 "35892f03072b42919686ea46327c34ba175c4f5e07f441028fe21f11bd77878a"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.2.3"
    sha256 cellar: :any_skip_relocation, big_sur:  "61a84fdf62c79a2dc52f9c96e6bc52853c1c29d5d7a98805f0395efdda5fb96d"
    sha256 cellar: :any_skip_relocation, catalina: "e4bf25c6fb03e6dbcf4e05b512db0c5fa9e707b285b0ac0bac2a5bd085c505dd"
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
