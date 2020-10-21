import subprocess
import os

scriptpath = os.path.dirname(os.path.realpath(__file__))
subprocess.call('( bash ' + scriptpath + '/run-moonlightqt.sh  )&', shell=True)