class QQueue < Formula
  desc "Queue commands to run at a later time in this directory"
  homepage "https://github.com/justincampbell/q-queue"
  url "https://github.com/justincampbell/q-queue.git",
      branch: "master"
  version "HEAD"
  license "MIT"

  def install
    bin.install "q"
  end

  test do
    system "#{bin}/q", "--help"
  end
end
