from flask import Flask

app = Flask(__name__)

print("Welcome to the Flask Application")
print("User Authentication Feature")

@app.route('/')
def home():
    return "Hello World!"

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=5000, debug=True)