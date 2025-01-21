$(document).ready(function () {

     // Hide all accordion content initially
    $('.accordion-content').hide();
     // Event handler for the first accordion item
    $('#accordion-button-1').on('click', () => {
        // Toggle the visibility of the content for the first item
        $('#accordion-content-1').toggle();
         // Hide content for other items
        $('#accordion-content-2').hide();
        $('#accordion-content-3').hide();
        $('#accordion-content-4').hide();
        $('#accordion-content-5').hide();
         // Toggle rotation class for the arrow icon of the first button
        $('#up1').toggleClass('rotate');
        // Remove rotation class from other buttons
        $('#up2').removeClass('rotate');
        $('#up3').removeClass('rotate');
        $('#up4').removeClass('rotate');
        $('#up5').removeClass('rotate');
    })
       // Event handler for the second accordion item
    $('#accordion-button-2').on('click', () => {
         // Toggle the visibility of the content for the second item
        $('#accordion-content-2').toggle();
            // Hide content for other items
        $('#accordion-content-1').hide();
        $('#accordion-content-3').hide();
        $('#accordion-content-4').hide();
        $('#accordion-content-5').hide();
         // Toggle rotation class for the arrow icon of the second button
        $('#up2').toggleClass('rotate');
          // Remove rotation class from other buttons
        $('#up1').removeClass('rotate');
        $('#up3').removeClass('rotate');
        $('#up4').removeClass('rotate');
        $('#up5').removeClass('rotate');
    })
       // Event handler for the third accordion item
    $('#accordion-button-3').on('click', () => {
        // Toggle the visibility of the content for the third item
        $('#accordion-content-3').toggle();
        // Hide content for other items
        $('#accordion-content-2').hide();
        $('#accordion-content-1').hide();
        $('#accordion-content-4').hide();
        $('#accordion-content-5').hide();
         // Toggle rotation class for the arrow icon of the third button
        $('#up3').toggleClass('rotate');
          // Remove rotation class from other buttons
        $('#up2').removeClass('rotate');
        $('#up1').removeClass('rotate');
        $('#up4').removeClass('rotate');
        $('#up5').removeClass('rotate');
    })
       // Event handler for the fourth accordion item
    $('#accordion-button-4').on('click', () => {
        // Toggle the visibility of the content for the fourth item
        $('#accordion-content-4').toggle();
          // Hide content for other items
        $('#accordion-content-2').hide();
        $('#accordion-content-3').hide();
        $('#accordion-content-1').hide();
        $('#accordion-content-5').hide();
         // Toggle rotation class for the arrow icon of the fourth button
        $('#up4').toggleClass('rotate');
          // Remove rotation class from other buttons
        $('#up2').removeClass('rotate');
        $('#up3').removeClass('rotate');
        $('#up1').removeClass('rotate');
        $('#up5').removeClass('rotate');
    })
       // Event handler for the fifth accordion item
    $('#accordion-button-5').on('click', () => {
        // Toggle the visibility of the content for the fifth item
        $('#accordion-content-5').toggle();
            // Hide content for other items
        $('#accordion-content-2').hide();
        $('#accordion-content-3').hide();
        $('#accordion-content-4').hide();
        $('#accordion-content-1').hide();
         // Toggle rotation class for the arrow icon of the fifth button
        $('#up5').toggleClass('rotate');
        // Remove rotation class from other buttons
        $('#up2').removeClass('rotate');
        $('#up3').removeClass('rotate');
        $('#up4').removeClass('rotate');
        $('#up1').removeClass('rotate');
    })
})
