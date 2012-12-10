# Configuring Sublime Text 2

 1. Install [Sublime Package Control](http://wbond.net/sublime_packages/package_control/installation).
    This currently uses the command: `import urllib2,os; pf='Package Control.sublime-package'; ipp=sublime.installed_packages_path(); os.makedirs(ipp) if not os.path.exists(ipp) else None; urllib2.install_opener(urllib2.build_opener(urllib2.ProxyHandler())); open(os.path.join(ipp,pf),'wb').write(urllib2.urlopen('http://sublime.wbond.net/'+pf.replace(' ','%20')).read()); print 'Please restart Sublime Text to finish installation'`.

 2. Install my packages. Current list of installed packages: 
  * SublimeBlockCursor
  * DocBlockr

 3. Replace the `User` package with a soft-link to this directory. On Linux,
    this would be `~/.config/sublime-text-2/Packages/User`.


