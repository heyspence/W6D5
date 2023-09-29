# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


ApplicationRecord.transaction do
    Cat.destroy_all

    %w(cats).each do |table_name|
        ApplicationRecord.connection.reset_pk_sequence!(table_name)
    end

    cat_1 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "Max", sex: "M", description: "fiesty")
    cat_2 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "Cindy", sex: "F", description: "fiesty")
    cat_3 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "Tabatha", sex: "F", description: "fiesty")
    cat_4 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "Mark", sex: "M", description: "fiesty")
    cat_5 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "David", sex: "M", description: "fiesty")
    cat_6 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "Suzanne", sex: "F", description: "fiesty")
    cat_7 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "Martha", sex: "F", description: "fiesty")
    cat_8 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "Dalia", sex: "F", description: "fiesty")
    cat_9 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "Spencer", sex: "M", description: "fiesty")
    cat_10 = Cat.create!(birth_date: "1986/3/2", color: "black", name: "Omar", sex: "M", description: "fiesty")
end
