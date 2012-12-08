class Office < ActiveRecord::Base
  attr_accessible :address, :caption, :id, :last_login, :logo, :mail2, :rep_name, :tel, :tel2, :user_id
end
