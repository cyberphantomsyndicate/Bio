twitter_client import get_twitter_client 
import json 
client = client.get_user(screen_name="PacktPub")
print (json.dumps(profile._json, indent=4))