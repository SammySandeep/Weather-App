# Ruby on Rails Weather Application

This application displays the weather.

## Getting started

To get started with the app, clone the repo and then install the needed Ruby on Rails version and gems:

    Ruby version :- 2.7.1
    Rails version :- 6.1.7.4

    ```bash
    > bundle install --without production
    ```

Obtain an API Key
    
    - Sign up for a free account at https://openweathermap.org/api and obtain an API key.


Create a .env file in the project root and add your OpenWeatherMap API key:
    
    # .env
    OPENWEATHERMAP_API_KEY=YOUR_OPENWEATHERMAP_API_KEY


Finally, run the test suite to verify that everything is working correctly:

    ```bash
    > rails test
    ```

If the test suite passes, you'll be ready to run the app in a local server:

    ```bash
    > rails server
    ```