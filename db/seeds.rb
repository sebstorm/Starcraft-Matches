# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Player.create(:name => "Grace")
Player.create(:name => "Gulliermo")
Player.create(:name => "Michael")
Player.create(:name => "Eddie")
Player.create(:name => "Josh")
Player.create(:name => "Nizar")


Match.create(:winner_faction => "Terrans", :loser_faction => "Zerg", :duration => 3, :date => DateTime.new, :winner_id => 1, :loser_id => 2)
Match.create(:winner_faction => "Terrans", :loser_faction => "Protoss", :duration => 6, :date => DateTime.new, :winner_id => 2, :loser_id => 3)
Match.create(:winner_faction => "Zerg", :loser_faction => "Terrans", :duration => 2, :date => DateTime.new, :winner_id => 3,:loser_id => 4)
Match.create(:winner_faction => "Terrans", :loser_faction => "Protoss", :duration => 7, :date => DateTime.new, :winner_id => 4, :loser_id => 5)
Match.create(:winner_faction => "Zerg", :loser_faction => "Terrans", :duration => 4, :date => DateTime.new, :winner_id => 5, :loser_id => 6)
Match.create(:winner_faction => "Protoss", :loser_faction => "Zerg", :duration => 3, :date => DateTime.new, :winner_id => 6, :loser_id => 1)
Match.create(:winner_faction => "Protoss", :loser_faction => "Terrans", :duration => 6, :date => DateTime.new, :winner_id => 4, :loser_id => 2)
