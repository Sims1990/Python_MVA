from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')

def homepage():
    return 'Test'
	#return render_template('launch.html')

if __name__ == "__main__":
    app.run()
