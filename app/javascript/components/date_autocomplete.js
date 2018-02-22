function dateAutocomplete() {

  document.addEventListener("DOMContentLoaded", function() {

    const date_elements = [document.getElementById("starts_at"), document.getElementById("ends_at")];

    date_elements.forEach(function(elem) {
      elem.addEventListener("blur", function () {
        const starts_at = document.getElementById("starts_at").value;
        const ends_at = document.getElementById("ends_at").value;
        if (starts_at != "" && ends_at == "") {
          endsAtAutocomplete()
        } else if (starts_at == "" && ends_at != "") {
          startsAtAutocomplete()
        };
      });
    });

    function endsAtAutocomplete() {
      document.getElementById("ends_at").value = document.getElementById("starts_at").value
    };

    function startsAtAutocomplete() {
      document.getElementById("starts_at").value = document.getElementById("ends_at").value
    };
  });
};

export { dateAutocomplete };
