class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :commenter
      t.text :presentation
      t.text :administration
      t.text :outcome
      t.references :drug, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
