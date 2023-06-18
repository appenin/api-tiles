#!/bin/bash

FLOOD_RUNOFF_TILES_URL='https://www.data.gouv.fr/fr/datasets/r/e68d54cf-7543-46de-8d36-bb0a17163c05'
FLOOD_RUNOFF_TILES_FILE_ZIP='flood-runoff.mbtiles.7z'
FLOOD_RUNOFF_TILES_FILE='flood_runoff.mbtiles'

if [ ! -f ${FLOOD_RUNOFF_TILES_FILE} ]; then
    echo "Downloading ${FLOOD_RUNOFF_TILES_FILE}..."
    curl -o "${FLOOD_RUNOFF_TILES_FILE_ZIP}" -L "${FLOOD_RUNOFF_TILES_URL}"
    7z x "${FLOOD_RUNOFF_TILES_FILE_ZIP}"
    rm "${FLOOD_RUNOFF_TILES_FILE_ZIP}"
    echo "Downloaded ${FLOOD_RUNOFF_TILES_FILE}"
fi

MARINE_SUBMERSION_URL='https://www.data.gouv.fr/fr/datasets/r/1baf8e76-832c-4632-9d08-12eae4b45a83'
MARINE_SUBMERSION_FILE_ZIP='marine-submersion.mbtiles.7z'
MARINE_SUBMERSION_FILE='marine_submersion.mbtiles'

if [ ! -f ${MARINE_SUBMERSION_FILE} ]; then
    echo "Downloading ${MARINE_SUBMERSION_FILE}..."
    curl -o "${MARINE_SUBMERSION_FILE_ZIP}" -L "${MARINE_SUBMERSION_URL}"
    7z x "${MARINE_SUBMERSION_FILE_ZIP}"
    rm "${MARINE_SUBMERSION_FILE_ZIP}"
    echo "Downloaded ${MARINE_SUBMERSION_FILE}"
fi


FILOSOFI_RESTRUCTED_TILES_URL='https://www.data.gouv.fr/fr/datasets/r/107b284d-135c-4da4-a2f8-cae25a1197a6'
FILOSOFI_RESTRUCTED_TILES_FILE_ZIP='filosofi-restructed.mbtiles.7z'
FILOSOFI_RESTRUCTED_FILE='filosofi_restructed.mbtiles'

if [ ! -f ${FILOSOFI_RESTRUCTED_FILE} ]; then
    echo "Downloading ${FILOSOFI_RESTRUCTED_FILE}..."
    curl -o "${FILOSOFI_RESTRUCTED_TILES_FILE_ZIP}" -L "${FILOSOFI_RESTRUCTED_TILES_URL}"
    7z x "${FILOSOFI_RESTRUCTED_TILES_FILE_ZIP}"
    rm "${FILOSOFI_RESTRUCTED_TILES_FILE_ZIP}"
    echo "Downloaded ${FILOSOFI_RESTRUCTED_FILE}"
fi

IRIS_GE_TILES_URL='https://www.data.gouv.fr/fr/datasets/r/fd8afa8b-722d-4ace-b0fc-8ddeebc61717'
IRIS_GE_TILES_FILE_ZIP='iris-ge.mbtiles.7z'
IRIS_GE_FILE='iris_ge.mbtiles'

if [ ! -f ${IRIS_GE_FILE} ]; then
    echo "Downloading ${IRIS_GE_FILE}..."
    curl -o "${IRIS_GE_TILES_FILE_ZIP}" -L "${IRIS_GE_TILES_URL}"
    7z x "${IRIS_GE_TILES_FILE_ZIP}"
    rm "${IRIS_GE_TILES_FILE_ZIP}"
    echo "Downloaded ${IRIS_GE_FILE}"
fi

RGA_TILES_URL='https://www.data.gouv.fr/fr/datasets/r/9bb1f1eb-101d-4890-a980-dce4cac285a3'
RGA_TILES_FILE_ZIP='risk-rga-2013-fr.mbtiles.7z'
RGA_FILE='risk_rga_2013_fr.mbtiles'

if [ ! -f ${RGA_FILE} ]; then
    echo "Downloading ${RGA_FILE}..."
    curl -o "${RGA_TILES_FILE_ZIP}" -L "${RGA_TILES_URL}"
    7z x "${RGA_TILES_FILE_ZIP}"
    rm "${RGA_TILES_FILE_ZIP}"
    echo "Downloaded ${RGA_FILE}"
fi