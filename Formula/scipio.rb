class Scipio < Formula
  desc "Cache tool for Swift Package Manager"
  homepage "https://github.com/evandcoleman/Scipio"
  url "https://github.com/evandcoleman/Scipio/archive/refs/tags/0.1.12.tar.gz"
  sha256 "b8f6337f4be249251fd864d890ae5242074b1bd01d994c0147aff06e9d242d0f"
  license "Apache-2.0"
  head "https://github.com/evandcoleman/Scipio.git", branch: "main"

  bottle do
    root_url "https://github.com/evandcoleman/homebrew-tap/releases/download/scipio-0.1.11"
    sha256 cellar: :any_skip_relocation, big_sur: "5e378bfd5d7be86d365e26b798229ccdf317b3fb21e47be7de89964993471288"
  end

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/scipio"
  end

  test do
    system "#{bin}/scipio", "--version"
  end
end
