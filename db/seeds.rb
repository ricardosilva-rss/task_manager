# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Destroying tasks and lists'
Task.destroy_all
List.destroy_all

puts 'All destroyed'

puts 'Creating lists'
list_a = List.create!(name: 'School', description: 'Tests and homework')
list_b = List.create!(name: 'Work', description: 'Meetings and deadlines')
list_c = List.create!(name: 'Friends', description: 'Best friends ever!!!')

puts 'Lists created'

puts 'Creating tasks'
Task.create!(
  title: 'Math test',
  description: 'Probabilities is hard.',
  location: 'Lisbon',
  date: '202209151000',
  list_id: list_a.id
)

Task.create!(
  title: 'Literature group work',
  description: 'Meet with Jack to finish last chapter',
  location: 'Lisbon',
  date: '202209151800',
  list_id: list_a.id
)

Task.create!(
  title: 'Geography',
  description: 'Need to know all those capitals',
  location: 'Lisbon',
  date: '202209201630',
  list_id: list_a.id
)

Task.create!(
  title: 'Meeting',
  description: 'Peter wants to talk',
  location: 'Lisbon',
  date: '202209161130',
  list_id: list_b.id
)

Task.create!(
  title: 'Finish feature',
  description: 'Deadline is almost here',
  location: 'Lisbon',
  date: '202209150900',
  list_id: list_b.id
)

Task.create!(
  title: 'Cinema',
  description: 'Going out with Claire',
  location: 'Lisbon',
  date: '202209172200',
  list_id: list_c.id
)

Task.create!(
  title: 'Dinner',
  description: 'Daniel bday',
  location: 'Lisbon',
  date: '202209212130',
  list_id: list_c.id
)

puts 'Tasks created'
puts 'All done!!!'
