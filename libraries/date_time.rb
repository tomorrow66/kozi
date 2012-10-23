# Date, Time, and DateTime extensions:
#
# t = Time.now => 2012-08-21 22:02:45 -0400
#
# t.display(:date) => "Tuesday Aug 21, 2012"
# Format options: :date, :day, :day_with_time, :american_day
#
# t.to_fields('my_date')
# Will output form select fields with the following IDs and name:
# my_date_year, my_date_month, and my_date_day
# Options: class_name, start_year, end_year
#
# The submitted to_fields form selects can be can be processed (and saved to a database):
# Date.from_fields(params[:my_date_year], params[:my_date_month], params[:my_date_day])

module Chassis
	module DateTime
	
		def self.included base
			base.extend ClassMethods
		end
		
		module ClassMethods
			def from_fields year, month, day
				Chronic.parse("#{year}-#{month}-#{day}")
			end
		end
		
		def display format = :date
			case format
			when :date
				string = "%A %b %d, %Y"
			when :day
				string = "%b %d, %Y"
			when :day_with_time
				string = "%b %d, %Y at %I:%M%P"
			when :american_day
				string = "%m/%d/%y"
			when :year
				string = "%Y"	
			end
			self.strftime string
		end
		
		def to_fields field, options = { class_name: '',
                                     start_year: Chronic.parse('3 years ago').strftime('%Y').to_i,
                                       end_year: Chronic.parse('3 years from_now').strftime('%Y').to_i }
			date_field = ""
		
			date_field << "<select name='#{field}_month' id='#{field}_month' class='month_select #{options[:class_name]}'>"
			(1..12).each do |m|
				date_field << "<option value='#{m}' #{'selected' if m == self.strftime('%m').to_i}>#{m}</option>"
			end
			date_field << "</select> &nbsp;"
		
			date_field << "<select name='#{field}_day' id='#{field}_day' class='day_select #{options[:class_name]}'>"
			(1..31).each do |d|
				date_field << "<option value='#{d}' #{'selected' if d == self.strftime('%d').to_i}>#{d}</option>"
			end
			date_field << "</select> &nbsp;"
		
			date_field << "<select name='#{field}_year' id='#{field}_year' class='year_select #{options[:class_name]}'>"
			(options[:start_year]..options[:end_year]).each do |y|
				date_field << "<option value='#{y}' #{'selected' if y == self.strftime('%Y').to_i}>#{y}</option>"
			end
			date_field << "</select>"
		
			date_field
		end

	end
end

Date.class_eval			{ include Chassis::DateTime }
Time.class_eval			{ include Chassis::DateTime }
DateTime.class_eval	{ include Chassis::DateTime }