# My personal dotfiles for macOS

Now, to clone the dotfiles properly into your home folder, do:  
(The install script does this automatically)  
  * `echo ".dotfiles.git" >> .gitignore`
  * `git clone --bare https://www.github.com/EilifAkerjordet/dotfiles_mac.git $HOME/.dotfiles.git`
  * `/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME checkout`
  * `/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME config --local status.showUntrackedFiles no`

Once the dotfiles are checked out, the `/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME` can now be used under the alias `dotfiles`.

For the install script to work properly, make sure to disable SIP first. For Hackintoshes using Clover, you will need to edit the `config.plist`.  

Change:  
`<key>CsrActiveConfig</key>`  
`<string>XXXX</string>`

To:  
`<key>CsrActiveConfig</key>`  
`<string>0x3E7</string>`

For proper Macs, you have to restart your mac into recovery mode (hold cmd + r on boot). Then launch the terminal from the utilities tab, and run `csrutil disable`

Now the install script should work. Run:
  * `chmod +x ~/dotfiles_utils/installer.sh`
  * `sh ~/dotfiles_utils/installer.sh`

