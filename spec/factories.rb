# By using the symbol ':user', we get Factory Girl to simulate the User model.
Factory.define :user do |user|
  user.name                   "User Name"
  user.email                  "user@name.com"
  user.password               "foobar"
  user.password_confirmation  "foobar"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :savegame do |savegame|
  savegame.name               "Save Name"
  savegame.description        "A save game"
  savegame.user_id            1
end