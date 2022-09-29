from flask import Flask, render_template


app = Flask(__name__)


@app.route("/")

def render_loops_for():
    planets = [
        "Mercury",
        "Venus",
        "Earth",
        "Mars",
        "Jupter",
        "Saturn",
        "Uranus",
        "Neptune",
    ]

    FCOe = [
        "Intel X510",
        "Intel X520",
        "Intel X710",
        "Intel X720",
        "Intel X740",
        
        
        ]
    
        #return render_template("index.html", movies=movies, cars=cars, moons=moons)
    return render_template("index2.html", planets=planets, FCOe=FCOe)


if __name__ == '__main__':
    app.run(debug=True)