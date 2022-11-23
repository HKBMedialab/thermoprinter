#!/bin/zsh

# Installs zj-58 filter
# Tested as working under Mac os x

sudo launchctl stop org.cups.cupsd

cp rastertozj /usr/libexec/cups/filter/
chmod 755 /usr/libexec/cups/filter/rastertozj
chown root:wheel /usr/libexec/cups/filter/rastertozj

cp ZJ-58.ppd /private/etc/cups/ppd/
chmod 755 /private/etc/cups/ppd/ZJ-58.ppd
chown root:wheel /private/etc/cups/ppd/ZJ-58.ppd

sudo launchctl start org.cups.cupsd

echo "copied successfully"
