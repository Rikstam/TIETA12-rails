class Transfer < ActiveRecord::Base
  validates :amount, presence: true,  numericality: {greater_than: 0}



 validates :account_id, presence: true, length: {minimum:1}
 validates :to_account, presence: true, length: {minimum:1}
 validate :accounts_must_be_different
 belongs_to :account

  def accounts_must_be_different
      if account_id == to_account
        errors.add(:base, "Accounts must be different")
      end

  end


end
