class AddDoseToDrugs < ActiveRecord::Migration
  def change
    add_column :drugs, :route, :string
  end
end
