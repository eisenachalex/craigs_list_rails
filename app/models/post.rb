class Post < ActiveRecord::Base
  attr_accessible :description, :price, :title
  belongs_to :user
end
