class Proxy < Formula
    desc "A command line tool to configure CNTLM proxy configuration"
    homepage "https://github.com/xUnholy/go-proxy"
    url "https://github.com/xUnholy/go-proxy/releases/download/v0.1.0/darwin-proxy.tar.gz"
    sha256 "22af67ab52cac36ce35f20eff831e8c17e0c83fde900179b9e1aa99a86994888"
    version "0.1.0"
  
    depends_on "cntlm"
  
    bottle :unneeded
  
    def install
        bin.install "proxy"
        bash_profile="#{ENV['HOME']}/.bash_profile"
        zsh="#{ENV['HOME']}/.zshrc"

        Dir.mkdir("#{ENV['HOME']}/.proxy") unless File.exists?("#{ENV['HOME']}/.proxy")
        File.open("#{ENV['HOME']}/.proxy/proxy.sh", "w") {} unless File.file?("#{ENV['HOME']}/.proxy/proxy.sh")

        if File.file?(bash_profile)
            File.open(bash_profile, 'a') { |f| 
            f.write "\n# Added by CNTLM proxy"
            f.write "\n[ -f $HOME/.proxy/proxy.sh ] && source $HOME/.proxy/proxy.sh"}
            puts "Add the following to your bash profile"
            puts "\techo \"[ -f $HOME/.proxy/proxy.sh ] && source $HOME/.proxy/proxy.sh\" >> ~/.bash_profile"    
        end

        if File.file?(zsh)
            File.open(zsh, 'a') { |f| 
            f.write "\n# Added by CNTLM proxy"
            f.write "\n[ -f $HOME/.proxy/proxy.sh ] && source $HOME/.proxy/proxy.sh"}
            puts "Add the following to your zsh profile"
            puts "\techo \"[ -f $HOME/.proxy/proxy.sh ] && source $HOME/.proxy/proxy.sh\" >> ~/.zshrc"    
        end

    end
end
  
