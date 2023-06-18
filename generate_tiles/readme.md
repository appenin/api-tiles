Pour la conversion de données vectorielles en tuiles, vous pouvez utilisez la librairie tippecanoe :

```bash
brew install tippecanoe
```

L’usage est relativement simple et permet de convertir des features au format GeoJSON, Geobuf ou CSV en format compressés ou non. Dans votre command line :

```bash
tippecanoe -o file.mbtiles [options] [file.json file.json.gz file.geobuf ...]
```

Les options utilisées dans notre cas sont les suivantes :

- --no-tile-stats (-pg)
    
    Don't generate the `tilestats` row in the tileset metadata. Uploads without [tilestats](https://github.com/mapbox/mapbox-geostats) will take longer to process.
    
- --detect-shared-borders (-ab)
    
    In the manner of [TopoJSON](https://github.com/mbostock/topojson/wiki/Introduction), detect borders that are shared between multiple polygons and simplify them identically in each polygon. This takes more time and memory than considering each polygon individually.
    
- --simplify-only-low-zooms (-pS)
    
    Don't simplify lines and polygons at maxzoom (but do simplify at lower zooms)
    
- --generate-ids (-ai)
    
    Add an `id` (a feature ID, not an attribute named `id`) to each feature that does not already have one. There is currently no guarantee that the `id` added will be stable between runs or that it will not conflict with manually-assigned feature IDs. Future versions of Tippecanoe may change the mechanism for allocating IDs.
    
- --read-parallel (-P)
    
    Use multiple threads to read different parts of each GeoJSON input file at once. This will only work if the input is line-delimited JSON with each Feature on its own line, because it knows nothing of the top-level structure around the Features. Spurious "EOF" error messages may result otherwise. Performance will be better if the input is a named file that can be mapped into memory rather than a stream that can only be read sequentially.
    
- --force (-f)
    
    Remove *out.mbtiles* if it already exists.
    
- --layer (-l)
    
    Include the named layer in the output. You can specify multiple `-l` options to keep multiple layers. If you don't specify, they will all be retained.
    
- (soit ⇒) --coalesce-densest-as-needed (moins précis mais plus rapide)
    
    If the tiles are too big at low or medium zoom levels, merge as many features together as are necessary to allow tiles to be created with those features that are still distinguished
    
- (soit ⇒) --drop-denset-as-needed (plus précis mais moins rapide)
    
    If the tiles are too big at low zoom levels, drop the least-visible features to allow tiles to be created with those features that remain
    
- -Z2 (-minimum-zoom=-Z)
    
    
    | zoom level | precision (ft) | precision (m) | map scale |
    | --- | --- | --- | --- |
    | -z0 | 32000 ft | 10000 m | 1:320,000,000 |
    | -z1 | 16000 ft | 5000 m | 1:160,000,000 |
    | -z2 | 8000 ft | 2500 m | 1:80,000,000 |
- --output (-o)
    
    Write the new tiles to the specified .mbtiles file.
    
