puts "loading..."

  Audition.create(actor: "Joe", location: "LA", phone: 5555555, hired: false, role_id: 1 )
  Audition.create(actor: "Jan", location: "SF", phone: 5555551, hired: false, role_id: 1 )
  Audition.create(actor: "Alie", location: "MN", phone: 5555552, hired: false, role_id: 1 )
  Audition.create(actor: "Remberto", location: "NY", phone: 5555553, hired: false, role_id: 1 )
  Audition.create(actor: "Jake", location: "FL", phone: 5555554, hired: false, role_id: 1 )

  Role.create(character_name: "Fast Eddy")

puts "done"
