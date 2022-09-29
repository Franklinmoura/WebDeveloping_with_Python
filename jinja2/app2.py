from flask import Flask, render_template


app = Flask(__name__)

class GalileanMoons:
    def __init__(self, first, second, third, fourth):
        self.first = first
        self.second = second
        self.third = third
        self.fourth = fourth


@app.route("/")
def render_data_structure():
    movies = [
        
        "Leon the Professional",
        "The Usual Suspects",
        "A Beautiful Mind",
        "A Beatiful Wamem",
        "The Lemon",
        "The blue Aple"
    ]
    
    cars = {
        "Brand": "Tesla",
        "Model": "Roadstar",
        "Year": "2020",
    }
    
    moons = GalileanMoons("Io", "Europa", "Ganymede", "Gallisto")
    
    kwargs = {
        "movies": movies,
        "cars": cars,
        "moons" : moons,
        
    }
    
    company = "Linux"
    
    
    
    #return render_template("index.html", movies=movies, cars=cars, moons=moons)
    return render_template("index.html", **kwargs, company=company)


if __name__ == '__main__':
    app.run(debug=True)