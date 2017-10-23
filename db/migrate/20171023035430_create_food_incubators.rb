class CreateFoodIncubators < ActiveRecord::Migration[5.1]
  def change
    create_table :food_incubators do |t|
      t.string :program
      t.string :organization
      t.string :organization_profile
      t.string :category
      t.string :country
      t.string :state
      t.string :city
      t.string :program_profile
      t.string :website
      t.string :address
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
