from flask import Flask ,render_template,request

application = Flask(__name__)
@application.route("/")

# def hello_world():
#    return "Hello, World!"

@application.route('/')
def index():
    return render_template('index.html')
