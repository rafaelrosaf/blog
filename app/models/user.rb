class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name
  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  # validates :email, :presence => true, :uniqueness => true, :length => { :maximum => 100 }

    end
end
