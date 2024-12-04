git add .
if [ -z "$1" ]; then echo "oops";
else
    git commit -m "$1"
    git push
    ssh -i ~/.ssh/fresh_cut_shirts.pem -t root@143.198.79.233 "cd /home/ubuntu/mathbenders.com/ ; git pull ; sudo chown www-data:www-data -R . ; source /r.sh"
fi
