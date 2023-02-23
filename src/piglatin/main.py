# Lucas Jackson | 2/14/2023 | Pig Latin

vowels = ('a','e','i','o','u')
sentence = input('Enter sentence to translate into Pig Latin: ')
finishedSentence = ''
words = sentence.split(' ')
for word in words:
  while word[0].lower() not in vowels:
    firstLetter = word[0]
    word=word[1:] + firstLetter.lower()
  word = word + 'ay'
  finishedSentence = finishedSentence + word + ' '
print(finishedSentence)