# == Schema Information
#
# Table name: tests
#
#  id         :integer          not null, primary key
#  title      :string
#  questions  :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  topic_id   :integer
#
# Indexes
#
#  index_tests_on_topic_id  (topic_id)
#

class Test < ApplicationRecord
  #belongs_to :subject
  belongs_to :topic

  #simple validation syntax (not so great)
  validates_presence_of :title
  validates_numericality_of :title

  validates :title, presence: true
end
