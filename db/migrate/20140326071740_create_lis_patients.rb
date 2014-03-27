class CreateLisPatients < ActiveRecord::Migration
  def change
    create_table :lis_patients do |t|
      t.string :name
      t.integer :age

      t.timestamps
    end
  end
end
