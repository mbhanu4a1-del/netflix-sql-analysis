# Netflix Data Analysis using SQL

## Project Overview
This project analyzes Netflix movies and TV shows dataset using SQL to discover insights about content trends.

## Dataset
The dataset contains information about Netflix titles including:
- Type (Movie / TV Show)
- Title
- Country
- Release Year
- Rating
- Genre

## Business Questions
1. How many Movies vs TV Shows are available?
2. Which countries produce the most Netflix content?
3. How has Netflix content grown over the years?
4. What are the most common content ratings?

## SQL Skills Used
- SELECT
- GROUP BY
- ORDER BY
- COUNT
- Filtering

## Example Query

SELECT type, COUNT(*)
FROM netflix
GROUP BY type;

## Tools Used
SQL  
Data Analysis
