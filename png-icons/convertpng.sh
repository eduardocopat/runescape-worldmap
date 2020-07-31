#/bin/sh

#find . -maxdepth 1 -exec echo "png2svg {} /vagrant/svg-icons/{}.svg" \;

for f in *.png; do 
    png2svg $f /vagrant/osrs-named-svg-icons/$f.svg;
done