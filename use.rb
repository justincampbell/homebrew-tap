class Use < Formula
  desc "Shell utility for managing multiple profile configurations"
  homepage "https://github.com/justincampbell/use"
  url "https://github.com/justincampbell/use.git",
      branch: "master"
  version "HEAD"
  license "MIT"

  def install
    bin.install "use"
    prefix.install "libexec"
  end

  test do
    system "#{bin}/use", "--help"
  end
end
