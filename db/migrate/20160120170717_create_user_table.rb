class CreateUserTable < ActiveRecord::Migration
  def change
    create_table :user_tables do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
  end
end
