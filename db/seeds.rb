# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

danilo = User.create(email:'danilo@email.com', password:'123456')
User.create(email:'teste@email.com', password:'123456')


calculo_1 = Classroom.create(name:'Cálculo 1',
                             config_review:'1-2-7-30',
                             user_id: danilo.id)

limite = Topic.create(name:'Limite', classroom_id: calculo_1.id)
Topic.create(name:'Derivada', classroom_id: calculo_1.id)
Topic.create(name:'Integral', classroom_id: calculo_1.id)

Flashcard.create(question: 'Qual o limite de uma constante?',
                 answer: 'É a própria constante',
                 correct: true,
                 topic_id: limite.id)