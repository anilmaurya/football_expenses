class UserPayment < ActiveRecord::Base
  validates :amount, numericality: { greater_than_or_equal_to: 0 }

  belongs_to :user
  belongs_to :receiver, class_name: 'User'
end
