class Md365 < Formula
  desc "AI-native CLI for Microsoft 365 - calendars, contacts, and mail as Markdown"
  homepage "https://github.com/lcorneliussen/md365"
  version "0.1.3"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.3/md365_0.1.3_darwin_amd64.tar.gz"
      sha256 "dad5bdb4ae4ba79adc8c41a50df682c483d5be1cd131a3df437b5bd6e95d6de9"
    end
    on_arm do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.3/md365_0.1.3_darwin_arm64.tar.gz"
      sha256 "3705c7c8462a6f9e0f22b6847c1337829e0ed5bd9ac21702d4b086273dde35c1"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.3/md365_0.1.3_linux_amd64.tar.gz"
      sha256 "2fe12379ab12570ef0a0b20b424b5dc48389704eafeaab809c46f766ba524e26"
    end
    on_arm do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.3/md365_0.1.3_linux_arm64.tar.gz"
      sha256 "3e5e72d0bc95c61051bc77478c9ef79fa3e1e5cb8b66adacaa7dd6c6b9165235"
    end
  end

  def install
    bin.install "md365"
  end

  test do
    system "#{bin}/md365", "--help"
  end
end
