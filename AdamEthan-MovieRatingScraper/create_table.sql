-- write your table creation sql here!
CREATE TABLE movies_table(
    index int, 
    title varchar(255), 
    year_ int, 
    critic_score int, 
    people_score int, 
    total_reviews int, 
    total_ratings varchar(255), 
    type varchar(255), 
    rating varchar(255), 
    genre varchar(255), 
    director varchar(255), 
    producer varchar(255), 
    box_office_ varchar(255), 
    runtime varchar(255), 
    PRIMARY KEY(index) 
);