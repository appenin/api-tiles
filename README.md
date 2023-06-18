# Tile Server - README

## Introduction
This project is a Tile Server implementation using `tileserver-gl`. The Tile Server allows you to serve map tiles for various geographic data sources. Please note that a minimum of 10 GB of free disk space is required to run this server.

**WARNING:** During the initial build of the Docker image, five tile downloads are performed to store the `mbtiles` locally within the Docker volume. This process requires substantial disk space. Therefore, please ensure that you have at least 10 GB of free disk space available before proceeding.

## Getting Started
To run the Tile Server, you have two options:

### Option 1: Docker Volume
If you prefer a simpler approach, you can directly launch the Docker volume. However, please note that the initial launch may take some time, depending on your internet connection speed. Follow the steps below to get started:

1. Ensure you have Docker installed on your system.
2. Open your terminal and navigate to the project's root directory.
3. Execute the following command:

```bash
docker-compose up
```

This command will initiate the Tile Server and start downloading the required `mbtiles` files.

### Option 2: Manual Tile Download
If you want more control over the tile downloading process, you can manually download the required tiles before starting the server. Follow the steps below:

1. Execute the following command to download the required tiles:


```bash
bash /mbtiles/download_tiles.sh
```

This script will download the necessary `mbtiles` files for local storage.

## Starting the Server
Once the server is mounted, the map data will be available locally on `http://127.0.0.1:8081`. To start the server, follow the steps below:

1. Open your terminal and navigate to the project's root directory.
2. Execute the following command:

```bash
yarn run tileserver-gl-light 'falcotiles_local' -c config.json -p 8081
```

This command will start the Tile Server with the specified configuration file and run it on port `8081`.

## Accessing the Data
After the Tile Server is up and running, you can access the map data by using the following URL pattern:

```bash
http://127.0.0.1:8081/data/drought/{z}/{x}/{y}.pbf
```


Replace `{z}`, `{x}`, and `{y}` with the desired tile coordinates. For example, to access the RGA data, you can use the following URL:

```bash
http://127.0.0.1:8081/data/drought/10/123/456.pbf
```

This will retrieve the RGA tile at zoom level 10, column 123, and row 456.

Please note that the tile data is served in the protocol buffer format (`.pbf`). You can incorporate these URLs into your mapping applications or access them directly in your browser.

## Conclusion
With the Tile Server up and running, you can now serve map tiles for your geographic data sources locally. Remember to allocate a sufficient amount of disk space and follow the provided instructions for a smooth setup process. If you encounter any issues, please consult the documentation or reach out to the project maintainers for assistance. Enjoy mapping with Tile Server!
