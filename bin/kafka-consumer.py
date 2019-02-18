from kafka import TopicPartition, KafkaConsumer

consumer = KafkaConsumer('test',
                         group_id='my-group',
                         bootstrap_servers=['localhost:9092'])

for msg in consumer:
    print msg

# msg = next(consumer)
