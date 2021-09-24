class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.2.2.tar.gz"
  sha256 "42bba8bf811d8a4247d37c75e9d24f5911a4098a0c6ba7719d4fc5a10765a2f7"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.2.2"
    sha256 cellar: :any_skip_relocation, big_sur:  "8b6b6bfd109b037691fc44465c8352dfbde24ecd32fb2c603fc5d304963908fe"
    sha256 cellar: :any_skip_relocation, catalina: "15a5e501028cdffd49311eb91404da2f51b42fa62b538d0888ba4c0663d5f071"
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
