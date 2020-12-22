# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
divisions = [
    { "name" => "CSO AG", "code" => "cso_ag" },
    { "name" => "CSO DDM", "code" => "cso_ddm" },
]

divisions.each do |division|
    Division.create(name: division['name'], code: division['code'])
end

User.create(name: "admin", email: "admin@admin.dev", role: "admin", password: '1234567', division_id: "1") 