# By using the symbol ':user', we get Factory Girl to simulate the User model.
# permet de cree un @user avec la commande           @user = Factory(:user)
Factory.define :user do |user|
  user.name                  "Michael Hartl"
  user.email                 "mhartl@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

#pour will paginate?
Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :system do |system|
  system.content "Foo bar"
  system.association :user
end

