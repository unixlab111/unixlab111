echo Enter file
read file
echo Enter pattern 
read pattern
grep -o $pattern $file
if [ $? -eq 0 ]; then
        echo "Pattern found"
else
        echo "Pattern not found"
fi
