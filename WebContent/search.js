function getParameterByName(target) {
	// Get request URL
	let url = window.location.href;
	// Encode target parameter name to url encoding
	target = target.replace(/[\[\]]/g, "\\$&");

	// Ues regular expression to find matched parameter value
	let regex = new RegExp("[?&]" + target + "(=([^&#]*)|&|#|$)"),
	results = regex.exec(url);
	if (!results) return null;
	if (!results[2]) return '';

	// Return the decoded parameter value
	return decodeURIComponent(results[2].replace(/\+/g, " "));
}

function toUpper(str) {
	return str
	.toLowerCase()
	.split(' ')
	.map(function(word) {
		return word[0].toUpperCase() + word.substr(1);
	})
	.join(' ');
}


function handleResult(resultData) {

//	console.log("handleResult: populating info from resultData");

	let searchTableHeadElement = jQuery("#search_table_head");
	let searchTableBodyElement = jQuery("#search_table_body");
	if (resultData[0] != null) {
		// Concatenate the html tags with resultData jsonObject to create table rows
		if (searchBy === "Fish") {
			searchTableHeadElement.append("<tr><th>Image</th>" +
			"<th>Name</th><th>Family</th><th>Care Level</th></tr>");
			for (let i = 0; i < Math.min(limit, resultData.length); i++) {
				let rowHTML = "";
				rowHTML += "<tr>";
				rowHTML += "<td><a href=\"single-fish.html?id=" + resultData[i]["id"] 
				+ '">' + "<img src=\"" + resultData[i]["imagePath"]  + "\"/></a></td>";
				rowHTML += "<td><a href=\"single-fish.html?id=" + resultData[i]["id"] 
				+ '">' + toUpper(resultData[i]["name"])+ '</a>' + "</td>";
				rowHTML += "<td>" + toUpper(resultData[i]["type"]) +"</td>"
				rowHTML += "<td>" + toUpper(resultData[i]["careLvl"]) +"</td>"
				rowHTML += "</tr>";

				// Append the row created to the table body, which will refresh the page
				searchTableBodyElement.append(rowHTML);
			}
		}

		else if (searchBy === "Plants") {
			searchTableHeadElement.append("<tr><th>Image</th>" +
			"<th>Name</th><th>Type</th><th>Care Level</th></tr>");
			for (let i = 0; i < Math.min(limit, resultData.length); i++) {
				let rowHTML = "";
				rowHTML += "<tr>";
				rowHTML += "<td><a href=\"single-plant.html?id=" + resultData[i]["id"]  
				+ '">' + "<img src=\"" + resultData[i]["imagePath"]  + "\"/></a></td>";
				rowHTML += "<td><a href=\"single-plant.html?id=" + resultData[i]["id"]  
				+ '">' + toUpper(resultData[i]["name"])+ '</a>' + "</td>";
				rowHTML += "<td>" + toUpper(resultData[i]["type"]) +"</td>"
				rowHTML += "<td>" + toUpper(resultData[i]["careLvl"]) +"</td>"
				rowHTML += "</tr>";

				// Append the row created to the table body, which will refresh the page
				searchTableBodyElement.append(rowHTML);
			}
		}

		else{
			searchTableHeadElement.append("<tr><th>Image</th>" +
			"<th>Name</th><th>Type</th><th>Care Level</th></tr>");
			for (let i = 0; i < Math.min(limit, resultData.length); i++) {
				let rowHTML = "";
				rowHTML += "<tr>";
				rowHTML += "<td><a href=\"single-shrimp.html?id=" + resultData[i]["id"]  
				+ '">' + "<img src=\"" + resultData[i]["imagePath"]  + "\"/></a></td>";
				rowHTML += "<td><a href=\"single-shrimp.html?id=" + resultData[i]["id"]  
				+ '">' + toUpper(resultData[i]["name"])+ '</a>' + "</td>";
				rowHTML += "<td>" + toUpper(resultData[i]["type"]) +"</td>"
				rowHTML += "<td>" + toUpper(resultData[i]["careLvl"]) +"</td>"
				rowHTML += "</tr>";

				// Append the row created to the table body, which will refresh the page
				searchTableBodyElement.append(rowHTML);
			}
		}


		/* Creates hyperlinks for Prev & Next for pagination */
		let pages = jQuery("#pagination");

		if(offset!=0){
			var prevValNum = parseInt(offset)-parseInt(limit);
			if(prevValNum<0){ prevValNum = 0;}
			let pageLinks = "";
			pageLinks += "<li>";
			pageLinks +=
				'<a href="searchResults.html?searchQuery='+ searchTerm + "&searchBy=" + searchBy 
				+ "&numVals=" + limit +"&firstVal=" + prevValNum.toString() +'">'
				+ "Prev" +    
				'</a>';
			pageLinks += "</li>";
			pages.append(pageLinks);
		}
		if(resultData.length >= parseInt(limit)){
			var nextValNum = parseInt(offset)+parseInt(limit);
			let pageLinks = "";
			pageLinks += "<li>";
			pageLinks +=
				'<a href="searchResults.html?searchQuery='+ searchTerm + "&searchBy=" + searchBy 
				+ "&numVals=" + limit +"&firstVal="  + nextValNum.toString() +'">'
				+ "Next" +    
				'</a>';
			pageLinks += "</li>";
			pages.append(pageLinks);
		}

		/* Creates hyperlinks for # of results to display per page for pagination */
		if(resultData.length>10){
			let resPerPage = jQuery("#resPerPage");
			var resPerPageOptions = ["10", "25", "50", "100"];
			resPerPage.append("<li>Results Per Page:</li>");
			for(let i=0; i<resPerPageOptions.length; i++){
				let rppLinks = "";
				rppLinks += "<li>";
				rppLinks +=
					'<a href="searchResults.html?searchQuery='+ searchTerm + "&searchBy=" + searchBy 
					+ "&numVals=" + resPerPageOptions[i] +"&firstVal=" + offset +'">'
					+ resPerPageOptions[i] +   
					'</a>';
				rppLinks += "</li>";

				resPerPage.append(rppLinks);

			}
		}
	}
	else {
		let noResults = jQuery("#no_results");
		noResults.append("Sorry, there were no results for your search :(");
	}

}

let searchTerm = getParameterByName('searchQuery');
let searchBy = getParameterByName('searchBy');
let limit = getParameterByName('numVals');
let offset = getParameterByName('firstVal');

jQuery.ajax({
	dataType: "json",  // Setting return data type
	method: "GET",// Setting request method/
	url: "api/search?searchQuery="+ searchTerm + "&searchBy=" + searchBy 
	+ "&numVals=" + limit +"&firstVal=" + offset,
	success: (resultData) => handleResult(resultData) 
});