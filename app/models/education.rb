class Education < ActiveRecord::Base
  attr_accessible :desc, :image, :name, :slug, :template, :linkname
  extend FriendlyId
  friendly_id :name, use: :slugged
end
