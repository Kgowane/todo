class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :item
      t.text :description
      t.references :list

      t.timestamps
    end
  end
end
