class Url < ActiveRecord::Base
	extend FriendlyId
	friendly_id :shortened
	attr_accessible :original, :shortened
end
