class RemoveInidicationsFromDrugs < ActiveRecord::Migration
  def change
  	rename_column :drugs, :inidications, :indications
  end
end
