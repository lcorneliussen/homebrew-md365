class Md365 < Formula
  desc "AI- and human-friendly CLI for Microsoft 365 - calendars, contacts, and mail as Markdown"
  homepage "https://github.com/lcorneliussen/md365"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.2.0/md365_0.2.0_darwin_amd64.tar.gz"
      sha256 "019e0beb1a19af816c912c7ebb2e9c69abfcc5b018eba7f180ecd9665107a180"
    end
    on_arm do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.2.0/md365_0.2.0_darwin_arm64.tar.gz"
      sha256 "76a641bcaef2f648f180fb670623a0855b8e66ffb8cf2b8a30f488197b60c6b5"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.2.0/md365_0.2.0_linux_amd64.tar.gz"
      sha256 "43e52b5e93457ba471def7421aa38b0416592819db7a7c6811d721fbc51fcd05"
    end
    on_arm do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.2.0/md365_0.2.0_linux_arm64.tar.gz"
      sha256 "748f468646cdaa578af1d1489730eaa340ca5a343bbcbc3f71ef190f93011852"
    end
  end

  def install
    bin.install "md365"
  end

  test do
    system "#{bin}/md365", "--help"
  end
end
