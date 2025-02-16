/**
 * 
 */

 
const lists = document.querySelectorAll('.side-content-list');
console.log(lists);

lists.forEach(list => {
    const unorderedList = list.querySelector('.side-list');
    const header = list.querySelector('.side-list-head');
    // console.log(unorderedList);
    // console.log(header);

    header.addEventListener('click', function() {
        // console.log("Before toggle:", unorderedList.classList.contains('current'));
        unorderedList.classList.toggle('current');
        // console.log("After toggle:", unorderedList.classList.contains('current'));
    });
});