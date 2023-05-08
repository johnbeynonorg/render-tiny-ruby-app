if [ "$IS_PULL_REQUEST" = 'true' ]
	pg_dump -d $SOURCE_DB_URL --data-only | psql -d $DB_urL
fi