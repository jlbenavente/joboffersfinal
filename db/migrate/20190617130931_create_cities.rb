class CreateCities < ActiveRecord::Migration[5.2]
  def change
    create_table :cities do |t|
      t.string :name
      t.boolean :display_in_index, default: true

      t.timestamps
    end
  end
end
