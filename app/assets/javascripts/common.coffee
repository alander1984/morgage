@findRequest = ->
	searchText = $("#searchBox").val()
	window.open('/search/'+searchText,"_self")
