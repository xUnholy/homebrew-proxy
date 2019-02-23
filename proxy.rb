class Proxy < Formula
    desc "A command line tool to configure CNTLM proxy configuration"
    homepage "https://github.com/xUnholy/go-proxy"
    url "https://github.com/xUnholy/go-proxy/releases/download/v0.0.1/darwin-proxy.tar.gz"
    sha256 "8a4f75f1ecf1bd89f6f4ba0c2b1899ed0b1df8a4a6ac4b9d07aad7f26ebe24c3"
    version "0.0.1"
  
    depends_on "cntlm"
  
    bottle :unneeded
  
    def install
      bin.install "proxy"
    end
  end
  
