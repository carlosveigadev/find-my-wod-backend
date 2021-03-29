# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ title: 'Star Wars' }, { title: 'Lord of the Rings' }])
#   Character.create(title: 'Luke', movie: movies.first)

User.create(email: 'admin@admin.com', password: '123456', password_confirmation: '123456')
User.create(email: 'fry@fry.com', password: '123', password_confirmation: '123')

Wod.create(title: 'Amanda', description: '9-7-5 reps of muscle-ups and squat snatches (135/95lb)', image: 'U5uPGAdzvtQ')
Wod.create(title: 'Angie', description: '100 pull-ups, 100 push-ups, 100 sit-ups, 100 squats', image: 'F2Usuyr7uao')
Wod.create(title: 'Annie', description: '50-40-30-20-10 reps of double-unders and sit-ups', image: '55-rzrWeut8')
Wod.create(title: 'Barbara', description: 'Five rounds of 20 pull-ups, 30 push-ups, 40 sit-ups, 50 air squats, 3 minutes rest', image: 'KTQp3dAsGbQ')
Wod.create(title: 'Cindie', description: 'As many rounds as possible in 20 minutes: 5 pull-ups, 10 push-ups, 15 air squats', image: 'MJCCCJdtYJ8')