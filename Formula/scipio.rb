class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.2.5.tar.gz"
  sha256 "efad40f2a4dae13d775fbe8e2a67597add262820efc676a9ad90dcfe8520dcdc"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.2.5"
    sha256 cellar: :any_skip_relocation, big_sur:  "f3e9cf643de3fc12fd10fcd5d0aba026bac683655baa5fcc7ff9f59918c5066a"
    sha256 cellar: :any_skip_relocation, catalina: "65a2e430392e1d8ec5e6c55beedaa7eed2a571c7a6e122adf2424d08b2fa9d26"
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
