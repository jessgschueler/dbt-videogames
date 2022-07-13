with game_sales as (
    select
        CONCAT(game_sales.Name, '_', game_sales.Platform) as game_id,
        game_sales.Rank as rank,
        game_sales.Name	as name,
        game_sales.Platform	as platform,
        game_sales.Year as year,		
        game_sales.Genre as genre,
        game_sales.Publisher as publisher,
        game_sales.NA_Sales	as na_sales,
        game_sales.EU_Sales as eu_sales,
        game_sales.JP_Sales as jp_sales,
        game_sales.Other_Sales	as other_sales,
        game_sales.Global_Sales as global_sales

    from deb-01-346001.video_games.game_sales
),

game_scores as (
    select 
        CONCAT(metacritic_scores.name, '_', TRIM(metacritic_scores.platform)) as game_id,
        metacritic_scores.release_date,		
        metacritic_scores.summary,
        metacritic_scores.meta_score,
        metacritic_scores.user_review

    from deb-01-346001.video_games.metacritic_scores
),

video_games as (
    select * from game_scores

    inner join game_sales using (game_id)
)

select * FROM video_games