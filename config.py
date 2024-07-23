import os

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'you-will-never-guess'
    MYSQL_USER = os.environ.get('MYSQL_USER') or 'admin'
    MYSQL_PASSWORD = os.environ.get('MYSQL_PASSWORD') or 'xjhMjfqcIHfXrug20G2g'
    MYSQL_HOST = os.environ.get('MYSQL_HOST') or 'vote-app-rds.c9cysu6e2wtc.us-east-1.rds.amazonaws.com'
    MYSQL_DB = os.environ.get('MYSQL_DB') or 'voting_system'
