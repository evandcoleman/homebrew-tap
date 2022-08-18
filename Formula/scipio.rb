class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.2.7.tar.gz"
  sha256 "0817ddd2ec7ad73da25e21da4109f2198e0c689ed7561cc1ae4439ac2b712920"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.2.7"
    sha256 cellar: :any_skip_relocation, big_sur:  "9dbf80a78dfe5eda96cbf94c5197f9df1a88626aa33930956641e2e531cebcd9"
    sha256 cellar: :any_skip_relocation, catalina: "835aca922638c1d137f3cdbb34fdb4775e7bc5f1893ed815c44edc775bc76379"
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
