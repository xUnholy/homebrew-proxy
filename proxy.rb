class Proxy < Formula
    desc "A command line tool to configure CNTLM proxy configuration"
    homepage "https://github.com/xUnholy/go-proxy"
    url "https://github.com/xUnholy/go-proxy/releases/download/v0.0.1/darwin-proxy.tar.gz"
    sha256 "f65834030e55f0b890a067e0ed259331a9d26775a7da2f665d7f07399d01a85c"
    version "0.0.1"
  
    depends_on "cntlm"
  
    bottle :unneeded
  
    def install
      bin.install "proxy"
    end
  end
  
