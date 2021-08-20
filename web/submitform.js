


window.addEventListener('load', function () {
    firsname = document.getElementById('firtsname');
    firsname.focus();
});

window.addEventListener('scroll', actionsticky);
function actionsticky() {
    const header = document.querySelector('header');
    header.classList.toggle("sticky", window.scrollY > 0);
}

function actionsticky() {
    const header = document.querySelector('header');
    header.classList.toggle("sticky", window.scrollY > 0);

}
const myform = document.getElementById("gform");


const firstname = document.myform.Firstname;
const surname = document.myform.Surname;
const mobile = document.myform.mobile;
const email = document.myform.email;
const text = document.myform.message;
firstname.addEventListener('textInput', verifyfirsname);
surname.addEventListener('textInput', verifysurname);
mobile.addEventListener('textInput', verifymobile);
email.addEventListener('textInput', verifyemail);
myform.addEventListener('submit', submitfunction);

const fnamelabel = document.getElementById("fnamelabel");
const snamelabel = document.getElementById('snamelabel');
const emaillabel = document.getElementById('emaillabel');
const mobilelabel = document.getElementById('mobilelabel');
const firestorestatus = document.getElementById("firestoreStatus");
const alerttext = document.getElementById("alerttxt");



function submitfunction(e) {
    var regex = /^(0\s?)?(\(\d{3}\)|\d{3})[\s\-]?\d{3}[\s\-]?\d{4}$/;


    if (firstname.value == null || firstname.value == "") {

        //this section test if entered value is valid and not empty for this field
        fnamelabel.style.visibility = "visible";
        fnamelabel.innerHTML = "Name field must not be empty"
        firstname.focus();
        e.preventDefault();

        // return false;
    }

    if (surname.value == null || surname.value == "") {
        //this section test if entered value is valid and not empty fot surname field

        snamelabel.innerHTML = "Surname field can not be empty";
        snamelabel.style.visibility = "visible";
        e.preventDefault();
        // return false;
    }

    if (email.value == null || email.value == "") {
        //this section test if entered value is valid and not empty for email field
        // alert('field is empty');
        emaillabel.innerHTML = "Email field can not be empty";
        emaillabel.style.visibility = "visible";
        e.preventDefault();
        // return false;
    }


    if (mobile.value == null || mobile.value == "") {
        //this section test if entered value is valid and not empty for mobile field
        // alert('field is empty');
        mobilelabel.innerHTML = "Mobile field can not be empty ";
        mobilelabel.style.visibility = "visible";
        e.preventDefault();
        // return false;

    }
    if (regex.test(mobile.value) == false) {
        //this section test if entered value is valid mobile number
        mobilelabel.innerHTML = "not a valid number";
        mobilelabel.style.visibility = "visible";
        e.preventDefault();
    }
    else {
        // return true;
        e.preventDefault();
        // alert(firstname.value);

        handleFormSubmit();
        firstname.value = "";
        surname.value = "";
        email.value = "";
        mobile.value = ""
        text.value = "";
        // saveToFireStore();


    }

}






//verify firstname
function verifyfirsname() {
    if (firstname.value.length >= 2) {
        fnamelabel.style.visibility = "hidden"
        fnamelabel.innerHTML = "";
    }
}

//verify surname
function verifysurname() {
    if (surname.value.length >= 2) {
        snamelabel.style.visibility = "hidden"
        snamelabel.innerHTML = "";
    }
}

//verify mobile
function verifymobile() {
    var regex = /^(0\s?)?(\(\d{3}\)|\d{3})[\s\-]?\d{3}[\s\-]?\d{4}$/;

    if (mobile.value.length >= 2 || Number.isInteger(mobile.value) == true) {
        mobilelabel.style.visibility = "hidden"
        mobilelabel.innerHTML = "";
    }

    if (regex.test(mobile.value) == true) {
        mobilelabel.style.visibility = "hidden"
        mobilelabel.innerHTML = "";
    }
    else {
        mobilelabel.style.visibility = "visible"
        mobilelabel.innerHTML = "not a valid number";
    }

}

//verify email
function verifyemail() {
    const regexpression = /(^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$)/;


    if (email.value.length >= 2) {
        emaillabel.style.visibility = "hidden"
        emaillabel.innerHTML = "";
    }
    if (regexpression.test(email.value) == false) {
        emaillabel.innerHTML = "Email is not valid";
        emaillabel.style.visibility = "visible";

    }
    else {
        emaillabel.style.visibility = "hidden"
        emaillabel.innerHTML = "";
        // return true;
    }
}







// get all data in form and return object
function getFormData(myform) {
    var elements = myform.elements;

    var fields = Object.keys(elements).filter(function (k) {
        return (elements[k].name !== "honeypot");
    }).map(function (k) {
        if (elements[k].name !== undefined) {
            return elements[k].name;
            // special case for Edge's html collection
        } else if (elements[k].length > 0) {
            return elements[k].item(0).name;
        }
    }).filter(function (item, pos, self) {
        return self.indexOf(item) == pos && item;
    });

    var formData = {};
    fields.forEach(function (name) {
        var element = elements[name];

        // singular form elements just have one value
        formData[name] = element.value;

        // when our element has multiple items, get their values
        if (element.length) {
            var data = [];
            for (var i = 0; i < element.length; i++) {
                var item = element.item(i);
                if (item.checked || item.selected) {
                    data.push(item.value);
                }
            }
            formData[name] = data.join(', ');
        }
    });

    // add form-specific values into the data
    formData.formDataNameOrder = JSON.stringify(fields);
    formData.formGoogleSheetName = myform.dataset.sheet || "responses"; // default sheet name
    formData.formGoogleSendEmail = myform.dataset.email || ""; // no email by default

    console.log(formData);
    return formData;
}







function handleFormSubmit() {

    // var form = e.target;
    var data = getFormData(myform);         // get the values submitted in the form

    var url = myform.getAttribute('action');
    var xhr = new XMLHttpRequest();
    xhr.open('POST', url);

    xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
    xhr.onreadystatechange = function () {
        console.log(xhr.status, xhr.statusText);
        console.log(xhr.responseText);


        alerttext.innerHTML = "Thank You I Will reply! !";
        firestorestatus.style.visibility = 'visible';
        firestorestatus.style.border = '1.5px solid blue';
        return;
    };
    // url encode form data for sending as post data
    var encoded = Object.keys(data).map(function (k) {
        return encodeURIComponent(k) + "=" + encodeURIComponent(data[k]);
    }).join('&');
    xhr.send(encoded);

    setTimeout(function () {
        firestorestatus.style.visibility = 'hidden';


    }, 8000);
}


