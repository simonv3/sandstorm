Title: Can't install Sandstorm without root, by default
Vagrant-Box: trusty64
Vagrant-Precondition-bash: ! -d $HOME/sandstorm
Vagrant-Precondition-bash: ! -d /opt/sandstorm
Vagrant-Postcondition-bash: ! -d $HOME/sandstorm
Vagrant-Postcondition-bash: ! -d /opt/sandstorm

$[run]CURL_USER_AGENT=testing /vagrant/install.sh
$[slow]Sandstorm makes it easy to run web apps on your own server. You can have:

1. A full server with automatic setup (press enter to accept this default)
2. A development server, for writing apps.

How are you going to use this Sandstorm install? [1] $[type]2
If you want app developer mode for a Sandstorm install, you need root
due to limitations in the Linux kernel.

To set up Sandstorm, we will use sudo to switch to root, then
provide further information before doing the install.
Sandstorm's database and web interface won't run as root.
OK to continue? [yes] $[type]no
If you are OK with a local Sandstorm install for testing
but not app development, re-run install.sh with -u to bypass this message.
For developer mode to work, the script needs root, or read above to bypass.
*** INSTALLATION FAILED ***
Report bugs at: http://github.com/sandstorm-io/sandstorm
$[exitcode]1
