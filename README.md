# Real State Agency

This project uses the EasyBroker API to get properties and details of a property.

<img width="1264" alt="imagen" src="https://user-images.githubusercontent.com/39852288/146881303-3300c1f7-f601-42d6-b479-3cc216bd1417.png">
<img width="1197" alt="imagen" src="https://user-images.githubusercontent.com/39852288/146882493-44311f5e-e133-41ae-b815-2d3d7c06dc5d.png">

## Built With

- ![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white)

## Getting Started

### Installation

1. Clone the repo

   ```sh
   git@github.com:sevinchek/real-state-agency.git
   ```

### Usage

1. Install ruby gems dependencies

   ```sh
   bundle install
   ```

2. Database creation

   ```
   rails db:setup
   ```
   
2. Create a `.env` file in the root of the project and add your API KEY

   ```
   API_KEY = fkasdlfkjalñskdjfñlkajsdf
   ```

3. Run the web server

   ```sh
   rails server
   ```

4. Access to the website in a browser with the following link

   ```sh
   localhost:3000
   ```

### Test

1. For testing run:

   ```sh
   rspec spec/* --format doc
   ```

## Notes

- What was the hardest thing you had to solve while building the website?
  - The pagination feature took more time than the other features.
- Are there any areas of your code that you think isn't that "clean"?
  - Maybe the html should be improved.
- If you weren't able to finish: what were you able to complete and were you happy with your progress given the time constraints?
  - The slideshow of all photos feature.

## Author

👤 **Kevin**

- GitHub: [@sevinchek](https://github.com/sevinchek)
- Twitter: [@sevinchek](https://twitter.com/sevinchek)
- LinkedIn: [LinkedIn](https://linkedin.com/in/sevinchek)


## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/the-catalystmc/recipe-app/issues).

## Show your support

Give a ⭐️ if you like this project!

## 📝 License

This project is [MIT](https://github.com/git/git-scm.com/blob/main/MIT-LICENSE.txt) licensed.
