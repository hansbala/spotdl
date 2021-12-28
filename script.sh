#!/usr/bin/env bash

DATE=27122021
OUTPUT_PATH=~/Music/$DATE_spotify_dump
PLAYLIST_FOLDER_NAMES=("PB_Instrumental" "PB_80sMisc" "PB_Hindi" "PB_MLTR" "PB_Current" "PB_80s" "HB_Chill" "HB_DriveFast" "DJ_House" "SP_Punjabi")


function download_playlist {
    spotdl $1 --output $2 --output-format mp3
}

# make directories if they do not exist
for DIR in "${PLAYLIST_FOLDER_NAMES[@]}"; do
	PLAYLIST_DIR=$OUTPUT_PATH$DIR
	mkdir -p $PLAYLIST_DIR
done



# Pavan's playlists
# Instrumental
download_playlist https://open.spotify.com/playlist/1ntjuNcaAaEeAvpWLFTIu1?si=14d69e80b6894d3e $OUTPUT_PATH/PB_Instrumental 
# 80s - Misc
download_playlist https://open.spotify.com/playlist/5e3Vtlz5wss9iw1NUuhDBk?si=7b50870535c7458f $OUTPUT_PATH/PB_80sMisc
# Hindi
download_playlist https://open.spotify.com/playlist/4WsJk9lisfHDOmtDuRaxtN?si=2a91c60967804036 $OUTPUT_PATH/PB_Hindi
# MLTR
download_playlist https://open.spotify.com/playlist/5iPeFkO7DuCeKlzEEfrs4V?si=b37b689bb2744128 $OUTPUT_PATH/PB_MLTR
# Current
download_playlist https://open.spotify.com/playlist/63SEPrbTpOw1JDsSow5JJ9?si=86cb9ce3421a4233 $OUTPUT_PATH/PB_Current
# 80s
download_playlist https://open.spotify.com/playlist/7a6yT3O9Tt2JQ7qq2ORXzd?si=804cf5f2894b4f8c $OUTPUT_PATH/PB_80s
# DJ House Music
download_playlist https://open.spotify.com/playlist/5lnHbVTv47hPR6mzgmlMdH?si=4142fa3c1fe7448f $OUTPUT_PATH/DJ_House

# Hans' Playlists
# Chill/Relax
download_playlist https://open.spotify.com/playlist/0XvQaO1z4JRJenLISnmuTG?si=21bc6c55e1764cf0 $OUTPUT_PATH/HB_Chill
# Drive Fast
download_playlist https://open.spotify.com/playlist/7rZXbJxxeaqKyvS0VVNgne?si=8ba371d183ce4671 $OUTPUT_PATH/HB_DriveFast

# Enu's Playlists
# Spotify top 100 Punjabi
download_playlist https://open.spotify.com/playlist/37i9dQZF1DWXVJK4aT7pmk?si=5b320ceafc1144bc $OUTPUT_PATH/SP_Punjabi