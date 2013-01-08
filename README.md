# Environment Stuff

1. Source `rdm.bashrc` from `~/.bashrc`.
2. Symlink `~/.vimrc` to `rdm.vimrc`.
3. Install Sublime Text 2 stuff.
  1. Install [Sublime Package Control](http://wbond.net/sublime_packages/package_control/installation).
      This currently uses the command: `import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print 'Please restart Sublime Text to finish installation'`.

  2. Install my packages. Current list of installed packages is in:
      sublime-test-2/User/Package Control.sublime-settings under "installed packages".

  3. Replace the `User` package with a soft-link to this directory. On Linux,
     this would be `~/.config/sublime-text-2/Packages/User`.


## How to install TimeLogger

1. Create softlink in `~/bin` for `rdm_log.sh`.
2. Create `~/.config/autostart/tlogger.sh.desktop` with the contents:
    [Desktop Entry]
    Type=Application
    Exec=/home/rdm/env/bin/tlogger.sh
    Hidden=false
    X-GNOME-Autostart-enabled=true
    Name[en_US]=watcher
    Name=tlogger
    Comment[en_US]=
    Comment=
3. To also run in SSH, create `~/.ssh/rc` with the contents:
    /home/rdm/env/bin/tlogger.sh &
