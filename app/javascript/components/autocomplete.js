function autocomplete() {
  document.addEventListener("DOMContentLoaded", function() {
    const guitarAddress = document.getElementById('guitar_address');

    if (guitarAddress) {
      const autocomplete = new google.maps.places.Autocomplete(guitarAddress, { types: [ 'geocode' ] });
      google.maps.event.addDomListener(guitarAddress, 'keydown', function(e) {
        if (e.key === "Enter") {
          e.preventDefault(); // Do not submit the form on Enter.
        }
      });
    }
  });
}

export { autocomplete };