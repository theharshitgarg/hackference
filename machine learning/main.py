from flask import Flask,render_template,request


app = Flask(__name__)

@app.route("/")


def hello():
	return "Hello World!"

@app.route("/result",methods=["POST","GET"])
def recieve_form():
	if request.method == "POST":
		result = request.form

		name = request.form["name"]
		stream = request.form["stream"]
		extra = request.form["extra"]


		print("RESULT : ",result)
		return render_template("recommend.html",result=result)

if (__name__ == "__main__"):
	app.run(port = 5000,debug=True)
