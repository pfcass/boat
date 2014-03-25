class Category < ActiveRecord::Base
  validates :name, uniqueness: { case_sensitive: false }, :presence => true

  has_many :line_items, :dependent => :destroy

end
