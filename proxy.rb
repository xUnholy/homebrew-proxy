class Proxy < Formula
    desc "A command line tool to configure CNTLM proxy configuration"
    homepage "https://github.com/xUnholy/go-proxy"
    url "https://github.com/xUnholy/go-proxy/releases/download/v0.0.1/darwin-proxy.tar.gz"
    sha256 "4cdf86cd0056acab20cbbf460e1c552fd83e9fe1351afeda051c467825278e63"
    version "0.0.1"
  
    depends_on "cntlm"
  
    bottle :unneeded
  
    def install
      bin.install "proxy"
    end
  end
  
