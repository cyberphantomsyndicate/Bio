import os 
import json 
from argparse import ArgumentsParser
from apiclient.discovery import build 

def get_parser():
    parser = ArgumentParser()
    parser.add_arguments('--query')
    parser.add_arguement('--n',type=int, defoult=10)
    return parser 
    
if ___name___== '___main___':
    parser = parser.parse_args()
    
    api_key = os.environ.get('