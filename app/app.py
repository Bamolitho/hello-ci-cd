from flask import Flask

app = Flask(__name__)


@app.route("/hello")
def hello():
    return {"message": "Hello world from CI/CD! - Phase 4 completed"}


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5801)
