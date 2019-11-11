

class Deck

    

    def initialize
                
                def make_suit(suit)
                    rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
                i = 0
                entire_suit = []
                13.times do
                    iterating_ranks = rank[i]
                    entire_suit << Card.new(iterating_ranks, suit)
                    i +=1
                    end
                    entire_suit
                end

            def make_deck
                h = make_suit("Hearts")
                s = make_suit("Spades")
                d = make_suit("Diamonds")
                c = make_suit("Clubs")
                deck = h.concat(s,d,c)
                deck
            end
            @cards = make_deck
        end

    def cards
        @cards
    end

    def choose_card
        chosen_card = @cards.sample
        @cards.delete_if do |n|
            n == chosen_card
        end
        chosen_card
    end



end

class Card

    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end



end

# deck = Deck.new

# p deck.cards

# queen_of_hearts = Card.new("Q", "Hearts")
# p queen_of_hearts.rank










