SELECT users.full_name AS "Nome", COUNT(history_play_songs.song_id) AS "Quantidade de músicas reproduzidas"
FROM users
    JOIN history_play_songs ON users.id = history_play_songs.user_id
GROUP BY
    users.id
ORDER BY COUNT(history_play_songs.song_id) DESC, users.full_name ASC;