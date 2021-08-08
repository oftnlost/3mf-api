import os
import sys
import psycopg2

try:
    psycopg2.connect(
        """
        host=db
        dbname=postgres
        user=postgres
        password=postgres
        """
    )
except:
    sys.exit(1)

