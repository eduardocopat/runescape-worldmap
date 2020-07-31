# Real world map with RuneScape icons and style

Check [here](https://api.maptiler.com/maps/e06a456c-3177-4bd3-adf6-dcb686a829e7/?key=7mHfXNiy4Wv2L5TPgLZk#14.4/51.49753/-0.12252).

## Step-by-step

Created using https://cloud.maptiler.com/ and the Streets basemap

Install and run vagrant (`vagrant up`) to convert png icons to svg. The PNG icons were downloaded from the osrs wiki.

`cd /vagrant/png-icons/`
`convertpng.sh`

NPM module `png2svg` is used to convert the images. This is the best that I could find.

Then you need to read the symbols from https://wiki.openstreetmap.org/wiki/SymbolsTab and  copy the svg to map-svg-icons with the name you want. For example, `osrs-named-svg-icons/Altar_icon.png.svg` would be `map-svg-iconsplace_of_worship.svg`

Then, create your sprites using `spritezero sprite@2x map-svg-icons/ --retina && spritezero sprite map-svg-icons/` and upload them to your map in maptiler. This will replace the map icons with the _iconic_ RuneScape icons.

You also need to import the style from `runescape.json`. This is responsible to change the map colors.

## License

All RuneScape icons are copyright by Jagex. They were copied from the wiki. All rest, see LICENSE.MD




