class CommentsController < ApplicationController
  def create
    job_id = params.require(:comment)[:job]
    text = params.require(:comment)[:message]

    new_comment = Comment.new({Job_id: job_id, message: text})
    new_comment.add_comment

    redirect_to job_path(job_id)
  end
end
