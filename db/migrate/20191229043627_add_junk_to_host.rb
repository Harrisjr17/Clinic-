class AddJunkToHost < ActiveRecord::Migration[6.0]
  def change
    add_column :hosts, :age, :integer
    add_column :hosts, :address, :string
    add_column :hosts, :street, :string
    add_column :hosts, :babysitter_name, :string

  end
end
