class AddRefsToReviews < ActiveRecord::Migration
  def change
  	add_reference :reviews, :user, index: true, foreign_key: true
  	add_reference :reviews, :restaurant, index: true, foreign_key: true
  end
end
