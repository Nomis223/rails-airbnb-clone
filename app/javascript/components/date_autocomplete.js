function dateAutocomplete() {

  document.addEventListener("DOMContentLoaded", function() {

    const date_elements = [document.getElementById("starts_at"), document.getElementById("ends_at")];

    date_elements.forEach(function(elem) {
      elem.addEventListener("blur", function () {
        const startsAt = document.getElementById("starts_at").value;
        const endsAt = document.getElementById("ends_at").value;

        if (startsAt != "" && endsAt == "") {
          endsAtAutocomplete(startsAt)
        }

        else if (startsAt == "" && endsAt != "") {
          startsAtAutocomplete(endsAt)
        }

        else if (startsAt != "" && endsAt != "") {
          sendToLocalStorage(startsAt, endsAt)
        };
      });
    });

    function endsAtAutocomplete(startValue) {
      document.getElementById("ends_at").value = startValue;
      sendToLocalStorage(startValue, startValue);
    };

    function startsAtAutocomplete(endValue) {
      document.getElementById("starts_at").value = endValue;
      sendToLocalStorage(endValue, endValue);
    };

    function sendToLocalStorage(startValue, endValue) {
      console.log(startValue);
      console.log(endValue);
      localStorage['startValue'] = startValue;
      localStorage['endValue'] = endValue;
      retrieveFromLocalStorage();
    };
  });
};

export { dateAutocomplete };
