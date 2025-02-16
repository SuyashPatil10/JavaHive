/**
 * 
 */

document.addEventListener('DOMContentLoaded', function () {
    const links = document.querySelectorAll('.list li a');
    const currentPage = window.location.href.split('/').pop();

    links.forEach(link => {
        // Compare the last part of the href attribute of each link with the current page URL
        if (link.getAttribute('href').split('/').pop() === currentPage) {
            link.classList.add('active');
        }

        link.addEventListener('click', function () {
            // Remove the "active" class from all links
            links.forEach(otherLink => {
                otherLink.classList.remove('active');
            });

            // Add the "active" class to the clicked link
            this.classList.add('active');
        });
    });
});
