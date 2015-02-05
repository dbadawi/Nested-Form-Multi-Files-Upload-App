class Question < ActiveRecord::Base
  belongs_to :lesson

  has_many :answers, dependent: :destroy

  accepts_nested_attributes_for :answers, :allow_destroy => true

  validates :name, :content, :presence => true

  has_attached_file :attachment,
      :path => ":rails_root/public/:class/:attachment/:id/:style_:basename.:extension",
      :url => ":class/:attachment/:id/:style_:basename.:extension"
  validates_attachment_content_type :attachment, :content_type => /\Aimage\/.*\Z/
end
