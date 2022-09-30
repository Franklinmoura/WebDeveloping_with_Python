# -*- coding: utf-8 -*-
from crypt import methods
from distutils.cmd import Command
from tkinter import Toplevel, Button, Tk, Menu  
from genericpath import isfile
import pathlib
from xml.dom import minidom
import os
import re
import time
import patoolib
import webbrowser
import datetime
from flask_dropzone import Dropzone
from flask import Flask, flash, jsonify, make_response, redirect, request, url_for, render_template
from flask import Blueprint
basedir = os.path.abspath(os.path.dirname(__file__))

app = Flask(__name__)

app.config.update(
    UPLOADED_PATH=os.path.join(basedir, 'uploads'),
    # Flask-Dropzone config:
    DROPZONE_MAX_FILE_SIZE=4096,  # set max size limit to a large number, here is 1024 MB
    DROPZONE_TIMEOUT=5 * 60 * 1000  # set upload timeout to a large number, here is 5 minutes
)

dropzone = Dropzone(app)


@app.route('/', methods=['POST', 'GET'])
def upload():
    if request.method == 'POST':
        f = request.files.get('file')
        f.save(os.path.join(app.config['UPLOADED_PATH'], f.filename))  
        directory = "LogsExtracted"
        parent_dir = "."
        path = os.path.join(parent_dir, directory,( ""+ input("Type the customer's or TSE's name: ") + "-" + datetime.datetime.now().strftime('%Y-%m-%d_%H-%M-%S')))
        os.makedirs(path)
        for root, subdir, filename in os.walk(".",topdown=False):
            for file_path in filename:
                if file_path.endswith('.zip') or file_path.endswith(".tgz"):
                    name = os.path.join(root, file_path)
                    patoolib.extract_archive(name, outdir=path)
                    for root, subdir, filename in os.walk(path):
                        for file in filename:
                            if file.endswith(".tgz"):
                                name = os.path.join(root, file)
                                patoolib.extract_archive(name, outdir=path)
                                pass
                            
                        
    return render_template('index.html')
 






if __name__ == '__main__':
    app.run(debug=True)