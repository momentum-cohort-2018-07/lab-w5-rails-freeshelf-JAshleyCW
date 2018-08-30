class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      # digest column needed in DB to encrypt the PW -- we don't just want to do :password, 
      # we'd 'see' the pw

      t.timestamps
      t.index(:email, unique: true) 
      # index email = that's what we go find first, similar to a search by
    end
  end
end
