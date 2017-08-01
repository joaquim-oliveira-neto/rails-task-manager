class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.date :due_date
      t.boolean :completed
      t.timestamps
    end
  end
end
