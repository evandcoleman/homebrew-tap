class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.17.tar.gz"
  sha256 "48b7ba0315ee4d62f588a687e2d860191e5531bb08c12dd18cd8caf3ed460ca2"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.16"
    sha256 cellar: :any_skip_relocation, big_sur: "46065f894c8e5942aaeca299224078de6fe0cceb5fa30a3dce86601a803a4c9f"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
