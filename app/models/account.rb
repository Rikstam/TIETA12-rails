class Account < ActiveRecord::Base
  validates :code, presence: true, length: {minimum:5}
  validates :amount, presence: true,  numericality: {greater_than: 0}



end
