# Firefox-Gsconnect-Service-Unavailable-fix

## TLDR

Since version 147, Firefox uses the ~/.config/mozilla path instead of ~/.mozilla.

If Gsconnect is installed through 'Extension Manager', it checks the ~/.mozilla path to know if Firefox is installed. Thus the ``Service Unavailable`` error.

Since this is a simple path error, this script works for pretty much any Linux distro.

## Instructions

Install and run the script. That's it !

```shell
git clone git@github.com:Jtannier/Firefox-Gsconnect-Service-Unavailable-fix.git
cd Firefox-Gsconnect-Service-Unavailable-fix
bash missing_json_fix.sh
```

## Credits

* [GSConnect](https://github.com/GSConnect/gnome-shell-extension-gsconnect) — A complete KDE Connect implementation for GNOME Shell.
* [GSConnect WebExtension](https://addons.mozilla.org/firefox/addon/gsconnect/) — Direct Firefox integration for link sharing and SMS.
