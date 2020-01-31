class CreateRecipes < ActiveRecord::Migration[6.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :description
      t.string :cuisine
      t.string :type_of

      t.timestamps
    end
  end
end
