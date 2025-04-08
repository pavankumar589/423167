Aim : To Install requite packages using rpm/deb/apt. 
how do i check if my linux is deb or rpm : 
#!/bin/bash

echo "Detecting package management system..."

if command -v apt > /dev/null; then
    echo "This is a Debian-based system (uses DEB packages)."
    echo "Example: sudo apt install <package-name>"
elif command -v dpkg > /dev/null; then
    echo "This is a Debian-based system (uses dpkg)."
    echo "Example: sudo dpkg -i <package-name>.deb"
elif command -v yum > /dev/null; then
    echo "This is a RedHat-based system (uses RPM packages via yum)."
    echo "Example: sudo yum install <package-name>"
elif command -v dnf > /dev/null; then
    echo "This is a RedHat-based system (uses RPM packages via dnf)."
    echo "Example: sudo dnf install <package-name>"
elif command -v rpm > /dev/null; then
    echo "This system uses RPM packages (rpm tool found)."
    echo "Example: sudo rpm -ivh <package-name>.rpm"
else
    echo "Could not detect package manager. Unknown or unsupported Linux distro."
fi
=> Since dpkg -l produces a long list of packages . Our system uses .deb packages 


What is differences between Linux RPM & DEB Packages :
1. DEB stands for Debian and RPM stands for Red hat Package Manager 
2. Both are used to manage software installations,updates and uninstallation 
3. DEB packages are used by Debian-based systems such as Ubuntu ,While RPM packages are used by CentOS, Fedora, and Red Hat Enterprise Linux. 
4. DEB packages are installed using the dpkg package manager, while RPM packages are installed using the rpm package manager. 
5. The dpkg package manager uses the .deb file format, which contains all the necessary files required for installation.Red Hat Package Manager uses the .rpm file format, which has all the necessary files required for installation. 
6. DEB packages use a system called Advanced Packaging Tool (APT) to manage dependencies.RPM packages, on the other hand, use a system called Yellowdog Updater Modified (YUM) to manage dependencies. APT ,RPM downloads and install the dependencies on their respective systems. 
7. Package repositories are servers that store packages and package metadata. Package repositories allow users to easily download and install packages.DEB packages use Debian Package Repositories to store packages and package metadata. RPM packages, on the other hand, use RPM Package Manager Repositories to store packages and package metadata. 
8. DEB uses a low-level package management tool known as dpkg package manager, on the other hand, RPM uses the rpm package manager, which is also a low-level package management tool.Both are command-line tool
