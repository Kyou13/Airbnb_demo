class RenameBreedingUearsColumnToListings < ActiveRecord::Migration[5.1]
  def change
    rename_column :Listings, :breeding_uears, :breeding_years
  end
end
