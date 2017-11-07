# == Schema Information
#
# Table name: templates
#
#  id         :integer          not null, primary key
#  title      :string
#  subject_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_templates_on_subject_id  (subject_id)
#

class Template < ApplicationRecord
  belongs_to :subject
end
