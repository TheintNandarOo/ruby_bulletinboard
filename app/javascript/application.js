// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "controllers"
window.onload = function () {
    $(function(){
        var flashDurationInSeconds = 5;
        var flashContainerId = 'flash-messages';
    
        function removeFlashMessages() {
        $('#' + flashContainerId).remove();
        }
    
        setTimeout(removeFlashMessages, flashDurationInSeconds * 1000);
    })
};