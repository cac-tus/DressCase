class User < ActiveRecord::Base
  attr_accessible :id, :last_login, :last_update, :mail, :name, :password, :sign_up, :type
end
