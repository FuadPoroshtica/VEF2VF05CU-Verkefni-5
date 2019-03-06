import os
from flask import Flask, render_template, redirect, request, make_response


app = Flask(__name__)


@app.route("/")
def index():
    return render_template('form.tpl')



@app.route('/data', methods = ['POST'])
def gogn():
    if request.method == 'POST':
        kwargs={
            'name': request.form['nafn'],
            'home': request.form['heimili'],
            'email': request.form['email'],
            'phone': request.form['simi'],
            'food': request.form['matur'],
            'course': request.form.getlist('namsk'),
        }
        sum = 0
        for item in request.form.getlist('namsk'):
            sum += 4000

        sum = sum
        sumMvisk = 1.24*sum

        return render_template('namskeid.tpl',**kwargs, sum=sum,total=sumMvisk)

@app.errorhandler(404)
def not_found(error):
    resp = make_response(render_template('error.tpl'), 404)
    resp.headers['X-Something'] = 'A value'
    return resp


if __name__ == '__main__':
    #app.run(debug=True, use_reloader=True)
    app.run()
