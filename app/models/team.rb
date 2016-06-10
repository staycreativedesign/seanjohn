class Team < ActiveRecord::Base
  attr_accessible :apprenticed, :desc, :from, :image, :name, :slug, :specialize, :workedat, :workedwith, :template, :linkname
  mount_uploader :image, ImageUploader
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  def has_no_description
    template ==  4
      end

  def partial_name
  case template
    when 2
     "team_bio_special"
    when 3
    "team_bio_keith"
    else
     "team_bio_normal"
    end
  end
end                                                           