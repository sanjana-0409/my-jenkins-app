from flask import Flask, render_template, request

app = Flask(__name__)

# This route serves the main registration page
@app.route('/')
def index():
    return render_template('registration.html')

# This route handles the form submission
@app.route('/register', methods=['POST'])
def register():
    # Get the username from the form
    username = request.form['username']
    # Show a simple greeting page
    return render_template('greetings.html', name=username)

if __name__ == "__main__":
    # Run the app on host 0.0.0.0 so it's accessible
    app.run(host='0.0.0.0', port=5000)