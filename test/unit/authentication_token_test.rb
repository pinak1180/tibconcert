# == Schema Information
#
# Table name: authentication_tokens
#
#  id         :integer          not null, primary key
#  auth_token :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  fan_id     :string(255)
#

require 'test_helper'

class AuthenticationTokenTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
