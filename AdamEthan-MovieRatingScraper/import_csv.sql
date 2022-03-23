-- write your COPY statement to import a csv here
\copy movies_table from 'movies1.csv' with(format csv, header);
    