(function ($) {
    "use strict";

    // Spinner


    $(function() {
        $('#spinner').removeClass('show');
    });

    var spinner = function () {
        setTimeout(function () {
            if ($('#spinner').length > 0) {
                $('#spinner').removeClass('show');
            }
        }, 20);
    };
    spinner();
    
    // Initiate the wowjs
    new WOW().init();

    // Facts counter
    $('[data-toggle="counter-up"]').counterUp({
        delay: 10,
        time: 2000
    });


    // Date and time picker
    $('.date').datetimepicker({
        format: 'L'
    });
    $('.time').datetimepicker({
        format: 'LT'
    });


 
    
})(jQuery);

