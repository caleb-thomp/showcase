import tensorflow as tf
from tensorflow import keras
from tensorflow.keras.preprocessing.text import Tokenizer
from tensorflow.keras.preprocessing.sequence import pad_sequences

# Define the data
sentences = ['This product is great!', 'I hate this movie.']
labels = [
  1, 0
]  # 1 corresponds to positive sentiment, 0 corresponds to negative sentiment

# Define the parameters
vocab_size = 1000
embedding_dim = 16
max_length = 100
trunc_type = 'post'
padding_type = 'post'
oov_tok = '<OOV>'

# Tokenize the text
tokenizer = Tokenizer(num_words=vocab_size, oov_token=oov_tok)
tokenizer.fit_on_texts(sentences)
word_index = tokenizer.word_index
sequences = tokenizer.texts_to_sequences(sentences)
padded = pad_sequences(sequences,
                       maxlen=max_length,
                       padding=padding_type,
                       truncating=trunc_type)

# Define the model
model = keras.Sequential([
  keras.layers.Embedding(vocab_size, embedding_dim, input_length=max_length),
  keras.layers.GlobalAveragePooling1D(),
  keras.layers.Dense(1, activation='sigmoid')
])

# Compile the model
model.compile(loss='binary_crossentropy',
              optimizer='adam',
              metrics=['accuracy'])

# Train the model
model.fit(padded, labels, epochs=50)

# Use the model to make predictions
test_sentence = ['This is a fantastic product!']
test_sequence = tokenizer.texts_to_sequences(test_sentence)
test_padded = pad_sequences(test_sequence,
                            maxlen=max_length,
                            padding=padding_type,
                            truncating=trunc_type)
prediction = model.predict(test_padded)
print(prediction)
