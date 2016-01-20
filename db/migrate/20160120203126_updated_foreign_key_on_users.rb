class UpdatedForeignKeyOnUsers < ActiveRecord::Migration
  def change
    add_foreign_key :tasklists, :users
  end
end
