document.addEventListener("DOMContentLoaded", function() {
    const searchForm = document.querySelector(".search-form");
    const searchInput = document.querySelector(".search-form input[type='text']");
    const resultsContainer = document.querySelector("tbody");
  
    function fetchSearchResults(query) {
      const url = `${searchForm.action}?search=${encodeURIComponent(query)}`;
      fetch(url)
        .then(response => response.text())
        .then(data => {
          resultsContainer.innerHTML = data;
        })
        .catch(error => {
          console.error("Error fetching search results:", error);
        });
    }
  
    searchInput.addEventListener("keyup", function() {
      fetchSearchResults(searchInput.value);
    });
  });
  