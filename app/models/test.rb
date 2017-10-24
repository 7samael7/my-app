# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Test < ApplicationRecord
  has_many :topic_assignments
  has_many :topics, through: :topic_assignments

  belongs_to :subject

  #simple validation syntax (not so great)
  validates_presence_of :title

  validates :title, presence: true
end
