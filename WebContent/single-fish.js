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

    console.log("handleResult: populating fish info from resultData");
    
    let titleStr = jQuery("#title");
    titleStr.append("SoFishticated: "+ toUpper(resultData[0]["commonName"]));
    
    let fishtitleStr = jQuery("#fishTitle");
    fishtitleStr.append(toUpper(resultData[0]["commonName"]) + " (" + resultData[0]["sciName"] + ")");
    
    let fishImg = jQuery("#fishPic");
    fishImg.append("<img src=\"" + resultData[0]["imagePath"]  + "\" </td>");

    console.log("handleResult: populating fish table from resultData");

    let fishTableBodyElement = jQuery("#fish_table_body");

    // Concatenate the html tags with resultData jsonObject to create table rows
    let rowHTML = "";
    
    rowHTML += "<tr>";
    rowHTML += "<td>" + resultData[0]["family"] + "</td>";
    rowHTML += "<td>" + resultData[0]["careLvl"] + "</td>";
    rowHTML += "<td>" + resultData[0]["temperament"] + "</td>";
    rowHTML += "<td>" + resultData[0]["waterParams"] + "</td>";
    rowHTML += "<td>" + resultData[0]["maxSize"] + "</td>";
    rowHTML += "<td>" + resultData[0]["breeding"] + "</td>";
    rowHTML += "</tr>";

    fishTableBodyElement.append(rowHTML);
    
    let fishDesc = jQuery("#desc");
    fishDesc.append(resultData[0]["description"]);
    
    let fishSexing = jQuery("#sexing");
    fishSexing.append(resultData[0]["genderID"]);

}


/**
 * Once this .js is loaded, following scripts will be executed by the browser\
 */

// Get id from URL
let fishId = getParameterByName('id');


// Makes the HTTP GET request and registers on success callback function handleResult
jQuery.ajax({
    dataType: "json",  // Setting return data type
    method: "GET",// Setting request method
    url: "api/single-fish?id=" + fishId, 
    success: (resultData) => handleResult(resultData), 
    error: function failCallBk(XMLHttpRequest, textStatus, errorThrown) {
        alert("An error occurred while processing your request. Please try again.");
    }
});