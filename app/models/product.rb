class Product < ApplicationRecord
  belongs_to :category

  validates :price, presence: true

  scope :all_premium, -> {where(premium: true)}

  scope :last_n, ->(cant) {limit(cant)}

  # before_save :premium_default

  # def premium_default
  #   if self.premium.nil?
  #     self.premium = false
  #   end
  # end
end
