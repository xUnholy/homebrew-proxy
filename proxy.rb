class Proxy < Formula
    desc "A command line tool to configure CNTLM proxy configuration"
    homepage "https://github.com/xUnholy/go-proxy"
    url "https://github.com/xUnholy/go-proxy/releases/download/v0.1.4/darwin-proxy.tar.gz"
    sha256 "471b24696ce98287ab3eb0933da87b8f3202f5a23ee910d3c702babaf0056bf8"
    version "0.1.4"
  
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
  
