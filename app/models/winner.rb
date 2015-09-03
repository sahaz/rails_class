class Winner < ActiveRecord::Base
  def self.who_is_winner?(winners)
        current_winner = winners.first
        winners.each do |winner|
            if winner.vote > current_winner.vote
                current_winner = winner
            end
      end
      current_winner
  end
  
  def self.vote_diff?(winners)
    winners_hash = {}
    winners.each do |winner|
      winners_hash["#{winner.name}"] = winner.vote
    end
    
    winners_hash.values.sort[-1] - winners_hash.values.sort[-2]

  end

end