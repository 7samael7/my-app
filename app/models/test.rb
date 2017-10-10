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
  #simple validation syntax (not so great)
  validates_presence_of :title
  validates_numericality_of :titel

  validates :title, presence: true
end
