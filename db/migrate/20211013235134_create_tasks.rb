class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :importance
      t.integer :urgency
      t.boolean :completed
      t.date :date_added
      t.date :date_completed
      t.integer :user_id

      t.timestamps
    end
  end
end
