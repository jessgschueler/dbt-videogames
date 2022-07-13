select 
    CONCAT(metacritic_scores.name, '_', TRIM(metacritic_scores.platform)) as game_id,
    metacritic_scores.release_date,		
    metacritic_scores.summary,
    metacritic_scores.meta_score,
    metacritic_scores.user_review

from deb-01-346001.video_games.metacritic_scores
