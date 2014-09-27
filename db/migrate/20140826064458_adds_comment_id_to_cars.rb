class AddsCommentIdToCars < ActiveRecord::Migration
  def change
  	add_column :cars, :comment_id, :integer
  end
end
