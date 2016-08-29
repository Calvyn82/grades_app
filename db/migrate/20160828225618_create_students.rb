class CreateStudents < ActiveRecord::Migration[5.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.integer :school_id
      t.integer :grade
      t.integer :hour

      t.timestamps null: false
    end
    add_index :students, :school_id
    add_index :students, :hour
  end
end
