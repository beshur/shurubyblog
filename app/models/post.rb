class Post < ActiveRecord::Base
  attr_accessible :author_id, :body, :category_id, :title, :admin_user_id, :comments
  belongs_to :category
  belongs_to :admin_user
  has_many :comments, :dependent => :destroy
end
