class CreateDrugs < ActiveRecord::Migration
  def change
    create_table :drugs do |t|
      t.string :name
      t.string :adult_dose
      t.string :pediatric_dose
      t.string :inidications

      t.timestamps null: false
    end
  end
end
