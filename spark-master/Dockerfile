FROM bde2020/spark-master:2.4.1-hadoop2.7
COPY log4j.properties /spark/conf/
COPY spark-env.sh /spark/conf/

RUN apk add build-base python3-dev
RUN pip3 install cython 
RUN pip3 install numpy
RUN pip3 install pandas
