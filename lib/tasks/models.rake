require 'csv'
namespace :models do
  desc "pull carmodels data into database"
  task seed_models: :environment do

    #drop the old table data before importing the new stuff
    Carmodel.destroy_all

    CSV.foreach("lib/assets/carmodels.csv", :headers =>true) do |row |
      puts row.inspect #just so that we know the file's being read

      #create new model instances with the data
      Carmodel.create!(
     type1: row[0],
     fuel1: row[1],
     range1: row[2].to_i,
     speed1: row[3].to_i,
     pollution1: row[4].to_d
    )
    end
  end

end
