/**
 * Retrieve parameter from request URL, matching by parameter name
 * @param target String
 * @returns {*}
 */

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

/**
 * Handles the data returned by the API, read the jsonObject and populate data into html elements
 * @param resultData jsonObject
 */

function handleResult(resultData) {

	console.log("handleResult: populating plant info from resultData");

	// populate the plant list table
	let sortAttr = getParameterByName('sortBy');
	let limit = getParameterByName('numVals');
	let offset = getParameterByName('firstVal');

	// Populate the plant table
	// Find the empty table body by id "plant_table_body"
	let plantTableBodyElement = jQuery("#plant_table_body");

	// Concatenate the html tags with resultData jsonObject to create table rows
	for (let i = 0; i < Math.min(limit, resultData.length); i++) {
		let rowHTML = "";
		rowHTML += "<tr>";
		rowHTML += "<td><a href=\"single-plant.html?id=" + resultData[i]["plantId"] 
		+ '">' + "<img src=\"" + resultData[i]["imagePath"]  + "\"/></a></td>";
		rowHTML += "<td><a href=\"single-plant.html?id=" + resultData[i]["plantId"] 
		+ '">' + toUpper(resultData[i]["name"])+ '</a>' + "</td>";
		rowHTML += "<td>" + toUpper(resultData[i]["type"]) + "</td>";
		rowHTML += "<td>" + toUpper(resultData[i]["careLvl"]) + "</td>";

		rowHTML += "</tr>";

		// Append the row created to the table body, which will refresh the page
		plantTableBodyElement.append(rowHTML);
	}


	/* Creates hyperlinks for Prev & Next for pagination */
	let pages = jQuery("#pagination");

	if(offset!=0){
		var prevValNum = parseInt(offset)-parseInt(limit);
		if(prevValNum<0){ prevValNum = 0;}
		let pageLinks = "";
		pageLinks += "<li>";
		pageLinks +=
			'<a href="plant-list.html?sortBy=' + sortAttr + "&numVals=" + limit +"&firstVal=" + prevValNum.toString() +'">'
			+ "Prev" +    
			'</a>';
		pageLinks += "</li>";
		pages.append(pageLinks);
	}
	if(resultData.length >= parseInt(limit)){
		var nextMovieNum = parseInt(offset)+parseInt(limit);
		let pageLinks = "";
		pageLinks += "<li>";
		pageLinks +=
			'<a href="plant-list.html?sortBy=' + sortAttr + "&numVals=" + limit +"&firstVal=" + nextMovieNum.toString() +'">'
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
				'<a href="plant-list.html?sortBy=' + sortAttr + "&numVals=" + resPerPageOptions[i] +"&firstVal=" + offset +'">'
				+ resPerPageOptions[i] +   
				'</a>';
			rppLinks += "</li>";

			resPerPage.append(rppLinks);
		}
	}

}


/**
 * Once this .js is loaded, following scripts will be executed by the browser\
 */
let sortAttr = getParameterByName('sortBy');
let limit = getParameterByName('numVals');
let offset = getParameterByName('firstVal');


//Makes the HTTP GET request and registers on success callback function handleResult
jQuery.ajax({
	dataType: "json",  // Setting return data type
	method: "GET",// Setting request method
	url: "api/plant-list?sortBy=" + sortAttr +
	"&numVals="+ limit + "&firstVal=" + offset, // Setting request url, which is mapped by PlantServlet
	success: (resultData) => handleResult(resultData), 
	error: function failCallBk(XMLHttpRequest, textStatus, errorThrown) {
		alert("An error occurred while processing your request. Please try again.");
	}
});