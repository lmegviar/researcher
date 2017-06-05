class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :url
      t.integer :level
      t.text :summary
      t.text :notes

      t.timestamps
    end
  end
end
