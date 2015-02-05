class Lesson < ActiveRecord::Base
  has_many :documents, dependent: :destroy
  has_many :questions, dependent: :destroy

  accepts_nested_attributes_for :documents, :questions, :allow_destroy => true

  validates :name, :category, :level, :presence => true
end
