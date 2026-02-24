class Md365 < Formula
  desc "AI-native CLI for Microsoft 365 - calendars, contacts, and mail as Markdown"
  homepage "https://github.com/lcorneliussen/md365"
  version "0.1.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.2/md365_0.1.2_darwin_amd64.tar.gz"
      sha256 "808a1eae9dfed42ec13cc81c6c3fc83dd5b1af82ae563942833aa52d2a8d0a51"
    end
    on_arm do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.2/md365_0.1.2_darwin_arm64.tar.gz"
      sha256 "6cd8731e49ec0dba268228e51bc9903dde006e82b6fe604a2d79e9a9e27aa000"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.2/md365_0.1.2_linux_amd64.tar.gz"
      sha256 "4f30f6cc19adef3836cf5aebadd7389c7ddd4674a522ffc652c11e45d8bd6e48"
    end
    on_arm do
      url "https://github.com/lcorneliussen/md365/releases/download/v0.1.2/md365_0.1.2_linux_arm64.tar.gz"
      sha256 "152f5d33acbb16e16afb6106aecff5da6657de0f975dc5678ff16e21283872a4"
    end
  end

  def install
    bin.install "md365"
  end

  test do
    system "#{bin}/md365", "--help"
  end
end
