# Salt Stack Profile

This profile will check to make sure your salt installation is patched to a level that protects you from CVE-2020-11651, and CVE-2020-11652.

It does so by checking to ensure the packages salt-api, salt-cloud, salt-master, salt-minion, salt-ssh, salt-syndic, and salt are either version 3000.2 or newer, or 2019.2.4 or newer, or that they do not exist.

It also checks for the presence of the "salt" command in the command line, and if present, checks the standard out of the salt --version command in case salt was installed without a package manager.