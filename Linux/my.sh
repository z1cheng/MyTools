# Delete other branches
git branch -D $(git branch | grep -vE 'master|main')

# OOM
bash -c "for b in {0..99999999}; do a=$b$a; done"

# Append text to a file without permission
# tee -a: Append the output to the files rather than overwriting them.
echo "your text" | sudo tee -a /path/to/your/file
sudo bash -c "echo 'your text' >> /path/to/your/file"
