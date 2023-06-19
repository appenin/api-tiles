#!/bin/bash

FLOOD_RUNOFF_TILES_URL='https://www.data.gouv.fr/fr/datasets/r/e68d54cf-7543-46de-8d36-bb0a17163c05'
FLOOD_RUNOFF_TILES_FILE_ZIP='./mbtiles/flood-runoff.mbtiles.7z'
FLOOD_RUNOFF_TILES_FILE='./mbtiles/flood_runoff.mbtiles'

if [ ! -f ${FLOOD_RUNOFF_TILES_FILE} ]; then
    echo "Downloading ${FLOOD_RUNOFF_TILES_FILE}..."
    curl -o "${FLOOD_RUNOFF_TILES_FILE_ZIP}" -L "${FLOOD_RUNOFF_TILES_URL}"
    7z x "${FLOOD_RUNOFF_TILES_FILE_ZIP}" -o./mbtiles
    rm "${FLOOD_RUNOFF_TILES_FILE_ZIP}"
    echo "Downloaded ${FLOOD_RUNOFF_TILES_FILE}"
fi

MARINE_SUBMERSION_URL='https://www.data.gouv.fr/fr/datasets/r/1baf8e76-832c-4632-9d08-12eae4b45a83'
MARINE_SUBMERSION_FILE_ZIP='./mbtiles/marine-submersion.mbtiles.7z'
MARINE_SUBMERSION_FILE='./mbtiles/marine_submersion.mbtiles'

if [ ! -f ${MARINE_SUBMERSION_FILE} ]; then
    echo "Downloading ${MARINE_SUBMERSION_FILE}..."
    curl -o "${MARINE_SUBMERSION_FILE_ZIP}" -L "${MARINE_SUBMERSION_URL}"
    7z x "${MARINE_SUBMERSION_FILE_ZIP}" -o./mbtiles
    rm "${MARINE_SUBMERSION_FILE_ZIP}"
    echo "Downloaded ${MARINE_SUBMERSION_FILE}"
fi


FILOSOFI_RESTRUCTED_TILES_URL='https://www.data.gouv.fr/fr/datasets/r/107b284d-135c-4da4-a2f8-cae25a1197a6'
FILOSOFI_RESTRUCTED_TILES_FILE_ZIP='./mbtiles/filosofi-restructed.mbtiles.7z'
FILOSOFI_RESTRUCTED_FILE='./mbtiles/tiles_filosofi_appenin.mbtiles'

if [ ! -f ${FILOSOFI_RESTRUCTED_FILE} ]; then
    echo "Downloading ${FILOSOFI_RESTRUCTED_FILE}..."
    curl -o "${FILOSOFI_RESTRUCTED_TILES_FILE_ZIP}" -L "${FILOSOFI_RESTRUCTED_TILES_URL}"
    7z x "${FILOSOFI_RESTRUCTED_TILES_FILE_ZIP}" -o./mbtiles
    rm "${FILOSOFI_RESTRUCTED_TILES_FILE_ZIP}"
    echo "Downloaded ${FILOSOFI_RESTRUCTED_FILE}"
fi

IRIS_GE_TILES_URL='https://www.data.gouv.fr/fr/datasets/r/fd8afa8b-722d-4ace-b0fc-8ddeebc61717'
IRIS_GE_TILES_FILE_ZIP='./mbtiles/iris-ge.mbtiles.7z'
IRIS_GE_FILE='./mbtiles/iris_ge.mbtiles'

if [ ! -f ${IRIS_GE_FILE} ]; then
    echo "Downloading ${IRIS_GE_FILE}..."
    curl -o "${IRIS_GE_TILES_FILE_ZIP}" -L "${IRIS_GE_TILES_URL}"
    7z x "${IRIS_GE_TILES_FILE_ZIP}" -o./mbtiles
    rm "${IRIS_GE_TILES_FILE_ZIP}"
    echo "Downloaded ${IRIS_GE_FILE}"
fi

RGA_TILES_URL='https://www.data.gouv.fr/fr/datasets/r/c944be1e-06d6-46be-bf7d-9f9ad2b8ced9'
RGA_TILES_FILE_ZIP='./mbtiles/expoargile-fxx-4326.mbtiles.7z'
RGA_FILE='./mbtiles/ExpoArgile_Fxx_4326.mbtiles'

if [ ! -f ${RGA_FILE} ]; then
    echo "Downloading ${RGA_FILE}..."
    curl -o "${RGA_TILES_FILE_ZIP}" -L "${RGA_TILES_URL}"
    7z x "${RGA_TILES_FILE_ZIP}" -o./mbtiles
    rm "${RGA_TILES_FILE_ZIP}"
    echo "Downloaded ${RGA_FILE}"
fi
