class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.13.tar.gz"
  sha256 "2456083b062d95f198c06023e20a56914f580a8b51ff9143fdc3dc465531205e"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.12"
    sha256 cellar: :any_skip_relocation, big_sur: "9f2fa76d0c7c8a9b47fd4aff20ba1ee5d0295a846aadfc1b345c07a8c4766d12"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
