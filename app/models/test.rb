# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  title      :string
#  questions  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  subject_id :integer
#
# Indexes
#
#  index_tests_on_subject_id  (subject_id)
#

class Test < ApplicationRecord
  #belongs_to :subject

  #simple validation syntax (not so great)
  validates_presence_of :title
  validates_numericality_of :title

  validates :title, presence: true
end
