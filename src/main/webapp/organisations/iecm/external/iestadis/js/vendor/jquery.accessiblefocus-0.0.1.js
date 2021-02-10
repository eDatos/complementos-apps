/*! 
 * jQuery accessiblefocus - v0.0.1 - 2014-06-23
 * Copyright (c) 2014 @alfonsomartinde; Licensed MIT

 * @date: 23/06/2014
 * @version: 0.0.1
 * @desc:
 *
 *     WCAG2.0: 'Pauta 2.4.7 Focus Visible'. SCR31.
 *     Foco accesible y llamativo sólo con tabulador (no al hacer click)
 *     Con esta función marcamos el foco cuando navegamos por teclado, mediante 
 *     el tabulador; pero si el foco lo hacemos cuando navegamos con ratón,
 *     haciendo click, no marcamos nada.
 * 
 * @usage: 
 *
 *     CSS:
 *
 *         .marcafoco:focus,
 *         .marcafoco.foco {
 *             background-image: none !important;
 *             background-color: #ff0 !important;
 *             color:#...... !important;
 *         }
 *
 *     JavaScript:
 *
 *         $( selector ).accessibleFocus( options );
 * 
 */
;(function( defaults, $, window, document, undefined ) {

    'use strict';

    $.fn.extend({
        accessiblefocus: function( options ) {
            options = $.extend( {}, defaults, options );
            return $( this ).each( function() {
                $( this ).removeClass( "marcafoco" );
                $( this ).on({
                    keyup: function( e ){
                        if( e.keyCode === 9 ) {
                            $( this ).addClass( options.claseCSS );
                            return false;
                        }
                    },
                    focusout: function( e ){
                        $( this ).removeClass( options.claseCSS )
                    },
                    mouseout: function( e ){
                        $( this ).blur();
                    }
                });
            });
        }
    });
})({
    claseCSS:      "foco",
    selector:      ".marcafoco",
    otherProperty: "value2"
}, jQuery, window, document );