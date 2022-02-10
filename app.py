from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World! My name is Israel Andrade! And this works as a charm now!"

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)