class Account < ActiveRecord::Base
  has_many :transfers
  validates :code, presence: true, length: {minimum:5}
  validates :amount, presence: true,  numericality: {greater_than: 0}



end
