require 'pry'

class Deck
	attr_accessor :cards, :ranks, :suits

	def initialize
		@cards = []
		@ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
		@suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
		@ranks.each do |rank|
			@suits.each do |suit|
				@cards << Card.new(suit, rank)
			end
		end
	end

	def choose_card
		drawn_card = self.cards.sample
		self.cards.delete(drawn_card)
	end
end

class Card
	attr_reader :deck, :rank, :suit
	@@all = []
	def initialize(suit, rank)
		@rank = rank
		@suit = suit
		@@all << self
	end

	def self.all
		@@all
	end
end

deck = Deck.new
# p deck.cards

# binding.pry
# 0
