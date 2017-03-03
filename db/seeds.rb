# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all
Brainjuice.delete_all
Container.delete_all
Todo.delete_all

user = User.create(name: 'Shawn', email: 'me@me.com', password: "12345678")

brainjuice = Brainjuice.create(name: 'focus', status: 'active')
brainjuice1 = Brainjuice.create(name: 'creative', status: 'active')
brainjuice2 = Brainjuice.create(name: 'busy', status: 'active')

container1 = Container.create(time_container: 120, date: Date.today, brainjuice_id: 1)
container2 = Container.create(time_container: 60, date: Date.today, brainjuice_id: 3)
container3 = Container.create(time_container: 90, date: Date.today, brainjuice_id: 2)

todo1 = Todo.create(task: 'Create Rails API', details: 'Access lots of resources to build the thing', time_estimate: 120, status: 'active', brainjuice_id: 1, user_id: 1, container_id: 1)
todo1 = Todo.create(task: 'Respond to Joe\'s spreadsheet', details: 'Answer all the suspence questions', time_estimate: 15, status: 'active', brainjuice_id: 3, user_id: 1, container_id: 1)
todo1 = Todo.create(task: 'Write blog post', details: 'Share the exciting adventures of Tech phone screen', time_estimate: 120, status: 'active', brainjuice_id: 1, user_id: 1, container_id: 1)
