Growlirssi
==========

A launchd daemon which enables Growl notifications from Irssi over SSH. If the connection to the server dies due to networks switching or sleep mode the daemon will restart the connection.

The script is based upon the `growl_irrsi.sh` script found on Andy Delcambre's blog in the post [Growl Notifications with Irssi](http://andy.delcambre.com/2008/12/06/growl-notifications-with-irssi.html).

How to use
----------
Follow the instructions in Andy's blogpost to setup fnotify.

1. Clone `git clone git@github.com:k0nserv/Growl-Irssi.git`
2. Put the script somewhere `cp Growl-Irssi/growl_irssi.sh ~/.growl_irssi.sh`
3. Open `se.hugotunius.growirssi.plist` in your favourite editor and customize `ProgramArguments` and `UserName` section for your configuration.
4. Put the `plist` in `~/Library/LaunchAgents`
5. Run `launchctl load ~/Library/LaunchAgents/se.hugotunius.growlirssi.plist`
6. Finally run `launchctl start growlirssi`
7. Enjoy your notifications

**Recommended**
Set `ServerAliveInterval` to 15 in your `~/.ssh/config`. This causes the SSH connection to die if it fails to contact the server three times in a row.

License
--------
MIT