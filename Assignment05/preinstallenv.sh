##!/usr/bin
##!/usr/bin/env bash

##Install your env on Jetstream
##Set permissions: chmod 766 preinstallenv.sh
##Run the script: . preinstallenv.sh
##Note: If you use ./preinstallenv.sh, it will run in a subshell and will not save the environment variables we export

cd

##Install java8
wget -O java.tgz http://javadl.oracle.com/webapps/download/AutoDL?BundleId=234464_96a7b8442fe848ef90c96a2fad6ed6d1
tar -xvzf java.tgz
export JAVA_HOME="$(pwd)/jre1.8.0_181"
export PATH="$JAVA_HOME/bin/:$PATH"

##Install spark
wget -O spark.tgz http://apache.cs.utah.edu/spark/spark-2.3.1/spark-2.3.1-bin-hadoop2.7.tgz
tar -xvzf spark.tgz
export SPARK_HOME="$(pwd)/spark-2.3.1-bin-hadoop2.7"
export PATH="$SPARK_HOME/bin/:$PATH"

##Install pyspark
conda install -y pyspark
export SPARK_LOCAL_IP="127.0.0.1"

