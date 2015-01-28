require 'spec_helper'
require_relative '../game_hash.rb'

describe 'hashketball' do

  describe '#game_hash' do
    it 'should return a hash' do
      expect(game_hash).to be_a(Hash)
    end
  end

  describe '#home_or_away' do
    it "should return the team's status" do
      expect(home_or_away("Brooklyn Nets")).to eq("home")
      expect(home_or_away("Charlotte Hornets")).to eq("away")
    end
  end

  describe '#team_colors' do
    it 'knows the Brooklyn Nets colors are Black and White' do
      expect(team_colors("Brooklyn Nets")).to eq(["Black","White"])
    end

    it 'knows the Charlotte Hornets colors are Turquoise and Purple' do
      expect(team_colors("Charlotte Hornets")).to eq(["Turquoise","Purple"])
    end
  end

  describe '#print_player_points' do
    it "puts each player's name and the number of points they scored" do
        expect($stdout).to receive(:puts).with("Brook Lopez: 17 points")
        expect($stdout).to receive(:puts).with("Alan Anderson: 22 points")
        expect($stdout).to receive(:puts).with("Reggie Evans: 12 points")
        expect($stdout).to receive(:puts).with("Mason Plumlee: 26 points")
        expect($stdout).to receive(:puts).with("Jason Terry: 19 points")
        print_player_points("Brooklyn Nets")
    end
  end

  describe '#player_stats' do
    let(:jeff_stats) {
      {
        :name => "Jeff Adrien",
        :number => 4,
        :shoe => 18,
        :points => 10,
        :rebounds => 1,
        :assists => 1,
        :steals => 2,
        :blocks => 7,
        :slam_dunks => 2
       }
    }
    let(:bismak_stats) {
       {
        :name => "Bismak Biyombo",
        :number => 0,
        :shoe => 16,
        :points => 12,
        :rebounds => 4,
        :assists => 7,
        :steals => 7,
        :blocks => 15,
        :slam_dunks => 10
       }
    }
    let(:desagna_stats) {
      {
        :name => "DeSagna Diop",
        :number => 2,
        :shoe => 14,
        :points => 24,
        :rebounds => 12,
        :assists => 12,
        :steals => 4,
        :blocks => 5,
        :slam_dunks => 5
       }
    }
    let(:ben_stats) {
       {
        :name => "Ben Gordon",
        :number => 8,
        :shoe => 15,
        :points => 33,
        :rebounds => 3,
        :assists => 2,
        :steals => 1,
        :blocks => 1,
        :slam_dunks => 0
       }
    }
    let(:brendan_stats) {
     {:name => "Brendan Haywood",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 22,
      :blocks => 5,
      :slam_dunks => 12
     }
    }         
    let(:alan_stats) {
      {
        :name => "Alan Anderson",
        :number => 0,
        :shoe => 16,
        :points => 22,
        :rebounds => 12,
        :assists => 12,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 1
       }
    }
    let(:reggie_stats) {
     {
      :name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
     }
    }
    let(:brook_stats) {
      {
        :name => "Brook Lopez",
        :number => 11,
        :shoe => 17,
        :points => 17,
        :rebounds => 19,
        :assists => 10,
        :steals => 3,
        :blocks => 1,
        :slam_dunks => 15
       }
    }
    let(:mason_stats) {
     {
      :name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 12,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
     }
    }
    let(:jason_stats) {
      {
        :name => "Jason Terry",
        :number => 31,
        :shoe => 15,
        :points => 19,
        :rebounds => 2,
        :assists => 2,
        :steals => 4,
        :blocks => 11,
        :slam_dunks => 1
      }
    }
    
    it 'returns all stats for a given player' do
      expect(player_stats("Charlotte Hornets", "Jeff Adrien")).to eq(jeff_stats)
      expect(player_stats("Charlotte Hornets", "Bismak Biyombo")).to eq(bismak_stats)
      expect(player_stats("Charlotte Hornets", "DeSagna Diop")).to eq(desagna_stats)
      expect(player_stats("Charlotte Hornets", "Ben Gordon")).to eq(ben_stats)
      expect(player_stats("Charlotte Hornets", "Brendan Haywood")).to eq(brendan_stats)
      expect(player_stats("Brooklyn Nets", "Alan Anderson")).to eq(alan_stats)
      expect(player_stats("Brooklyn Nets", "Reggie Evans")).to eq(reggie_stats)
      expect(player_stats("Brooklyn Nets", "Brook Lopez")).to eq(brook_stats)
      expect(player_stats("Brooklyn Nets", "Mason Plumlee")).to eq(mason_stats)
      expect(player_stats("Brooklyn Nets", "Jason Terry")).to eq(jason_stats)
    end
  end

  describe '#shoe_size' do
    it 'knows the shoe size of each player' do
      expect(shoe_size("Charlotte Hornets", "Jeff Adrien")).to eq(18)
      expect(shoe_size("Charlotte Hornets", "Bismak Biyombo")).to eq(16)
      expect(shoe_size("Charlotte Hornets", "DeSagna Diop")).to eq(14)
      expect(shoe_size("Charlotte Hornets", "Ben Gordon")).to eq(15)
      expect(shoe_size("Charlotte Hornets", "Brendan Haywood")).to eq(15)
      expect(shoe_size("Brooklyn Nets", "Alan Anderson")).to eq(16)
      expect(shoe_size("Brooklyn Nets", "Reggie Evans")).to eq(14)
      expect(shoe_size("Brooklyn Nets", "Brook Lopez")).to eq(17)
      expect(shoe_size("Brooklyn Nets", "Mason Plumlee")).to eq(19)
      expect(shoe_size("Brooklyn Nets", "Jason Terry")).to eq(15)
    end
  end

  describe '#big_shoe_rebounds' do
    it 'returns 12 rebouds' do
      expect(big_shoe_rebounds).to eq(12)
    end
  end

  describe '#slam_dunks' do
    it 'knows the number of slam dunks for each player' do
      expect(slam_dunks("Jeff Adrien")).to eq(2)
      expect(slam_dunks("Bismak Biyombo")).to eq(10)
      expect(slam_dunks("DeSagna Diop")).to eq(5)
      expect(slam_dunks("Ben Gordon")).to eq(0)
      expect(slam_dunks("Brendan Haywood")).to eq(12)
      expect(slam_dunks("Alan Anderson")).to eq(1)
      expect(slam_dunks("Reggie Evans")).to eq(7)
      expect(slam_dunks("Brook Lopez")).to eq(15)
      expect(slam_dunks("Mason Plumlee")).to eq(5)
      expect(slam_dunks("Jason Terry")).to eq(1)
    end
  end

end

# If you'd like to work on the bonus, uncomment these tests.

# describe 'bonus' do

#   describe '#most_points_scored' do

#     it 'returns Ben Gordon' do
#       expect(most_points_scored).to eq("Ben Gordon")
#     end

#   end

#   describe '#winning_team' do

#     it 'returns the Brooklyn Nets' do
#       expect(winning_team).to eq("Brooklyn Nets")
#     end

#   end

#   describe '#player_with_longest_name' do

#     it 'returns Brendan Haywood' do
#       expect(player_with_longest_name).to eq("Brendan Haywood")
#     end

#   end

# end

# describe 'super bonus' do

#   describe '#long_name_steals_a_ton?' do

#     it 'returns true' do
#       expect(long_name_steals_a_ton?).to eq(true)
#     end

#   end

# end