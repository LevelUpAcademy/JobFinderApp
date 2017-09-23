class Comment < ApplicationRecord
  belongs_to :Job

  def add_comment
    if validate
      self.save!
    end
  end

private
  def validate
    if self.message == ""
      false
    else
      true
    end
  end
end
