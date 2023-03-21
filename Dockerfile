FROM python:3.9

WORKDIR /code

COPY ./requirements.txt /code/requirements.txt

RUN pip install --no-cache-dir -r /code/requirements.txt

COPY ./frontend_backend/all_corpus_html.csv /code/frontend_backend/						
COPY ./frontend_backend/backend.py /code/frontend_backend/						
COPY ./frontend_backend/friends.css /code/frontend_backend/						
COPY ./frontend_backend/monica_chandler.html /code/frontend_backend/						
COPY ./frontend_backend/season10.png /code/frontend_backend/						
COPY ./frontend_backend/season3.png /code/frontend_backend/						
COPY ./frontend_backend/season5.png /code/frontend_backend/						
COPY ./frontend_backend/season7.png /code/frontend_backend/						
COPY ./frontend_backend/season9.png /code/frontend_backend/						
COPY ./frontend_backend/all_corpus.csv /code/frontend_backend/						
COPY ./frontend_backend/annotated_data.csv /code/frontend_backend/						
COPY ./frontend_backend/favicon.ico /code/frontend_backend/						
COPY ./frontend_backend/friends.js /code/frontend_backend/						
COPY ./frontend_backend/season1.png /code/frontend_backend/						
COPY ./frontend_backend/season2.png /code/frontend_backend/						
COPY ./frontend_backend/season4.png /code/frontend_backend/						
COPY ./frontend_backend/season6.png /code/frontend_backend/						
COPY ./frontend_backend/season8.png /code/frontend_backend/						
COPY ./frontend_backend/seasonAll.png /code/frontend_backend/		

COPY ./graph_json/overall_relationship_change.json /code/graph_json/
COPY ./graph_json/season10_graph.json /code/graph_json/
COPY ./graph_json/season3_graph.json /code/graph_json/
COPY ./graph_json/season5_graph.json /code/graph_json/
COPY ./graph_json/season7_graph.json /code/graph_json/
COPY ./graph_json/season9_graph.json /code/graph_json/
COPY ./graph_json/season1_graph.json /code/graph_json/
COPY ./graph_json/season2_graph.json /code/graph_json/
COPY ./graph_json/season4_graph.json /code/graph_json/
COPY ./graph_json/season6_graph.json /code/graph_json/
COPY ./graph_json/season8_graph.json /code/graph_json/

COPY ./graph_png/all_seasons.png /code/graph_png/
COPY ./graph_png/season_10.png /code/graph_png/
COPY ./graph_png/season_3.png /code/graph_png/
COPY ./graph_png/season_5.png /code/graph_png/
COPY ./graph_png/season_7.png /code/graph_png/
COPY ./graph_png/season_9.png /code/graph_png/
COPY ./graph_png/season10.png /code/graph_png/
COPY ./graph_png/season3.png /code/graph_png/
COPY ./graph_png/season5.png /code/graph_png/
COPY ./graph_png/season7.png /code/graph_png/
COPY ./graph_png/season9.png /code/graph_png/
COPY ./graph_png/season_1.png /code/graph_png/
COPY ./graph_png/season_2.png /code/graph_png/
COPY ./graph_png/season_4.png /code/graph_png/
COPY ./graph_png/season_6.png /code/graph_png/
COPY ./graph_png/season_8.png /code/graph_png/
COPY ./graph_png/season1.png /code/graph_png/
COPY ./graph_png/season2.png /code/graph_png/
COPY ./graph_png/season4.png /code/graph_png/
COPY ./graph_png/season6.png /code/graph_png/
COPY ./graph_png/season8.png /code/graph_png/
COPY ./graph_png/seasonAll.png /code/graph_png/

COPY ./graph_svg/all_seaons.svg /code/graph_svg/
COPY ./graph_svg/season_1.svg /code/graph_svg/
COPY ./graph_svg/season_10.svg /code/graph_svg/
COPY ./graph_svg/season_2.svg /code/graph_svg/
COPY ./graph_svg/season_3.svg /code/graph_svg/
COPY ./graph_svg/season_4.svg /code/graph_svg/
COPY ./graph_svg/season_5.svg /code/graph_svg/
COPY ./graph_svg/season_6.svg /code/graph_svg/
COPY ./graph_svg/season_7.svg /code/graph_svg/
COPY ./graph_svg/season_8.svg /code/graph_svg/
COPY ./graph_svg/season_9.svg /code/graph_svg/	


COPY ./all_corpus.csv /code/all_corpus.csv
COPY ./annotated_data.csv /code/annotated_data.csv
COPY ./Monica_Chandler_Gold_Annotation_new.csv /code/Monica_Chandler_Gold_Annotation_new.csv
COPY ./all_corpus_html.csv /code/all_corpus_html.csv
COPY ./Annotation_gold_standard.ipynb /code/Annotation_gold_standard.ipynb
COPY ./Monica_Chandler_Gold_Annotation.csv /code/Monica_Chandler_Gold_Annotation.csv
COPY ./process_data.ipynb /code/process_data.ipynb
			

CMD ["python", "./frontend_backend/backend.py", "--host", "0.0.0.0", "--port", "9999"]
