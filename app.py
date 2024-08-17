# import <
from os import environ
from source.frontend.layout import layout
from source.frontend.callbacks import callbacks
from source.configuration import (application, server)

# >


if (__name__ == '__main__'):
   
   host = environ.get('host')
   port = environ.get('port')
      
   objLayout = layout()
   objCallbacks = callbacks()
   
   objCallbacks.register()
   application.layout = objLayout.layout
   
   application.run(host = host, port = port)
   