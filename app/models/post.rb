class Post < ActiveRecord::Base
  
  has_many :comments, :dependent => :destroy
  attr_accessible :body, :excerpt, :title
  validates_presence_of :title, :body
end
