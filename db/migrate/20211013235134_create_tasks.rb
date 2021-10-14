class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :importance, :default => 10
      t.integer :urgency, :default => 10
      t.boolean :completed, :default => false
      t.date :date_added, :default => DateTime.now
      t.date :date_completed, :default => nil
      t.integer :user_id
    end
  end
end
