class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :description
      t.integer :progress
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
