#!/usr/bin/env bash                                                             
                                                                                
#                                                                               
# Licensed to the Apache Software Foundation (ASF) under one or more            
# contributor license agreements.  See the NOTICE file distributed with         
# this work for additional information regarding copyright ownership.           
# The ASF licenses this file to You under the Apache License, Version 2.0       
# (the "License"); you may not use this file except in compliance with          
# the License.  You may obtain a copy of the License at                         
#                                                                               
#    http://www.apache.org/licenses/LICENSE-2.0                                 
#                                                                               
# Unless required by applicable law or agreed to in writing, software           
# distributed under the License is distributed on an "AS IS" BASIS,             
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.      
# See the License for the specific language governing permissions and           
# limitations under the License.                                                
#                                                                               
                                                                                
# This file is sourced when running various Spark programs.                     
# Copy it as spark-env.sh and edit that to configure Spark for your site.       
                                                                                
# Options read when launching programs locally with 
# ./bin/run-example or ./bin/spark-submit                                       
# - HADOOP_CONF_DIR, to point Spark towards Hadoop configuration files          
# - SPARK_LOCAL_IP, to set the IP address Spark binds to on this node           
# - SPARK_PUBLIC_DNS, to set the public dns name of the driver program          
                                                                                
# Options read by executors and drivers running inside the cluster              
# - SPARK_LOCAL_IP, to set the IP address Spark binds to on this node           
# - SPARK_PUBLIC_DNS, to set the public DNS name of the driver program          
# - SPARK_LOCAL_DIRS, storage directories to use on this node for shuffle and RD
# - MESOS_NATIVE_JAVA_LIBRARY, to point to your libmesos.so if you use Mesos    
                                                                                
# Options read in YARN client/cluster mode                                      
# - SPARK_CONF_DIR, Alternate conf dir. (Default: ${SPARK_HOME}/conf)           
# - HADOOP_CONF_DIR, to point Spark towards Hadoop configuration files          
# - YARN_CONF_DIR, to point Spark towards YARN configuration files when you use 
# - SPARK_EXECUTOR_CORES, Number of cores for the executors (Default: 1).       
# - SPARK_EXECUTOR_MEMORY, Memory per Executor (e.g. 1000M, 2G) (Default: 1G)   
# - SPARK_DRIVER_MEMORY, Memory for Driver (e.g. 1000M, 2G) (Default: 1G)       
                                                                                
# Options for the daemons used in the standalone deploy mode                    
# - SPARK_MASTER_HOST, to bind the master to a different IP address or hostname 
# - SPARK_MASTER_PORT / SPARK_MASTER_WEBUI_PORT, to use non-default ports for th
# - SPARK_MASTER_OPTS, to set config properties only for the master (e.g. "-Dx=y
# - SPARK_WORKER_CORES, to set the number of cores to use on this machine       
# - SPARK_WORKER_MEMORY, to set how much total memory workers have to give execu
# - SPARK_WORKER_PORT / SPARK_WORKER_WEBUI_PORT, to use non-default ports for th
# - SPARK_WORKER_DIR, to set the working directory of worker processes          
# - SPARK_WORKER_OPTS, to set config properties only for the worker (e.g. "-Dx=y
# - SPARK_DAEMON_MEMORY, to allocate to the master, worker and history server th
# - SPARK_HISTORY_OPTS, to set config properties only for the history server (e.
# - SPARK_SHUFFLE_OPTS, to set config properties only for the external shuffle s
# - SPARK_DAEMON_JAVA_OPTS, to set config properties for all daemons (e.g. "-Dx=
# - SPARK_DAEMON_CLASSPATH, to set the classpath for all daemons                
# - SPARK_PUBLIC_DNS, to set the public dns name of the master or workers       
                                                                                
# Generic options for the daemons used in the standalone deploy mode            
# - SPARK_CONF_DIR      Alternate conf dir. (Default: ${SPARK_HOME}/conf)       
# - SPARK_LOG_DIR       Where log files are stored.  (Default: ${SPARK_HOME}/log
# - SPARK_PID_DIR       Where the pid file is stored. (Default: /tmp)           
# - SPARK_IDENT_STRING  A string representing this instance of spark. (Default: 
# - SPARK_NICENESS      The scheduling priority for daemons. (Default: 0)       
# - SPARK_NO_DAEMONIZE  Run the proposed command in the foreground. It will not 
# Options for native BLAS, like Intel MKL, OpenBLAS, and so on.                 
# You might get better performance to enable these options if using native BLAS 
# - MKL_NUM_THREADS=1        Disable multi-threading of Intel MKL               
# - OPENBLAS_NUM_THREADS=1   Disable multi-threading of OpenBLAS  

export PYSPARK_PYTHON=python3
