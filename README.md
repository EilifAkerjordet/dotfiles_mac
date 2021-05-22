# My personal dotfiles for Mac

The script assumes that git and homebrew are both installed.  

  * Homebrew: `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`
  * Now you can install git through homebrew. `brew install git`

For Yabai and Skhd to work properly, make sure to disable SIP first. For Hackintoshes using Clover, you will need to edit the `config.plist`.  

Change:  
`<key>CsrActiveConfig</key>`  
`<string>XXXX</string>`

To:  
`<key>CsrActiveConfig</key>`  
`<string>0x3E7</string>`

For proper Macs, you have to restart your mac into recovery mode (hold cmd + r on boot). Then launch the terminal from the utilities tab, and run `csrutil disable`

Now the install script should work. Run:
  * `chmod +x install.sh`
  * `sudo sh install.sh`

