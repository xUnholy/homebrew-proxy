class Proxy < Formula
    desc "A command line tool to configure CNTLM proxy configuration"
    homepage "https://github.com/xUnholy/go-proxy"
    url "https://github.com/xUnholy/go-proxy/releases/download/v0.0.1/proxy"
    sha256 "748391fdebe49d5d14c55daefe26f159d9234b4f8c98a03e2de10448df07daa0"
    version "0.0.1"
  
    depends_on "cntlm"
  
    bottle :unneeded
  
    def install
      bin.install "proxy"
    end
  end
  
