class AddColumnRatingToPost < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :rating, :string
  end
end
