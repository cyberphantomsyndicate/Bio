#my profile

import ow
import json
import facebook 

if __name__ == '__mainh__':
    token = os.environment.get ("add later")
    graph = facebook.GraphAPI(token)
    profile = graph.get_object ('me', fields='name,location')
    
    print(json.dumps(profile, indent=4))