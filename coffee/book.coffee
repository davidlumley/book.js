$ ->
	$.fn.book = (options) ->
		current	= 0
		$el		= $(@)
		$pages	= $el.find('.page').toArray()
		
		next_page = ->
			if (current + 1) >= $pages.length
				return current = 0
			current = current + 1
			
		previous_page = ->
			if (current - 1) < 0
				 return current = $pages.length - 1
			current = current - 1
		
		$el.on 'click', 'a[data-action=navigate]', (e) ->
			e.preventDefault()
			
			$($pages[current]).removeClass 'active'
			$next_el = $($(e.currentTarget).attr('href'))
			$next_el.addClass 'active'
			
			current = $pages.indexOf($next_el[0])
			
		
		$el.on 'click', '#next_page', (e) =>
			e.preventDefault()
			$($pages[current]).removeClass 'active'
			$($pages[next_page()]).addClass 'active'
		
		$el.on 'click', '#previous_page', (e) =>
			e.preventDefault()
			$($pages[current]).removeClass 'active'
			$($pages[previous_page()]).addClass 'active'
		
		$el.on 'keydown', (e) =>
			e.preventDefault()
			key_code = e.keyCode
			
			if key_code in [37, 38, 39, 40]
				$($pages[current]).removeClass 'active'
				
			if key_code in [37, 38]
				$($pages[previous_page()]).addClass 'active'
				
			if key_code in [39, 40]
				$($pages[next_page()]).addClass 'active'
		
	
