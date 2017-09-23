class CommentsController < ApplicationController
  def create
    job_id = params.require(:comment)[:job]
    text = params.require(:comment)[:message]

    Comment.new({Job_id: job_id, message: text}).add_comment

    redirect_to job_path(job_id)
  end
end
