class CreateAdmins < ActiveRecord::Migration[5.0]
  def change
    create_table :admins do |t|
      t.string :email, null: false, index: :unique
      t.string :password_digest, null: false

      t.timestamps null: false
    end
  end
end
