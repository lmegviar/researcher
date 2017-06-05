class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.text :text
      t.references :article, foreign_key: true

      t.timestamps
    end
  end
end
