# == Schema Information
#
# Table name: fans
#
#  id                   :integer          not null, primary key
#  email                :string(255)      default(""), not null
#  encrypted_password   :string(128)      default(""), not null
#  password_salt        :string(255)      default(""), not null
#  confirmation_token   :string(255)
#  confirmed_at         :datetime
#  confirmation_sent_at :datetime
#  reset_password_token :string(255)
#  remember_token       :string(255)
#  remember_created_at  :datetime
#  sign_in_count        :integer          default(0)
#  current_sign_in_at   :datetime
#  last_sign_in_at      :datetime
#  current_sign_in_ip   :string(255)
#  last_sign_in_ip      :string(255)
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  fan_name             :string(255)
#  dob                  :date
#  first_name           :string(255)
#  last_name            :string(255)
#  country              :string(255)
#  city                 :string(255)
#  zip                  :integer
#  latitude             :integer
#  longitude            :integer
#  fb_auth_token        :string(255)
#  fan_type             :string(255)
#  type                 :string(255)
#

require 'test_helper'

class AdminTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
