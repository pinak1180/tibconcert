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

class Fan < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :lockable, :timeoutable and :activatable
  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :remember_me, :password, :password_confirmation,:city, :country, :dob, :fan_name, :first_name, :last_name,:zip,:fb_auth_token,:fan_type
  # attr_accessible :title, :body
  has_many :authentication_tokens
  #validates_presence_of :city,:country,:fan_name,:first_name, :last_name,:zip
   def display_errors
    self.errors.full_messages.join(', ')
  end
  
  def self.authenticate_member_with_auth(email, password)
    return nil unless email.present? or password.present?
    m = Fan.where(:email => email)
    (m.present? && m.first.valid_password?(password))? m : nil
  end

  def self.invalid_credentials
    "Email or Password is not valid"
  end
end
