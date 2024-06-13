User.create!(first_name: "Admin", last_name: "User", email: "admin@example.com", role: "admin", password: "password")
User.create!(first_name: "Manager", last_name: "User", email: "manager@example.com", role: "manager", password: "password")
User.create!(first_name: "Regular", last_name: "User", email: "user@example.com", role: "user", password: "password")

MusicRecord.create!(title: "Record1", price: 10.0, description: "First Record", damage_assessment: "New")
