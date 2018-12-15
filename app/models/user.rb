class User < ApplicationRecord
  has_many :monsters
  belongs_to :main_monster, class_name: "Monster", required: false
  has_many :win_battles, class_name: "::Battle", foreign_key: "winner_id", dependent: :destroy
  has_many :lose_battles, class_name: "::Battle", foreign_key: "loser_id", dependent: :destroy
end
