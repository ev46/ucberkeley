class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_game_winner(game)
    raise WrongNumberOfPlayersError unless game.length == 2
    winner = []
    combination = "#{game[0][1]}#{game[1][1]}".upcase

    #puts combination
    
    case combination
        when "PP"
            winner = game[0]
        when "PR"
            winner = game[0]
        when "PS"
            winner = game[1]
        when "RR"
            winner = game[0]
        when "RP"
            winner = game[1]
        when "RS"
            winner = game[0]
        when "SS"
            winner = game[0]
        when "SR"
            winner = game[1]
        when "SP"
            winner = game[0]
        else
            raise NoSuchStrategyError
        end
    
    winner

end

def rps_tournament_winner(players)
  if players[0][1].class == String
    rps_game_winner players
else
    one = rps_tournament_winner players[0]
    two = rps_tournament_winner players[1]
    rps_tournament_winner([one,two])
end

end



    
#needs to be Dorrie S
data2 = [[[[[["Erna", "S"], ["Alma", "S"]], [["Freda", "R"], ["Orsola", "R"]]], [[["Michaella", "P"], ["Evania", "P"]], [["Gwyn", "P"], ["Donna", "P"]]]], [[[["Ann", "P"], ["Kaylee", "P"]], [["Tamiko", "R"], ["Rosamund", "S"]]], [[["Carma", "P"], ["Dorrie", "S"]], [["Gelya", "R"], ["Cathi", "P"]]]]], [[[[["Germana", "R"], ["Happy", "P"]], [["Marin", "S"], ["Chantal", "S"]]], [[["Kylie", "S"], ["Clary", "S"]], [["Sisile", "P"], ["Stephani", "R"]]]], [[[["Monique", "R"], ["Sybila", "R"]], [["Mufi", "S"], ["Annis", "P"]]], [[["Danila", "P"], ["Ysabel", "R"]], [["Elonore", "P"], ["Corabella", "P"]]]]]]
data = [[[[[[["Orel", "R"], ["Jaquenetta", "S"]], [["Chryste", "S"], ["Tessa", "P"]]], [[["Dory", "R"], ["Meggi", "R"]], [["Ibbie", "R"], ["Kitti", "R"]]]], [[[["Bernette", "S"], ["Michaela", "S"]], [["Dionis", "P"], ["Fayth", "P"]]], [[["Alix", "S"], ["Corie", "P"]], [["Paula", "R"], ["Oralee", "S"]]]]], [[[[["Hatti", "R"], ["Deanne", "S"]], [["Maddi", "P"], ["Wrennie", "S"]]], [[["Floris", "S"], ["Olympia", "R"]], [["Clair", "R"], ["Carmencita", "R"]]]], [[[["Idette", "S"], ["Miquela", "S"]], [["Dasie", "R"], ["Conchita", "R"]]], [[["Ursola", "S"], ["Kathrine", "P"]], [["Fancy", "R"], ["Kacie", "S"]]]]]], [[[[[["Alameda", "S"], ["Zenia", "P"]], [["Margette", "S"], ["Briny", "S"]]], [[["Ermina", "R"], ["Glyn", "P"]], [["Aggie", "S"], ["Hulda", "R"]]]], [[[["Harriette", "S"], ["Gilli", "R"]], [["Caitlin", "S"], ["Ianthe", "R"]]], [[["Desiri", "R"], ["Maighdiln", "P"]], [["Ardella", "P"], ["Darbie", "R"]]]]], [[[[["Arlen", "R"], ["Nollie", "S"]], [["Lynda", "P"], ["Rosalind", "R"]]], [[["Teena", "P"], ["Mellisent", "S"]], [["Jessi", "P"], ["Wandis", "P"]]]], [[[["Jobina", "S"], ["Debi", "P"]], [["Jillane", "S"], ["Page", "P"]]], [[["Melony", "R"], ["Pearla", "P"]], [["Ardra", "R"], ["Taffy", "R"]]]]]]]
#data_1 = [[[[[["Constantine", "S"], ["Ashley", "R"]], [["Laure", "P"], ["Yolande", "P"]]], [[["Camile", "R"], ["Shalne", "P"]], [["Maureen", "P"], ["Gillie", "P"]]]], [[[["Brinn", "R"], ["Junette", "P"]], [["Tildie", "P"], ["Shirline", "S"]]], [[["Briney", "S"], ["Kathryn", "R"]], [["Loren", "P"], ["Mersey", "S"]]]]], [[[[["Marie-ann", "S"], ["Leanor", "P"]], [["Joleen", "P"], ["Jada", "R"]]], [[["Gerianna", "R"], ["Merla", "P"]], [["Ramona", "S"], ["Merrilee", "S"]]]], [[[["Junie", "R"], ["Rebecca", "R"]], [["Rici", "S"], ["Olly", "S"]]], [[["Rycca", "R"], ["Tanitansy", "S"]], [["Valaree", "P"], ["Rhonda", "P"]]]]]]



