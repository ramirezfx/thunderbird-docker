echo "TAG (example: thunderbird:latest)"
read tag
sudo docker build -t $tag .
echo "Build finished"
