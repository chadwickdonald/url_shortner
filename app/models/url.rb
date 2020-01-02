class Url < ActiveRecord::Base
	extend FriendlyId
	friendly_id :shortened
	attr_accessible :original, :shortened

	def stupid_thing
		foo = 'hi'
		Rails.logger.info "--foo: #{foo}"
	end
	
end
