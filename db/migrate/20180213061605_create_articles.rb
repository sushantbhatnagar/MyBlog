class CreateArticles < ActiveRecord::Migration[5.1]
  def change
  	# create table articles with title and description
    create_table :articles do |t|
    	t.string :title
    	t.text :description
    end
  end
end
