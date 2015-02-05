class Document < ActiveRecord::Base
  belongs_to :lesson

  validates :title, :presence => true

  has_attached_file :attachment,
      :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension",
      :url => ":class/:attachment/:id/:style_:basename.:extension"
  validates_attachment_content_type :attachment, :content_type => /\Aimage\/.*\Z/
end
