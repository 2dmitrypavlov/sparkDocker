spark.worker.cleanup.enabled	false	Enable periodic cleanup of worker / application directories. Note that this only affects standalone mode, as YARN works differently. Only the directories of stopped applications are cleaned up.
spark.worker.cleanup.interval	1800 (30 minutes)	Controls the interval, in seconds, at which the worker cleans up old application work dirs on the local machine.
spark.worker.cleanup.appDataTtl	7 * 24 * 3600 (7 days)	The number of seconds to retain application work directories on each worker. This is a Time To Live and should depend on the amount of available disk space you have. Application logs and jars are downloaded to each application work dir. Over time, the work dirs can quickly fill up disk space, especially if you run jobs very frequently.
spark.worker.ui.compressedLogFileLengthCacheSize	100	For compressed log files, the uncompressed file can only be computed by uncompressing the files. Spark caches the uncompressed file size of compressed log files. This property controls the cache size.
SPARK_WORKER_OPTS="-Dspark.worker.cleanup.enabled=true -Dspark.worker.cleanup.interval=10 -Dspark.worker.cleanup.appDataTtl=10"
