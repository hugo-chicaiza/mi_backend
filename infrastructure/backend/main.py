from fastapi import FastAPI
import psycopg2
import redis
from ldap3 import Server, Connection, ALL

app = FastAPI()

# Configuracion de Redis
r = redis.Redis(host="redis", port=6379)

# Configuracion PostgreSQL
conn = psycopg2.connect(
    dbname="bank",
    user="app_admin",
    password="appadmin123",
    host="db",
    port=5432
)

# Configuracion OpenLDAP
ldap_server = Server('ldap', get_info=ALL)
ldap_conn = Connection(ldap_server, user='cn=admin,dc=mybank,dc=local', password='LDAP123')
ldap_conn.bind()

# Endpoint de prueba
@app.get("/status")
def status():
    return {
        "db_connected": conn.closed == 0,
        "redis_connected": r.ping(),
        "ldap_connected": ldap_conn.bound
    }