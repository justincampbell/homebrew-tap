class Cacheout < Formula
  desc "Caches output from commands for the specified timeframe"
  homepage "https://github.com/justincampbell/cacheout"
  version "1.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/justincampbell/cacheout/releases/download/v1.0.0/cacheout_darwin_amd64.tar.gz"
      sha256 ""

      def install
        bin.install "cacheout"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/justincampbell/cacheout/releases/download/v1.0.0/cacheout_linux_amd64.tar.gz"
      sha256 ""

      def install
        bin.install "cacheout"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/justincampbell/cacheout/releases/download/v1.0.0/cacheout_linux_arm.tar.gz"
      sha256 ""

      def install
        bin.install "cacheout"
      end
    end
  end

  test do
    system "#{bin}/cacheout", "1s", "echo", "test"
  end
end
