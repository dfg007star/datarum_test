dima = User.create!(:email => '1@mail.ru',
                        :password => '111111',
                        :password_confirmation => '111111',
                        :username => 'Dima Osin')
vanya = User.create!(:email => '2@mail.ru',
                    :password => '111111',
                    :password_confirmation => '111111',
                    :username => 'Vanya Klochkov')
kolya = User.create!(:email => '3@mail.ru',
                     :password => '111111',
                     :password_confirmation => '111111',
                     :username => 'Kolya Domashniy')
# 1000.times do |n|
#   Question.create(:user_id => dima.id,
#                   :title => "Title#{n}",
#                   :body => "Body#{n}")
# end