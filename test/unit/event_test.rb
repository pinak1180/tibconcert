# == Schema Information
#
# Table name: events
#
#  id                  :integer          not null, primary key
#  event_name          :string(255)
#  artist              :string(255)
#  description         :string(255)
#  genere              :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  ticket_rate_min     :integer
#  ticket_rate_max     :integer
#  ticket_master_link  :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  venue_id            :integer
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
