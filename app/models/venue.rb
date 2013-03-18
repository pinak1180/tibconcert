# == Schema Information
#
# Table name: venues
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  country    :string(255)
#  city       :string(255)
#  state      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  password   :string(255)
#



class Venue < ActiveRecord::Base
 
  attr_accessible :city, :country, :name, :state,:password,:address,:password_confirmation
  validates_presence_of :city,:country,:name,:state,:address
  validates :password, presence: true,length: { :within => 6..40 }
  validates_confirmation_of :password
  has_many :events
end
