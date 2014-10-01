class Post < ActiveRecord::Base
  validates_presence_of :body, :title
  belongs_to :author
end
