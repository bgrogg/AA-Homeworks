console.log("Hello from the JavaScript console!");

// Your AJAX request here

$.ajax({
  type: 'GET',
  url: 'http://api.openweathermap.org/data/2.5/weather?q=London&appid=0cf7540195ec67127e38bdd46a30040f',
  success(data) {
    console.log("The weather in London is:")
    console.log(data);
  },
  error() {
    console.log("An error has occurred.");
  },
});

console.log("And now a message from outside the Ajax call.")

// Add another console log here, outside your AJAX request
