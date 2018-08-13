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

/**
 * Takes a string and capitalizes the first letter of each word
 */
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
    
    let titleStr = jQuery("#title");
    titleStr.append("SoFishticated: "+ toUpper(resultData[0]["name"]));
    
    let planttitleStr = jQuery("#plantTitle");
    planttitleStr.append(toUpper(resultData[0]["name"]));
    
    let plantImg = jQuery("#plantPic");
    plantImg.append("<img src=\"" + resultData[0]["imagePath"]  + "\" </td>");

    console.log("handleResult: populating plant table from resultData");

    let plantTableBodyElement = jQuery("#plant_table_body");

    // Concatenate the html tags with resultData jsonObject to create table rows
    let rowHTML = "";
    
    rowHTML += "<tr>";
    rowHTML += "<td>" + resultData[0]["type"] + "</td>";
    rowHTML += "<td>" + resultData[0]["careLvl"] + "</td>";
    rowHTML += "<td>" + resultData[0]["growth"] + "</td>";
    rowHTML += "<td>" + resultData[0]["light"] + "</td>";
    rowHTML += "<td>" + resultData[0]["co2"] + "</td>";
    rowHTML += "</tr>";

    plantTableBodyElement.append(rowHTML);
    
    let plantDesc = jQuery("#desc");
    plantDesc.append(resultData[0]["description"]);

}


/**
 * Once this .js is loaded, following scripts will be executed by the browser\
 */

// Get id from URL
let plantId = getParameterByName('id');


// Makes the HTTP GET request and registers on success callback function handleResult
jQuery.ajax({
    dataType: "json",  // Setting return data type
    method: "GET",// Setting request method
    url: "api/single-plant?id=" + plantId, 
    success: (resultData) => handleResult(resultData), 
    error: function failCallBk(XMLHttpRequest, textStatus, errorThrown) {
        alert("An error occurred while processing your request. Please try again.");
    }
});