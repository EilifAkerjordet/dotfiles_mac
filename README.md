# My personal dotfiles for Mac

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

