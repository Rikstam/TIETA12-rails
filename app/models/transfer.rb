class Transfer < ActiveRecord::Base
  validates :amount, presence: true,  numericality: {greater_than: 0}
#  validates :from_account, presence: true, length: {minimum:5}
#  validates :to_account, presence: true, length: {minimum:5}
##  validate  :accounts_must_be_different

#  def accounts_must_be_different
#      if from_account = to_account
#        errors.add(:from_account, "Accounts must be different")
#      end

#  end


end
