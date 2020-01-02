class Url < ActiveRecord::Base
	extend FriendlyId
	friendly_id :shortened
	attr_accessible :original, :shortened

	def print_something
		something = 'something'
		Rails.logger.info "---something: #{something}"
	end

	def test_method
		Rails.logger.info "hi"
		// does nothing
	end
	
end
