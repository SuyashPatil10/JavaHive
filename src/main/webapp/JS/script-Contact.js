/**
 * 
 */

function ValidateForm(event)
{
    const inputClass = document.getElementsByClassName('inputs');

    if(inputClass[0].value === null || inputClass[0].value.trim() === "")
    {   
        event.preventDefault();
        document.getElementById('error').innerHTML = "Enter the valid name";
    }
    else if(!validateEmail(inputClass[1].value))
    {
        event.preventDefault();
        document.getElementById('error').innerHTML = "Enter the valid email address"; 
    }
    else if(!validateNumber(inputClass[2].value))
    {   
        event.preventDefault();
        document.getElementById('error').innerHTML = "Enter the valid phone number"; 
    }
}


function validateEmail(email)
{
    const pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    return pattern.test(email);
}

function validateNumber(number)
{
    const pattern = /^\d{10}$/;
    return pattern.test(number);
}