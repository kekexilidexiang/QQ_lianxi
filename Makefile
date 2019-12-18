sever:QQ_sever.c QQ_sql.c  QQ_json.c
	gcc $^ -o $@ -lsqlite3 -ljson


client:QQ_client_main.c QQ_client_face.c QQ_json.c  QQ_sql.c
	gcc $^ -o $@ -ljson -lpthread -lsqlite3


clean:
	rm sever client

