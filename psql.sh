echo "Port: $DB_PORT_5432_TCP_PORT"
echo "User: $POSTGRES_USER"

while ! psql -h db -p $DB_PORT_5432_TCP_PORT -U $POSTGRES_USER 2>/dev/null; do sleep 0.5; done;
