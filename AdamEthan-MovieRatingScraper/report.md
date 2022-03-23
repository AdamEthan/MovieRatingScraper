# Overview
1. Name / Title: Rotten Tomatoes Top Movies 
2. Link to Data: https://zenodo.org/record/4682107#.YVtcQZrMJPZ 
3. Source / Origin: 
    * Author or Creator: Francisco Nunez
    * Publication Date: April 12th, 2021
    * Publisher: Zenodo
    * Version or Data Accessed: 1
4. License: Creative Commons Attribute 4.0 International 
5. What is the dataset?: This is a simple dataset with the highest rated movies with their box office revenue, genre, critic scores,  audience scores, and other statistics listed. \
Format: .csv \
Size: 1.8 MB \
Number of Records: 900 \
Columns:
* title:                     object
* year:                       int64
* critic_score:             int64
* people_score:               int64
* total_reviews:              int64
* total_ratings:             object
* type:                      object
* rating:                    object
* genre:                     object
* director:                  object
* producer:                  object
* box_office_(gross_usa):    object
* runtime:                   object
Types: string, int64 

# Table Design
For the columns critic_score, people_score, total_reviews, and year I used int data type. For the other columns i used varchar and limited the characters. I had already filled null values when converting the dataframe to a csv. 


# Import
The import was a success


# Database Information
1. Databases: 4 (homework05, postgres, template0, template1)
2. Tables in homework05: 1 table (movies_table) 
3. Info on columns, types, etc. 
```
    Column     |          Type          |  Nullable | \
 index         | integer                |  not null | \
 title         | character varying(255) |  not null | \
 year_         | integer                |  not null | \
 critic_score  | integer                |  not null | \
 people_score  | integer                |            not null | \
 total_reviews | integer                |            not null | \
 total_ratings | character varying(255) |            not null | \
 type          | character varying(255) |            not null | \
 rating        | character varying(255) |            not null | \
 genre         | character varying(255) |            not null | \
 director      | character varying(255) |            not null | \
 producer      | character varying(255) |            not null | \
 box_office_   | character varying(255) |            not null | \
 runtime       | character varying(255) |            not null | \
```
# Query Results
### 1. Number of rows: 1610 
### 2. Top 15 Rows: 
```
 Black Panther                     |           96 |           79 \
 Avengers: Endgame                 |           94 |           90\
 Mission: Impossible -- Fallout    |           97 |           88\
 Mad Max: Fury Road                |           97 |           86\
 Spider-Man: Into the Spider-Verse |           97 |           93\
 Wonder Woman                      |           93 |           83\
 Dunkirk                           |           92 |           81\
 Coco                              |           97 |           94\
 Thor: Ragnarok                    |           93 |           87\
 Logan                             |           93 |           90\
 Star Wars: The Last Jedi          |           90 |           42\
 Star Wars: The Force Awakens      |           93 |           86\
 The Adventures of Robin Hood      |          100 |           89\
 King Kong                         |           98 |           86\
 Spider-Man: Far From Home         |           90 |           95\
 ```
### 3. Top 15 Rows sorting by critic score: \
```
 Toy Story                          |          100 |           92\
 Only Yesterday                     |          100 |           85\
 Stalker                            |          100 |           93\
 The Taking of Pelham One Two Three |          100 |           88\
 Henry V                            |          100 |           89\
 Pinocchio                          |          100 |           73\
 The Treasure of the Sierra Madre   |          100 |           93\
 Stagecoach                         |          100 |           86\
 Seven Samurai                      |          100 |           97\
 The Terminator                     |          100 |           89\
 Rio Bravo                          |          100 |           91\
 The Adventures of Robin Hood       |          100 |           89\
 Paddington 2                       |          100 |           88\
 Toy Story 2                        |          100 |           87\
 Grave of the Fireflies             |          100 |           95\
```
### 4. 
 Random column is empty with null values 
### 5.
 Random column is filled with 1's. 
### 6. Unique values from critic columns \
 critic_score: 
           87
           74
           29
           54
           71
            4
           34
           96
           70
           52
           80
           83
           63
           10
           90
           45
           86
           84
           92
           89
           93
           36
           69
           31
           50
           60
           14
           97
           66
           22
           59
           13
            2
           16
           62
           75
           98
           73
           44
           42
           99
           88
           82
           41
           43
           32
           53
          100
           15
           79
           12
           85
           72
           95
           78
           57
           61
           81
           77
           94
           30
           21
           49
           17
           33
           76
           64
           55
           56
           58
           91
