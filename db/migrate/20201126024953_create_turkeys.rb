class CreateTurkeys < ActiveRecord::Migration[6.0]
  def change
    create_table :turkeys do |t|
      t.integer :weight
      t.string :size
      t.integer :gobbles
      t.string :name

      t.timestamps
    end
  end
end
