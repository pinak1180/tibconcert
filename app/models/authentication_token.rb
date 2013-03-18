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

class AuthenticationToken < ActiveRecord::Base
  attr_accessible :auth_token
  belongs_to :fan
  def self.generate_unique_token
    token = SecureRandom.hex(20)
  end
end
