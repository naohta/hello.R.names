hello.R.names
=============

Concatenate text files which are provided by US Social Security Administration.


Original Data
-------------

I downdloaded a zip file from the US Social Security Administration.
I saved the zip file as `original_data/names.zip`.

- http://www.ssa.gov/OACT/babynames/names.zip

I heard about the data, on this site.

- https://cloud.google.com/bigquery/web-ui-quickstart

    > BigQuery Web UI Quickstart -> Load data into a table ->
    Download custom data ->  Download this zip file (approximately 7 MB).
    The file contains data about popular baby names and is provided by
    the US Social Security Administration. Unzip the file onto your hard drive.


Preparing Data
--------------

Unzip `original_data/names.zip`.
Then there is `original_data/names/` folder and a lot of text files
like `original_data/names/yob1880.txt`.


How to use
----------

1. Start R by `r` on terminal.
2. `source("concatenate_files.R")` on R Env.
3. So R makes a `cocatenaed.names.csv` file on the app's root directory.
