/**
 * 
 */

const imageArray = ["./Images/pin4.jpg", "./Images/pin5.jpg", "./Images/pin6.jpg", "./Images/pin7.jpg", "./Images/pin8.jpg"];
let currentImage = 0;

function changeImage()
{
    const MyImage = document.getElementById("home-pin");
    MyImage.src = imageArray[currentImage];

    currentImage++;

    if(currentImage >= imageArray.length)
    {
        currentImage = 0;
    }

    setTimeout(changeImage, 10000);
}

document.addEventListener("DOMContentLoaded", function() {
    changeImage();
})