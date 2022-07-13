
select
    video_games.publisher,
    COUNT(DISTINCT video_games.name) as number_of_games,
    ROUND(AVG(video_games.meta_score), 2) as avg_meta_score,
    ROUND(AVG(video_games.na_sales), 2) as avg_na_sales,
    ROUND(AVG(video_games.eu_sales), 2) as avg_eu_sales,
    ROUND(AVG(video_games.jp_sales), 2) as avg_jp_sales,
    ROUND(AVG(video_games.other_sales), 2) as avg_other_sales,
    ROUND(AVG(video_games.global_sales), 2) as avg_global_sales
from {{ ref('video_games') }}
group by video_games.publisher
   
