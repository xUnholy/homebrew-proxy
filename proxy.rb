class Proxy < Formula
    desc "A command line tool to configure CNTLM proxy configuration"
    homepage "https://github.com/xUnholy/go-proxy"
    url "https://github.com/xUnholy/go-proxy/releases/download/v0.0.1/darwin-proxy.tar.gz"
    sha256 "809f9f78ddacf14ecc424daa6a40f8f1f159c362a75a339aae78f7eba69f351e"
    version "0.0.1"
  
    depends_on "cntlm"
  
    bottle :unneeded
  
    def install
      bin.install "proxy"
    end
  end
  
