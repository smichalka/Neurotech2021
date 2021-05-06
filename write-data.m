uri = matlab.net.URI('http://httpbin.org/post');
res = webwrite(uri,'field1','hello','field2','world');
res.form
