# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email:"axool@promovision.com", password:"77RedRiver", password_confirmation:"77RedRiver")
Locality.create(name:"Cancun")
Property.create(locality_id:1,
	name:"Residencial Milenio",
	address:"Avenida Norte, #50 Playa del Carmen, Quintana Roo, Mexico", 
	google_maps:"https://maps.google.com/maps?q=Toledo,+Playa+del+Carmen,+M%C3%A9xico&hl=es&ie=UTF8&sll=20.984521,-87.205353&sspn=0.683412,1.352692&oq=Toledo+&hnear=Toledo,+Playa+del+Carmen,+Quintana+Roo,+M%C3%A9xico&t=m&z=14&iwloc=A",
    description:"Un distintivo de la Hacienda es que no existe un Inmueble igual a otro. Las areas verdes y entoirno del lugar imprimen una armonia, privacidad y seguridad excelente a sus residentes.",
    catastral_reference:"123123")
Type.create(name:"Casa")
Type.create(name:"Departamento")