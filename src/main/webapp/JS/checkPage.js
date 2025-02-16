/**
 * 
 */

const form = document.getElementById('read-form');
const checkbox = document.querySelector('.read-doc');
const preLoader = document.querySelector('.pre-loader');
const loader = document.querySelector('.loader');

preLoader.style.display = 'none';
loader.style.display = 'none';

checkbox.addEventListener('change', function (event) {
	/*event.preventDefault();*/
	if(checkbox.checked)
	console.log("Hello");
    preLoader.style.display = 'flex';
    preLoader.style.backgroundColor = 'rgba(255, 255, 255, 0.7)';
    loader.style.display = 'block';

    setTimeout(function () {
		form.submit();
        preLoader.style.display = 'none';
        loader.style.display = 'none';
    }, 2000)
});

/*setTimeout(function() {
	const successMsg = document.querySelector('.success-msg');
	if (successMsg) {
	    successMsg.style.display = 'none';
	}

	const errorMsg = document.querySelector('.error-msg');
	if (errorMsg) {
	    errorMsg.style.display = 'none';
	}
}, 5000);*/
	