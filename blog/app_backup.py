from flask import Flask, jsonify, request
import json


app = Flask(__name__)


@app.route("/")


def hello_world():
    return "Hello, world!"



@app.route("/fancy")
def hello_world_fancy():
    return """


<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Microblog</title>
  <link rel="stylesheet" href="./static/css/styles.css" />
</head>
<body>
  <header class="navbar">
    <div class="navbar__brand">
      <img class="navbar__logo" src="./logo/logo.svg" alt="The Microblog logo" />Microblog
    </div>
    <ul class="navbar__navigation">
      <li class="navbar__navigation-item">
        <a href="#" class="navbar__link">Recent</a>
      </li>
      <li class="navbar__navigation-item">
        <a href="#" class="navbar__link">Calendar</a>
      </li>
    </ul>
  </header>
  <main class="main">
    <section>
      <h1>Add new entry</h1>
      <form class="form" method="POST">
        <p class="form__input">
          <label for="entry" class="form__label">Entry contents:</label>
          <textarea name="content" id="entry" class="form__textarea"></textarea>
        </p>
        <button type="submit" class="form__submit">Add entry</button>
      </form>
    </section>
    <section>
      <h1>Recent posts</h1>

        <article class="entry">
          <div>
            <h2 class="entry__title">A bit of a chill day todasy</h2>
            <time class="entry__date" datetime="05-10-2022">• May 10</time>
          </div>
          <p class="entry__content">
            Today I couldn't do much programin, but that's OK! Can't be too awesome every day now!
          </p>
        </article>
      
    </section>
  </main>
  
  <footer class="footer">
    <div class="footer__content">
      <section class="left">
        <a class="footer__item">Made by Franklin Ramos de Moura</a>
        <a class="footer__item">Check out my other projects</a>
      </section>
      <section class="right">
        <div class="footer__column">
          <a class="footer__item">Recent</a>
          <a class="footer__item">Calendar</a>
        </div>
        <div class="footer__column">
          <a class="footer__item" href="#">About</a>
          <a class="footer__item">How this was made</a>
        </div>
      </section>
    </div>
  </footer>
</body>
</html>


"""

if __name__ == '__main__':
    app.run(debug=True)