# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


BulletType.destroy_all
Gun.destroy_all
UserOwnedGun.destroy_all
User.destroy_all

u1 = User.create(username: "alex", password: "password")
u2 = User.create(username: "yo", password: "pass")

b1 = BulletType.create(calibre: ".223", muzzle_velocity: 2840, weight: 55)
b2 = BulletType.create(calibre: "7.62x39", muzzle_velocity: 2350, weight: 123)

g1 = Gun.create(name: "AK-47", bullet_type_id: b2.id, barrel_length: 16.3)
g2 = Gun.create(name: "AR-15", bullet_type_id: b1.id, barrel_length: 14.0)

# comeback later to switch barrel_length to float + change in the models

uo1 = UserOwnedGun.create(user_id: u1.id, gun_id: g1.id)
uo2 = UserOwnedGun.create(user_id: u2.id, gun_id: g2.id)