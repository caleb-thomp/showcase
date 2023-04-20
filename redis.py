import redis

# Create a Redis client
r = redis.Redis(host='localhost', port=6379, db=0)

# Set a key-value pair
r.set('foo', 'bar')

# Get the value for a key
value = r.get('foo')
print(value)
