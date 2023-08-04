from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def dashboard():
    return render_template('dashboard-1.html')

if __name__ == '__main__':
    app.run(debug=True)
