class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.2.1.tar.gz"
  sha256 "844e119d817dfa1730fe60ba7093937ed7565b3fa49d6245559c808222feaa1a"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.2.0"
    sha256 cellar: :any_skip_relocation, big_sur:  "88269595b3faadcd3e912bb6897646782de95bcc20f56df73f7f52726ca0bd21"
    sha256 cellar: :any_skip_relocation, catalina: "f6c70ea912aefe4cf07ac9e07f8cbbce7347429ac11bcf5bce145905cbae6d87"
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
