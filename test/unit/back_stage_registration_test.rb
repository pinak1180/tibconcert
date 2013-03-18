# == Schema Information
#
# Table name: back_stage_registrations
#
#  id            :integer          not null, primary key
#  email         :string(255)
#  fb_auth_token :string(255)
#  type          :string(255)
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

require 'test_helper'

class BackStageRegistrationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
