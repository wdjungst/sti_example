class CreateZoos < ActiveRecord::Migration
  def change
    create_table :zoos do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
