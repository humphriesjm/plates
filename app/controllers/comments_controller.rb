class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments.to_json
  end
  
  # t.string   "message"
  # t.string   "flags"
  # t.float    "latitude"
  # t.float    "longitude"
  # t.datetime "created_at"
  # t.datetime "updated_at"
  # t.integer  "car_id"
  # t.integer  "user_id"
  def create
    @comment = Comment.new params[:comment]
    @comment.save
    render @comment.to_json
  end
end