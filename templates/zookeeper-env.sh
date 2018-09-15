ZOO_LOG_DIR={{ zookeeper_log_prefix }}
export ZOO_LOG_DIR
JAVA_HOME={{ zookeeper_java_home }}
export JAVA_HOME
SERVER_JVMFLAGS="-javaagent:{{ zookeeper_distr_prefix }}/lib/jmx_prometheus_javaagent-0.3.1.jar=9130:{{ zookeeper_distr_prefix }}/conf/jmx_prometheus_javaagent.yaml"
export SERVER_JVMFLAGS
