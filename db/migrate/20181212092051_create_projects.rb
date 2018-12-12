class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.string :duration
      t.string :role
      t.string :url
      t.references :developer, foreign_key: true

      t.timestamps
    end
  end
end
