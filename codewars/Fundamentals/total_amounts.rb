#* Os resultados dos jogos da nossa equipe são registrados em uma coleção de strings
#* Cada partida é representada por uma string no formato "x:y",
#* onde xestá a pontuação do nosso time e yé a pontuação do nosso adversário.


games_resume = ['1:0','2:0','3:0','4:0','2:1','3:1','4:1','3:2','4:2','4:3']


def points(games)
    my_team_points = 0

    games.each do |game|
        scores = game.split(":").map(&:to_i)
        my_score = scores[0]
        opponent_score = scores[1]

        if my_score > opponent_score
            my_team_points += 3
        elsif my_score == opponent_score
            my_team_points += 1
        end
    end

    return my_team_points
end

puts points(games_resume)