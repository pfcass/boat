class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validate :is_invited

  def is_invited
    tmp = Invitee.where( "email = ?", self.email )
    $LOG.info tmp
    if Invitee.where( "email = ?", self.email ).empty? == true
      errors.add( :sorry, "not invited")
    end
  end
end
