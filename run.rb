require 'pry'
require_relative './player.rb'
require_relative './org.rb'

clg = Org.new("Counter Logic Gaming", 2010)
cloud9 = Org.new("Cloud9", 2013)
beastcoast = Org.new("beastcoast", 2017)
tempostorm = Org.new("Tempo Storm", 2014)

pewpewu = clg.new_player("Kevin Toy", "Melee", 2015)
sfat = clg.new_player("Zachary Cordoni", "Melee", 2015)
gsmVoiD = clg.new_player("James Makekau-Tyson", "Ultimate", 2016) 

mang0 = cloud9.new_player("Joseph Marquez", "Melee", 2014)
skadoodle = cloud9.new_player("Tyler Latham", "Valorant", 2015)

reynad = tempostorm.new_player("Andrey Yanyuk", "Hearthstone", 2014)
axe = tempostorm.new_player("Jeffrey Williamson", "Melee", 2016)
s2j = tempostorm.new_player("Johnny Kim", "Melee", 2016)

mikehaze = beastcoast.new_player("Michael Pulido", "Ultimate", 2017)

puts cloud9.games

mikehaze.switch_games("Melee")
puts beastcoast.game?("Ultimate")
mikehaze.terminate_contract
mikehaze.terminate_contract

beastcoast.players.each do |player|
    puts player.name
end

tempostorm.players.each do |player|
    puts player.name
end

s2j.terminate_contract
s2j.sign_contract(beastcoast, 2019)

beastcoast.players.each do |player|
    puts player.name
end

tempostorm.players.each do |player|
    puts player.name
end


binding.pry