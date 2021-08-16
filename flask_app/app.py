from flask import Flask, render_template
import random

app = Flask(__name__)

# list of cat images
images = [
    "https://bkr-static-images.s3.ap-southeast-1.amazonaws.com/cat1.gif",
    "https://bkr-static-images.s3.ap-southeast-1.amazonaws.com/cat2.gif",
    "https://bkr-static-images.s3.ap-southeast-1.amazonaws.com/cat3.gif"
]

@app.route('/')
def index():
    url = random.choice(images)
    return render_template('index.html', url=url)

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0')