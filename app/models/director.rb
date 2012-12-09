class Director < ActiveRecord::Base
  attr_accessible :belong, :birthday, :id, :last_login, :photo, :profile, :sex, :user_id
end
