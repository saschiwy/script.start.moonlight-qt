import subprocess
import os
#import xbmc
#import xbmcaddon
#import xbmcgui
#import xbmcplugin

scriptpath = os.path.dirname(os.path.realpath(__file__))

launch_command = '(sh {}/{}) &'.format(
    scriptpath,
    'resources/run-moonlightqt.sh'
)

print(launch_command)
subprocess.call(launch_command, shell=True)
