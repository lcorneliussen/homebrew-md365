class Md365 < Formula
  desc "AI-native CLI for Microsoft 365 - calendars, contacts, and mail as Markdown"
  homepage "https://github.com/lcorneliussen/md365"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.1/md365_0.1.1_darwin_amd64.tar.gz"
      sha256 "1f8dd63ceb1923065f4783bbae29a4a007d29cb2f9cebc0b6dc1560662e07adc"
    end
    on_arm do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.1/md365_0.1.1_darwin_arm64.tar.gz"
      sha256 "ca84840e96aa8827a10810c34f8ce86610676bd5a236b528891fc3cd5a157d1a"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.1/md365_0.1.1_linux_amd64.tar.gz"
      sha256 "43e8768fe288f4281295de1da47a143d79c9fe43acbdd9a8747cd0a37c964856"
    end
    on_arm do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.1/md365_0.1.1_linux_arm64.tar.gz"
      sha256 "67088114c7b3c19937e65cf15f9671149bfc04401ffc594a6e1459c243cc8cf9"
    end
  end

  def install
    bin.install "md365"
  end

  test do
    system "#{bin}/md365", "--help"
  end
end
