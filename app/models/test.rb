# == Schema Information
#
# Table name: tests
#
#  id          :integer          not null, primary key
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  template_id :integer
#
# Indexes
#
#  index_tests_on_template_id  (template_id)
#

class Test < ApplicationRecord
  has_many :topic_assignments
  has_many :topics, through: :topic_assignments
  has_many :question_assignments
  has_many :questions, through: :question_assignments

  belongs_to :subject
  belongs_to :template, optional: true

  #simple validation syntax (not so great)
  validates_presence_of :title

  validates :title, presence: true
end
