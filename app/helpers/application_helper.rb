module ApplicationHelper

	#Return a title on a per-page basis.
		def title
			base_title = "Kevin's Sample App"
			if @title.nil?
				base_title
			else
				"#{base_title} | #{@title}"
			end
		end

    def logo
      image_tag("swarm_logo_small_transparent.png", :alt => "Sample App", :class => "round")
    end
end
