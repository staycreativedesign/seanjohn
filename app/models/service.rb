class Service < ActiveRecord::Base
  attr_accessible :desc, :image, :name, :slug, :template, :linkname
extend FriendlyId
  friendly_id :name, use: :slugged
  def template_normal?
    template == 1
  end
end
