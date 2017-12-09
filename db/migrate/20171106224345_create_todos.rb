class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.belongs_to :checklist
      t.string :answer
      t.timestamps null: false
    end
  end
end
