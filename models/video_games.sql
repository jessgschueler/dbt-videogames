with game_sales as (
 select * from {{ ref('game_sales') }}
),

game_scores as (
     select * from {{ ref('game_scores') }}
),

video_games as (
    select * from game_scores

    inner join game_sales using (game_id)
)

select * FROM video_games