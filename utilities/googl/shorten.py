import requests, json, sys

if len(sys.argv) < 2:
    sys.exit()

INPUT = sys.argv[1]
API_KEY = 'AIzaSyB_GMFwqU5g1DKTF21174a5Tg4BEXM0GEg'

headers = {'Content-Type': 'application/json'}
data = {"longUrl": str(INPUT)}

r = requests.post('https://www.googleapis.com/urlshortener/v1/url?key=' + API_KEY, data = json.dumps(data), headers=headers)

try:
    print json.loads(r.text)["id"]
except e:
    print 'error'
