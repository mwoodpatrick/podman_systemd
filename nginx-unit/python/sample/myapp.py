from flask import Flask ,render_template,request

application = Flask(__name__)

@application.route("/hello")
def hello_world():
    return "Hello, World from app!"

@application.route("/goodbye")
def goodbye():
    return "Goodbye Cruel world!"

@application.route('/')
def index():
	return render_template('index.html')

@application.route('/sample',methods=['POST'])
def sample():
	message = request.form['message']
	return render_template('post.html',message=message)
