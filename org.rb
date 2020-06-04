class Org
    attr_reader :name, :year_est
    @@all = []
    
    def initialize(name, year_est)
        @name = name
        @year_est = year_est
        @@all << self
    end
    def self.all
        @@all
    end

    def new_player(name, game, year_signed=2020)
        Player.new(name, game, self, year_signed)
    end

    def players
        Player.all.select do |player|
            player.org == self
        end
    end

    def games
        players.map do |player|
            player.game
        end
    end

    def game?(game)
        games.any?(game)
    end
    def player?(player)
        players.any?(player)
    end
end