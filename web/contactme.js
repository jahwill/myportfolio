

function gotoContactMe() {
    window.location.href = "contactme.html";
}







// function handleFormSubmit(formData, targetUrl) {




//     // var form = e.target;
//     var data = formData;         // get the values submitted in the form

//     var url = targetUrl;
//     var xhr = new XMLHttpRequest();
//     xhr.open('POST', url);

//     xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
//     xhr.onreadystatechange = function () {
//         console.log(xhr.status, xhr.statusText);
//         console.log(xhr.responseText);

//         alert('message sent');

//         return;
//     };
//     // url encode form data for sending as post data
//     var encoded = Object.keys(data).map(function (k) {
//         return encodeURIComponent(k) + "=" + encodeURIComponent(data[k]);
//     }).join('&');
//     xhr.send(encoded);

//     return true;
// }


