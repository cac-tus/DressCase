class OfferLog < ActiveRecord::Base
  attr_accessible :actress_id, :director_id, :message, :offer_id, :receive_datetime, :send_datetime
end
