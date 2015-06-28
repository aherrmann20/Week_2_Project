class Comment < ActiveRecord::Base
  belongs_to :drug
  validates :commenter, :presentation, :administration, :outcome, presence: true
end
