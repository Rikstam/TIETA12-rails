# == Schema Information
#
# Table name: accounts
#
#  id         :integer          not null, primary key
#  code       :string
#  name       :string
#  amount     :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Account < ActiveRecord::Base
  has_many :transfers
  validates :code, presence: true, length: {minimum:5}
  validates :amount, presence: true,  numericality: {greater_than: 0}



end
