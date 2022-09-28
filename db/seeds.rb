puts 'Deleting all data...'
Role.destroy_all
Audition.destroy_all

puts 'Seeding Roles...'
Role.create(character_name: 'SpongeBob')
Role.create(character_name: 'Shrek')
Role.create(character_name: 'Totoro')
Role.create(character_name: 'Betty Boop')
Role.create(character_name: 'Goofy')
Role.create(character_name: 'Buttercup')

puts 'Seeding Auditions...'
Audition.create(actor: 'Ben', location: 'Alabama', phone: '5559384', hired: false, role_id: 2)
Audition.create(actor: 'Abby', location: 'Alabama', phone: '5559384', hired: false, role_id: 1)
Audition.create(actor: 'Lucy', location: 'Alabama', phone: '5559384', hired: false, role_id: 3)
Audition.create(actor: 'Gracie', location: 'Alabama', phone: '5559384', hired: false, role_id: 4)
Audition.create(actor: 'Riley', location: 'Crate', phone: '5559384', hired: false, role_id: 5)
Audition.create(actor: 'Honey', location: 'Crate', phone: '5559384', hired: false, role_id: 6)
