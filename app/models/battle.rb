class Battle < ApplicationRecord
  belongs_to :winner, class_name: "::User", foreign_key: "winner_id"
  belongs_to :loser, class_name: "::User", foreign_key: "loser_id"
end
