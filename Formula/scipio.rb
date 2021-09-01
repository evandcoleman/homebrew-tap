class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.9.tar.gz"
  sha256 "79e4874c30e20e044d14f1d14c581988041aa71fd6681be000085aa29e4a2f6f"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.8"
    sha256 cellar: :any_skip_relocation, big_sur: "b6059d270fcf80929d1d4ff4fa806c27f447c971612a285aeba3e9c1466477ed"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
