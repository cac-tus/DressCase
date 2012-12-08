class OfferLog < ActiveRecord::Base
  attr_accessible :id, :message, :receive_datetime, :receive_id, :send_datetime, :send_id
end
