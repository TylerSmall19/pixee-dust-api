class Thought < ApplicationRecord
  validates :message, presence: true
end
