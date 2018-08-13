/**
 * Retrieve parameter from request URL, matching by parameter name
 * @param target String
 * @returns {*}
 */
//function handleCheckout() {
//	window.location.href = "checkout.html";
//}
//
//function handleShoppingCart() {
//	window.location.href = "shoppingCart.html?checkingValuesOnly=yes";
//}

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
 * Handles the data returned by the API, read the jsonObject and populate data into html elements
 * @param resultData jsonObject
 */

function handleResult(resultData) {

    console.log("handleResult: populating article content from resultData");

    let artTitle = jQuery("#artTitle");
    artTitle.append(resultData[0]["title"]);
    
    let artTitle2 = jQuery("#artTitle2");
    artTitle2.append(resultData[0]["title"]);
    
    let artContent = jQuery("#article");
    artContent.append(resultData[0]["content"]);


}


/**
 * Once this .js is loaded, following scripts will be executed by the browser\
 */
let articleTag = getParameterByName('tag');

// Makes the HTTP GET request and registers on success callback function handleResult
jQuery.ajax({
    dataType: "json",  // Setting return data type
    method: "GET",// Setting request method
    url: "api/article?tag=" + articleTag, // Setting request url, which is mapped by ArticleServlet
    success: (resultData) => handleResult(resultData), 
    error: function failCallBk(XMLHttpRequest, textStatus, errorThrown) {
        alert("An error occurred while processing your request. Please try again.");
    }
});