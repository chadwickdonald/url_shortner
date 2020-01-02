class Url < ActiveRecord::Base
	extend FriendlyId
	friendly_id :shortened
	attr_accessible :original, :shortened


	def test_method
		Rails.logger.info "hi"
		// does nothing
	end
	
end
