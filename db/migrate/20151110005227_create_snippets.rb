class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string :title
      t.text :work
      t.references :code, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
