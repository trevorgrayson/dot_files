from kafka import KafkaProducer
producer = KafkaProducer(bootstrap_servers='localhost:9092')

for _ in range(100):
    print 'test'
    producer.send('test', b'<httml></httml>')

producer.flush()
