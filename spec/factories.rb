# By using the symbol ':user', we get Factory Girl to simulate the User model.
# permet de cree un @user avec la commande           @user = Factory(:user)
Factory.define :user do |user|
  user.name                  "Michael Hartl"
  user.email                 "mhartl@example.com"
  user.password              "foobar"
  user.password_confirmation "foobar"
end

