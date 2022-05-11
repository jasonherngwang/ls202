const autoCompleteJS = new autoComplete({
          placeHolder: "Select an airport",
          data: {
              src: [
                { "iata": "LAX", "name": "LAX - Los Angeles"},
                { "iata": "HNL", "name": "HNL - Honolulu"},
                { "iata": "HND", "name": "HND - Tokyo"}
              ],
              keys: ["name"],
              cache: true,
          },
          resultsList: {
                element: (list, data) => {
                    if (!data.results.length) {
                        // Create "No Results" message element
                        const message = document.createElement("div");
                        // Add class to the created element
                        message.setAttribute("class", "no_result");
                        // Add message text content
                        message.innerHTML = `<span>Found No Results for "${data.query}"</span>`;
                        // Append message element to the results list
                        list.prepend(message);
                    }
                },
                noResults: true,
            },
          resultItem: {
              highlight: true
          },
          events: {
              input: {
                  selection: (event) => {
                      const selection = event.detail.selection;
                      autoCompleteJS.input.value = selection.value.iata;
                  }
              }
          }
      });