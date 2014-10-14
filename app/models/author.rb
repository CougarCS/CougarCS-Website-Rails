class Author < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  # :registerable
  devise :database_authenticatable,
  :recoverable, :rememberable, :trackable, :validatable
  has_many :posts
  
  has_attached_file :avatar, :default_url => "/images/default.png"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
  validates_attachment :avatar, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
  
  extend FriendlyId
  friendly_id :full_name, use: [:slugged, :finders]
  
  def full_name
    "#{first_name} #{last_name}"
  end
    
end
