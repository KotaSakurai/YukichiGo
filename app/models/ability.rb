class Ability < ApplicationRecord
  belongs_to :monster, inverse_of: :ability

  before_save :set_type

  enum class_type: { attack: 0, defense: 1, throw: 2 }

  private

    def set_type
      self.class_type ||= rand(3)
    end
end
