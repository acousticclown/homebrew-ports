class Ports < Formula
  desc "Beautiful CLI to list, check and kill running ports"
  homepage "https://github.com/acousticclown/ports"
  url "https://github.com/acousticclown/ports/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "cdc1ebe36509e33f384321f4c0eb416c75da30672deaa1de8d808448e1fdcf1b"
  license "MIT"

  depends_on "go"

  def install
    system "go", "build", "-o", bin/"ports"
  end

  test do
    system "#{bin}/ports"
  end
end
