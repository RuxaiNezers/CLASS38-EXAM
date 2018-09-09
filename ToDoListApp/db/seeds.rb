# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
	
	

	Todo.create( title: 'Pie de cueca', description: 'Bailar un pie de cueca con una chinita o un huaso', image: 'Cueca.png')
    Todo.create( title: 'Volantin', description: 'Elevar un volantin', image: 'Volantin.png')
    Todo.create( title: 'Rayuela', description: 'Jugar un partido de rayuela y ganar!!!', image: 'rayuela.jpg')
    Todo.create( title: 'Terremoto!!', description: 'Tomarse un rico terremoto con tu amigo/a o pareja', image: 'Terremoto.png')
    Todo.create( title: 'Choripan póh!', description: 'no puedes olvidar zamparte un buen choripan', image: 'Choripan.png')
    Todo.create( title: 'Anticucho', description: 'Su buen anticucho con los amigos', image: 'anticucho.jpg')
    Todo.create( title: 'A la Fonda', description: 'visitar uyna fonda con tu grupo de amigos o familiares', image: 'fonda.jpg')
    Todo.create( title: 'El postre', description: 'Comerse su rico mote con huesillo despues de la comida (o antes)', image: 'mote.png')
    Todo.create( title: 'Caña', description: 'Despues de todo el festejo su aspirina para pasar la resaca', image: 'aspirinas.jpg')

    User.create(email: "correo1@gmail.com", password: "123456789", picture: 'perfil1.jpeg')
    User.create(email: "correo2@gmail.com", password: "123456789", picture: 'perfil2.jpg')
    User.create(email: "correo3@gmail.com", password: "123456789", picture: 'perfil3.jpg')
    User.create(email: "correo4@gmail.com", password: "123456789", picture: 'perfil4.jpeg')
    User.create(email: "correo5@gmail.com", password: "123456789", picture: 'perfil5.jpg')
    User.create(email: "correo6@gmail.com", password: "123456789", picture: 'perfil6.jpg')
    User.create(email: "correo7@gmail.com", password: "123456789", picture: 'perfil7.jpg')