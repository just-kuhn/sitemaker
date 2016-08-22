class CreateMaps < ActiveRecord::Migration[5.0]
  def change
    create_table :maps do |t|
      t.belongs_to :site, foreign_key: true
      t.string :element_id
      t.string :value

      t.timestamps
    end
  end
end
