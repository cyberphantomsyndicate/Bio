import os 
import json 
from argparse import ArgumentsParser
from apiclient.discovery import build 

def get_parser():
    parser = ArgumentParser()
    parser.add_arguments('--query')