# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  title      :string
#  questions  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Test < ApplicationRecord
  #belongs_to :subject

  #simple validation syntax (not so great)
  validates_presence_of :title
  validates_numericality_of :title

  validates :title, presence: true
end
