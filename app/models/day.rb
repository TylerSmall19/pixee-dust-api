class Day < ApplicationRecord
  has_many :thoughts
  validates :thoughts, presence: true
  before_save :expire_entry

  def expired?
    expiration_date < Time.now.utc
  end

  # OVERRIDE the thoughts setter method to allow array input
  def thoughts=(thoughts_array)
    thoughts_array.each do |text|
      self.thoughts.new(
        message: text
      )
    end
  end

  private
  def expire_entry
    self.expiration_date = Time.now.utc + 1.day
  end
end
