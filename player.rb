class Player
    attr_reader :name, :game, :org, :year_signed
    @@all = []
    
    def initialize(name, game, org, year_signed = 2020)
        @name = name
        @game = game
        @org = org
        @year_signed = year_signed
        @@all << self
    end
    def self.all
        @@all
    end

    def switch_games(new_game)
        puts "I am announcing that I am switching main games from #{self.game} to #{new_game}."
        @game = new_game
    end
    def sign_contract(org, year_signed = 2020)
        if !self.org
            @org = org
            @year_signed = year_signed
            puts "Thank you for the sponsorship #{self.org.name}! I am so glad to join this #{years_missed} year(s) old organization."
        else
            puts "You must terminate your current contract with an organization before signing a new one."
        end
    end
    def terminate_contract
        if self.org
            puts "I am thankful for the #{years_at_org} year(s) of sponsorship, but I have decided to part ways."
            @org = nil
            @year_signed = nil
        else
            puts "You have to have a contract to terminate one!"
        end
    end
    def years_at_org
        Time.now.year - @year_signed
    end
    def years_missed
        @year_signed - self.org.year_est
    end
end