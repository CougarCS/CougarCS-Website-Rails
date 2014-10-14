class Post < ActiveRecord::Base
  validates_presence_of :body, :title
  belongs_to :author
  
  extend FriendlyId
  friendly_id :title, use: [:slugged, :finders]
end
