function pause(){
   read -p "$*"
}

echo "#############################################################"
echo "#############################################################"
echo "#############################################################"
echo "#####                                                  ######"
echo "#####   ##########   ########   ########   ###  ##     ######"
echo "#####       ###      ###  ###   ####       ###  ##     ######"
echo "#####       ###      ###  ###   ###        ### ##      ######"
echo "#####       ###      ########   ###        ####        ######"
echo "#####   ##  ###      ###  ###   ####       ### ##      ######"
echo "#####   #######      ###  ###   ########   ###  ##     ######"
echo "#####                                                  ######"
echo "#############################################################"
echo "#############################################################"
echo "#############################################################"
pause 'Press [enter] to begin the script, make sure you are running this in the home directory otherwise things will end up in the wrong place correctly'
echo "Making Projects folder.."
mkdir Projects
cd Projects
pwd
echo "Attempting to SU"
su
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
brew install automake
brew install wget
brew install git
echo "Homebrew install should be done.. opening git repos to clone"
open http://pastie.org/8519392
sleep 5
mkdir Downloads
cd Downloads
pwd
  wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.2.dmg
  wget https://download-chromium.appspot.com/dl/mac
  wget http://iterm2.com/downloads/stable/iTerm2_v1_0_0.zip
  wget http://81.169.182.62/smcfancontrol_2_1.zip
  wget https://s3.amazonaws.com/Minecraft.Download/launcher/Minecraft.dmg
  wget http://cachefly.alfredapp.com/Alfred_2.1.1_227.zip
  wget http://www.macbartender.com/Demo/Bartender.zip
  wget http://media.steampowered.com/client/installer/steam.dmg
  wget http://www.dm.origin.com/mac/download
  wget http://download.deluge-torrent.org/mac_osx/
  open http://www.introversion.co.uk/prisonarchitect/builds/prisonarchitect-alpha15-macosx.zip
  echo "Downlaods are complete!!"
  sleep 5
  echo "unzipping"
  unzip mac
  unzip iTerm2_v1_0_0.zip
  unzip smcfancontrol_2_1.zip
  unzip Alfred_2.1.1_227.zip
  "unzipping complete, moving to downloads"
  sleep 3
    cd ../
    pwd
    mv Downloads ../Downloads
echo "Completed!"
echo "oh my zsh"
sleep 5
echo "Steeef theme for oh-my-zsh"
sleep 3
wget --no-check-certificate https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O - | sh