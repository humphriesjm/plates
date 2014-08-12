class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    render json: @comments.to_json
  end
  
  def search_comments
    @comments = Comment.where({ car_id: params[:id] })
    render json: @comments.to_json
  end
  
  def leave_comment
    car = Car.find(params[:car_id])
    puts car
    @comment = car.comments.create(comment_params)
    puts @comment
    # @comment.save
    render json: @comment.to_json
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
    @comment = Comment.new comment_params
    @comment.save
    render json: @comment.to_json
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:message, :flags, :latitude, :longitude, :car_id, :user_id)
  end
  
end