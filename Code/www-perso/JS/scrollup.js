        jQuery(function(){
        $(function () {
        $(window).scroll(function () {
        if ($(this).scrollTop() > 300 ) { 
        $('#scrollUP').css('right','10px');
        } else { 
        $('#scrollUP').removeAttr( 'style' );
        }
         
        });
        });
        });