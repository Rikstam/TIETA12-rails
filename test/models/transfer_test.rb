# == Schema Information
#
# Table name: transfers
#
#  id         :integer          not null, primary key
#  account_id :integer
#  to_account :integer
#  amount     :decimal(, )
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class TransferTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
