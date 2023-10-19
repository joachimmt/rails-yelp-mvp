class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, presence: true, inclusion: {in: ['chinese', 'italian', 'japanese', 'french', 'belgian']}
  validates :phone_number, presence: true

  validate :exclude_inappropriate_words

  def exclude_inappropriate_words
    if category == "neptunian"
      errors.add(:category, "contient une catégorie inappropriée")
    end
  end
end
