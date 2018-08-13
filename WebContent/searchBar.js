/**
 *
 * Handles the submit for the search bar
 */

function submitSearchForm(formSubmitEvent) {
	console.log("submit search form");

	// Important: disable the default action of submitting the form
	//   which will cause the page to refresh
	//   see jQuery reference for details: https://api.jquery.com/submit/
	formSubmitEvent.preventDefault();

	var searchBy = $('#searchBy').find(":selected").text();
	console.log("searchBy: " + searchBy);

	var searchTerm = document.getElementById('searchText').value;
	window.location.href = "searchResults.html?searchQuery="+ searchTerm + "&searchBy=" + searchBy 
		+ "&sortBy=name&numVals=10&firstVal=0";
}

jQuery("#search_form").submit((event) => submitSearchForm(event));