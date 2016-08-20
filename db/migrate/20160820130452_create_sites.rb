class CreateSites < ActiveRecord::Migration[5.0]
  def change
    create_table :sites do |t|
      t.string :title
      t.text :tags
      t.string :logo_url
      t.belongs_to :theme, foreign_key: true
      t.belongs_to :menu, foreign_key: true
      t.belongs_to :temp, foreign_key: true

      t.timestamps
    end
  end
end
