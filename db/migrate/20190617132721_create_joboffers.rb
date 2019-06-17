class CreateJoboffers < ActiveRecord::Migration[5.2]
  def change
    create_table :joboffers do |t|
      t.string :title
      t.text :description
      t.string :image
      t.integer :budget
      t.references :region, foreign_key: true
      t.references :commune, foreign_key: true
      t.references :city, foreign_key: true
      t.references :user, foreign_key: true
      t.references :skill, foreign_key: true

      t.timestamps
    end
  end
end
