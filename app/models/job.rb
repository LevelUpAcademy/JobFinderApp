class Job < ApplicationRecord
  has_many :comments

  def get_comments_count
    self.comments.length
  end
end
