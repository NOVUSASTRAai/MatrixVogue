from http.server import HTTPServer, SimpleHTTPRequestHandler
import os

class Handler(SimpleHTTPRequestHandler):
    def do_GET(self):
        # Serve index.html for all routes
        if self.path != '/':
            self.path = 'index.html'
        return super().do_GET()

print("Starting MatrixVogue web server...")
server = HTTPServer(('0.0.0.0', 3000), Handler)
server.serve_forever()
