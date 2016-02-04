def softlink(filename, from: '$PWD', link_dest: '$HOME')
  `ln -s #{from}/#{filename} #{link_dest}/#{filename}`
end

task default: %w[main]

task :nvim do
  `mkdir $HOME/.config`
  softlink 'nvim', link_dest: '$HOME/.config/'
  `curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`
  `nvim +PlugInstall +qall`
end

task :zsh do
  `sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"`
end

task :softlink do
  Dir.entries('softlinks').each do |filename|
    next if (filename == '.' || filename == '..')
    softlink filename, from: '$PWD/softlinks'
  end
end

task :xfce4_terminal do
  softlink 'terminalrc', link_dest: '$HOME/.config/xfce4/terminal'
end

task :main => [:nvim, :zsh, :softlink, :xfce4_terminal] do
end
