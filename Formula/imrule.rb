class Imrule < Formula
  desc "Apply the same rules to all coding agents"
  homepage "https://github.com/soapbird/imrule"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/soapbird/imrule/releases/download/v0.1.0/imrule-aarch64-apple-darwin.tar.gz"
      sha256 "1532eafad67bb4e1a4456dcdcdbb8e633a40229267082e0de65922ff2629fa0a"
    else
      url "https://github.com/soapbird/imrule/releases/download/v0.1.0/imrule-x86_64-apple-darwin.tar.gz"
      sha256 "4635d54b03d72929e9b57ce503694079733d75761d3e12a25df3b344dc2fc9a2"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/soapbird/imrule/releases/download/v0.1.0/imrule-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "88d97910d908a4406eff8240f4b0e8ebf372b5e124faa06b9fe668ca229462a9"
    end
  end

  def install
    bin.install "imrule"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/imrule --version")
  end
end
