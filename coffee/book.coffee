$ ->
	$.fn.book = (options) ->
		current	= 0
		$el		= $(@)
		$pages	= $el.find('.page')
		console.log $pages
		
		next_page = ->
			if (current + 1) >= $pages.length
				return current = 0
			current = current + 1
			
		previous_page = ->
			if (current - 1) < 0
				 return current = $pages.length - 1
			current = current - 1
		
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
			
			console.log "from page number #{current}"
			
			if key_code in [37, 38, 39, 40]
				$($pages[current]).removeClass 'active'
				
			if key_code in [37, 38]
				$($pages[previous_page()]).addClass 'active'
				
			if key_code in [39, 40]
				$($pages[next_page()]).addClass 'active'
			
			console.log "to page number #{current}"
		
	
