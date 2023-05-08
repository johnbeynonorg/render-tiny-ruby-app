if [ "$IS_PULL_REQUEST" = 'true' ]
	then
	pg_dump -d $SOURCE_DB_URL | psql $DB_URL
fi