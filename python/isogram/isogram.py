import re

def is_isogram(word):
    letters = re.sub('[^a-zA-Z]', '', word).lower()
    return len(letters) == len(set(letters))
