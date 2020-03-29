(function( $ ) {
    $(function() {
        var $showCats = $( "#show-cats" ),
            $cats = $( "#categories" ),
            $products = $( ".product" ),
            $wrapper = $( "#products" );


            $showCats.click(function() {
                $cats.toggleClass( "visible" );
                $wrapper.toggleClass( "resize" );

                return false;

            });
        
        

    });

})( jQuery );