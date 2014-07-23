module ApplicationHelper
	def today
		content_tag(:div, content_tag(:span, "Today is #{Date.today.strftime("%A %B %d, %Y")}"), class: "date_today")
	end
end
