class CreateLifts < ActiveRecord::Migration
  def change
    create_table :lifts do |t|
      t.string :name
      t.text :description
      t.string :video
      t.integer :difficulty
      t.belongs_to :day, index: true, foreign_key: true
      t.belongs_to :program, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
