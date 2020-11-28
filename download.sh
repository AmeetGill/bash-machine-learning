#!bin/sh

FROM_YEAR=2017
TO_YEAR=2019

year=$FROM_YEAR

while [ $year -le $TO_YEAR ]
do
    echo Downloading data for year :- $year
    wget https://www1.ncdc.noaa.gov/pub/data/ghcn/daily/by_year/$year.csv.gz

    gzip -d $year.csv.gz

    year=$(($year+1))
done