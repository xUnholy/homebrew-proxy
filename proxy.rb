class Proxy < Formula
    desc "A command line tool to configure CNTLM proxy configuration"
    homepage "https://github.com/xUnholy/go-proxy"
    url "https://github.com/xUnholy/go-proxy/releases/download/v0.1.0/darwin-proxy.tar.gz"
    sha256 "c7781ec3e5ff6942d118c20ad048a5b79d1537ac90c321145a74628b9981e691"
    version "0.1.2"
  
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
  
