class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :last_name
      t.text :description
      t.references :region, foreign_key: true
      t.references :commune, foreign_key: true
      t.references :city, foreign_key: true
      t.references :skill, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
