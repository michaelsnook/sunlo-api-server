# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

AdminUser.create(
  email: 'admin@example.com',
  password: 'password',
  password_confirmation: 'password'
) if Rails.env.development?

Language.create(
  name: 'English',
  localised_name: 'English',
  iso2: 'en',
  iso3: 'eng'
)

User.create(
  email: 'user@example.com',
  password: 'password',
  password_confirmation: 'password',
  language_ids: [1]
) if Rails.env.development?

Language.create(
  name: 'Hindi',
  localised_name: 'हिन्दी',
  iso2: 'hi',
  iso3: 'hin'
)

Deck.create(
  user_id: 1,
  language_id: 2
) if Rails.env.development?

User.create(
  email: 'user2@example.com',
  password: 'password',
  password_confirmation: 'password',
  language_ids: [2]
) if Rails.env.development?

Deck.create(
  user_id: 2,
  language_id: 1
) if Rails.env.development?
