class CreateDays < ActiveRecord::Migration
  def change
    create_table :days do |t|
      t.string :title
      t.date :date
      t.belongs_to :program, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
