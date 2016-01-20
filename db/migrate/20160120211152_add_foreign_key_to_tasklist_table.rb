class AddForeignKeyToTasklistTable < ActiveRecord::Migration
  def change
    add_foreign_key :tasks, :tasklists
  end
end
