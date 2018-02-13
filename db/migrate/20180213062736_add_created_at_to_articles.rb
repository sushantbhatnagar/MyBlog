class AddCreatedAtToArticles < ActiveRecord::Migration[5.1]
  def change
  	# Added missed fields like create_at and updated_at in articles table.
  	add_column :articles, :created_at, :datetime
  	add_column :articles, :updated_at, :datetime
  end
end
