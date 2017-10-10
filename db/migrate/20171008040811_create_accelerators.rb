class CreateAccelerators < ActiveRecord::Migration[5.1]
  def change
    create_table :accelerators do |t|
      t.string :program
      t.string :organization
      t.string :organization_profile
      t.string :category
      t.string :relevant_focus_areas
      t.string :program_location
      t.string :country
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
