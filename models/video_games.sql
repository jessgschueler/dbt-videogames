with game_sales as (
    select * from deb-01-346001.video_games.game_sales
)

game_scores as (
    select * from deb-01-346001.video_games.metacritic_scores
)

video games as (
    select
        game_scores.name as Name,
        game_scores.release_date,
        game_scores.summary,
        game_scores.meta_score,
        game_scores.usr_review
    from game_scores

    inner join game_sales using (name)
)

select * from final