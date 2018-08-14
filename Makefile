.SILENT:

#------------------------------------------------------------------
# Init webserver
#------------------------------------------------------------------

remove_csv:
	rm -f product.csv

create_db:
	python core/db/database.py


crawler:
	python core/modules/crawler.py

indexer:
	python core/modules/indexer.py


processor:
	python core/modules/processor.py -w 4 -q 'queue_name'


run: remove_csv create_db crawler indexer