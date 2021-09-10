class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.19.tar.gz"
  sha256 "359d6a4a1f84251db254974c8865f4de1dbf718c45e8eb80fcdfae2c1f5aa141"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.18"
    sha256 cellar: :any_skip_relocation, big_sur: "8105362c7519e6deaff99ae982a6baff99a0d8524eaebae200fa357f1fa671ba"
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
