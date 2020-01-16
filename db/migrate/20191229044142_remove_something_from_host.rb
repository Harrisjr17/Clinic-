class RemoveSomethingFromHost < ActiveRecord::Migration[6.0]
  def change


    remove_column :hosts, :address, :string
    
  end
end
