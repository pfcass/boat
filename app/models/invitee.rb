class Invitee < ActiveRecord::Base
  validates :email, uniqueness: { case_sensitive: false }, :presence => true
end
