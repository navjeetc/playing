module ApplicationHelper
	def today
		content_tag(:div, content_tag(:span, "Today is #{Time.zone.now.strftime("%A %B %d, %Y")}"), class: "date_today")
	end
end
