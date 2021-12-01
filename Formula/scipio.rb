class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.2.5.tar.gz"
  sha256 "efad40f2a4dae13d775fbe8e2a67597add262820efc676a9ad90dcfe8520dcdc"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.2.4"
    sha256 cellar: :any_skip_relocation, big_sur:  "f2b8ec8c3a14dcf37ded3fd47bae2fbfa7ebfc34201bdbaf0e75d3c90217fada"
    sha256 cellar: :any_skip_relocation, catalina: "af7312cb6a449fe2a6ffa5ed673494f34115f4516e81d9987bc276d0af61272d"
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
