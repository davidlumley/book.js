#	book.js

jQuery plugin for controlling pages like a book.

##	Usage

###	HTML & JS

Add pages:
	
	<article class="page">
		<h1>First page</h1>
	</article>
	
	<article class="page">
		<h1>Page 2</h1>
	</article>
	
	<article class="page">
		<h1>Page 3</h1>
	</article>
	
	<article class="page">
		<h1>Page 4</h1>
	</article>

Select a parent element, and use the book method:

	$('body').book()

If using the left/up, right/down keys aren't enough, you can add links using the `previous_page` and `next_page` ids within the selected parent element:

	<a href="#" id="previous_page">back</a>
	<a href="#" id="next_page">forward</a>

###	CSS

The only necessary CSS is to hide the pages, and only display the active one:

	.page {
		display	: none;
	}
	
	.page.active {
		display	: block
	}
