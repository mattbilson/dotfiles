# up to you (me) if you want to run this as a file or copy paste at your leisure
echo "**\t Installing oh-my-zsh"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# https://github.com/jamiew/git-friendly
# the `push` command which copies the github compare URL to my clipboard is heaven
echo "**\t Installing git-friendly"
rm -rf ~/Development/tools/git-friendly
git clone git://github.com/jamiew/git-friendly.git ~/Development/tools/git-friendly

echo "**\t Installing git-up"
sudo gem install git-up

# https://rvm.io
# rvm for the rubiess
echo "**\t Installing rvm"
curl -L https://get.rvm.io | bash -s stable --ruby --auto-dotfiles

# homebrew!
echo "**\t Installing Homebrew"
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
./.brew

# https://github.com/rupa/z
# z, oh how i love you
echo "**\t Installing z"
git clone https://github.com/rupa/z.git ~/Development/tools/z
chmod +x ~/Development/tools/z/z.sh
# also consider moving over your current .z file if possible. it's painful to rebuild :)

# https://github.com/thebitguru/play-button-itunes-patch
# disable itunes opening on media keys
cd ~/Development/tools
git clone https://github.com/thebitguru/play-button-itunes-patch play-button-itunes-patch
open ./play-button-itunes-patch

# installing global npm
npm install -g jshint gulp
npm install --global git-recent
npm install --global git-open


echo "**\t Updating .zshrc"
cp ~/.zshrc ~/.zshrc_backup
cat ~/.zshrc_backup ~/.dotfiles/.rc > ~/.zshrc

echo "**\t ALL DONE! Opening some browser windows for apps..."

open "http://google.com/chrome"
open "http://spotify.com"
open "http://skype.com"
open "http://www.sublimetext.com"
open "http://www.videolan.org/vlc/index.en_GB.html"
open "http://iterm2.com"
open "https://www.virtualbox.org"
open "https://www.dropbox.com"
open "https://justgetflux.com"

open ~/.dotfiles/.manual