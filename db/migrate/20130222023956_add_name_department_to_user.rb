class AddNameDepartmentToUser < ActiveRecord::Migration
  def change
  	change_table :users do |t|
      t.column :name, :string
      t.column :department, :string
    end
  end
end
