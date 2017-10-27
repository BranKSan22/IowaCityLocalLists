/*
 * Filter to enable angular to trust html so it can be displayed on the page
*/
(function () {
    "use strict";
    var myApp = angular.module("ice");
    myApp.filter("trustHtml", function($sce) {
        return function(html) {
            return $sce.trustAsHtml(html);
        };
    });
} )();
