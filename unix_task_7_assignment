# 1. Install CVS
sudo apt install cvs

# 2. Create a directory for CVS repository
cd /home/student
mkdir cvsproject
cd cvsproject
cd ..

# 3. Initialize CVS repository
cvs -d ~/cvsrepo init
# Or using full path (absolute CVSROOT)
cvs -d /home/student/cvsrepo init

# 4. Handle import errors
# If CVSROOT is not absolute
cvs -d cvsproject init
# Output: Bad CVSROOT: 'cvsproject'

# 5. Create project directory and files
mkdir myproject
cd myproject
echo "Version 1" > file1.txt
echo "Initial content" > file2.txt

# 6. Import the project into CVS
cvs -d /home/student/cvsrepo import -m "Initial import" myproject vendor release

# 7. Checkout the project from repository
cd ..
cvs -d /home/student/cvsrepo checkout myproject

# 8. Make changes and commit
cd myproject
echo "Change 1" >> file1.txt
cvs commit -m "Added Change 1 to file1.txt" file1.txt

# 9. Create a tag (branch)
cvs tag branch1

# 10. Modify another file
echo "Branch change" >> file2.txt
cvs commit -m "Branch change to file2.txt" file2.txt

# 11. Merge with a branch
cvs update -j branch1

# 12. Check differences
cvs diff

