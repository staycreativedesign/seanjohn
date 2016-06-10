class Press < ActiveRecord::Base
  attr_accessible :desc, :image, :linkname, :metadesc, :metakeywords, :name, :slug
end