### 7. Average of critic scores by genre:
```
         avg         |       type 
 77.1304347826086957 | Sports & Fitness \
 94.4000000000000000 | Action & Adventure\
 94.0100000000000000 | Science Fiction & Fantasy\
 93.6800000000000000 | Kids & Family\
 93.8200000000000000 | Animation\
 98.2600000000000000 | Documentary\
 95.8000000000000000 | Romance\
 97.7900000000000000 | Classics\
 96.3400000000000000 | Special Interest\
 95.9900000000000000 | Mystery & Suspense\
 97.6700000000000000 | Art House & International\
 95.9200000000000000 | Drama\
 92.8800000000000000 | Horror\
 76.1578947368421053 | Television\
 94.7400000000000000 | Musical & Performing Arts\
 95.8500000000000000 | Comedy\
 69.7500000000000000 | Western\
```
### 8. Average critic scores by genre with scores above 95/100:
```
 avg         |           type \
 98.2600000000000000 | Documentary \
 95.8000000000000000 | Romance \
 97.7900000000000000 | Classics \
 96.3400000000000000 | Special Interest\
 95.9900000000000000 | Mystery & Suspense\
 97.6700000000000000 | Art House & International\
 95.9200000000000000 | Drama\
 95.8500000000000000 | Comedy\
```
### 9. Average people scores by genre:
```
          avg        |       type 
 78.3188405797101449 | Sports & Fitness \
 87.0300000000000000 | Action & Adventure \
 85.8000000000000000 | Science Fiction & Fantasy \
 82.2400000000000000 | Kids & Family \
 83.4900000000000000 | Animation \
 83.8900000000000000 | Documentary \
 84.2100000000000000 | Romance \
 90.0900000000000000 | Classics\
 84.0600000000000000 | Special Interest\
 86.3600000000000000 | Mystery & Suspense\
 87.6100000000000000 | Art House & International\
 86.2400000000000000 | Drama\
 77.5800000000000000 | Horror\
 71.0701754385964912 | Television\
 85.7600000000000000 | Musical & Performing Arts\
 85.1600000000000000 | Comedy\
 68.9523809523809524 | Western\
```
### 10. Average people scores by genre with scores above 95/100:
```
         avg         |           type
---------------------+---------------------------
 87.0300000000000000 | Action & Adventure
 85.8000000000000000 | Science Fiction & Fantasy
 90.0900000000000000 | Classics
 86.3600000000000000 | Mystery & Suspense
 87.6100000000000000 | Art House & International
 86.2400000000000000 | Drama
 85.7600000000000000 | Musical & Performing Arts
 85.1600000000000000 | Comedy
 ```
### 11. Directors with most movies on the list:
```
avg         |           type
---------------------+---------------------------
   31 | Alfred Hitchcock
    15 | Howard Hawks
    13 | Akira Kurosawa
    12 | James Whale
    12 | Brad Bird
    11 | Steven Spielberg
    10 | Billy Wilder
    10 | John Ford
    10 | Frank Capra
     9 | Anthony Russo, Joe Russo
     9 | Roman Polanski
     9 | John Huston
     8 | Denis Villeneuve
     8 | Steve James
     8 | Martin Scorsese
     8 | Stanley Kubrick
     8 | Hayao Miyazaki
     8 | Rian Johnson
     8 | Fritz Lang
     7 | Henry Selick
     7 | Orson Welles
     7 | Wes Anderson
     7 | Robert Zemeckis
     7 | Andrew Stanton
     7 | Ron Clements, John Musker
```
### 12. Directors with highest critic ratings on the list:
```
        avg          |                                                                     director                    
----------------------+---------------------------------------------------------------------------------------------------------------------
  96.0000000000000000 | Alberto Lattuada
  90.0000000000000000 | Robert Eggers
 100.0000000000000000 | Stuart Rosenberg
  92.0000000000000000 |
  96.0000000000000000 | Olivia Wilde
  93.0000000000000000 | Doug Pray, Bonner Bellew
  98.0000000000000000 | Wolfgang Reitherman, Hamilton S. Luske, Clyde Geronimi
  95.0000000000000000 | Paul Feig
  96.0000000000000000 | Ciro Guerra
  87.0000000000000000 | Jennifer Yuh Nelson, Alessandro Carloni
  98.0000000000000000 | Eric Rohmer
  98.0000000000000000 | B├⌐la Tarr
  95.0000000000000000 | Armando Iannucci
  99.0000000000000000 | Agn├¿s Varda, JR
  55.0000000000000000 | James Gartner
 100.0000000000000000 | Juzo Itami
  99.0000000000000000 | Tomm Moore
  94.0000000000000000 | Nicolas Roeg
  96.0000000000000000 | Dan Lindsay, T.J. Martin
  66.0000000000000000 | David Mich├┤d
  97.0000000000000000 | Lucien Castaing-Taylor, Illisa Barbash
  99.0000000000000000 | Richard Press
  96.0000000000000000 | Harold Ramis
  99.0000000000000000 | Carol Reed
  98.0000000000000000 | Unknown Director
```