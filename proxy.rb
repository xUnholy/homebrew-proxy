class Proxy < Formula
    desc "A command line tool to configure CNTLM proxy configuration"
    homepage "https://github.com/xUnholy/go-proxy"
    url "https://github.com/xUnholy/go-proxy/releases/download/v0.1.2/darwin-proxy.tar.gz"
    sha256 "b99eec8a891742c5171d505e6be0c5d2942ca6be2ea5137f8e148fad6bde3e00"
    version "0.1.3"
  
    depends_on "cntlm"
  
    bottle :unneeded
  
    def install
        bin.install "proxy"
        bash_profile="#{ENV['HOME']}/.bash_profile"
        zsh="#{ENV['HOME']}/.zshrc"


        if File.file?(bash_profile)
            File.open(bash_profile, 'a') { |f| 
            f.write "\n# Added by CNTLM proxy"
            f.write "\n[ -f $HOME/.proxyrc ] && source $HOME/.proxyrc"}
            puts "Add the following to your bash profile"
            puts "\techo \"[ -f $HOME/.proxyrc ] && source $HOME/proxyrc\" >> ~/.bash_profile"    
        end

        if File.file?(zsh)
            File.open(zsh, 'a') { |f| 
            f.write "\n# Added by CNTLM proxy"
            f.write "\n[ -f $HOME/.proxyrc ] && source $HOME/.proxyrc"}
            puts "Add the following to your zsh profile"
            puts "\techo \"[ -f $HOME/.proxyrc ] && source $HOME/.proxyrc\" >> ~/.zshrc"    
        end

    end
end
  
