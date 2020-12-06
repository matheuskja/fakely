import numpy as np
from gensim.models.doc2vec import Doc2Vec, TaggedDocument
from gensim.models import Word2Vec
from nltk.tokenize import word_tokenize
import nltk
nltk.download('stopwords')
import pandas as pd
from gensim.models import KeyedVectors

model = KeyedVectors.load_word2vec_format('cbow_s50.txt')
model_saude = Word2Vec.load('modelsaude.model')

stopwords = nltk.corpus.stopwords.words('portuguese')

def find_topics(phrase, model_saude, model):
    topics = []
    #print(phrase)
    phrase = phrase.replace(',', ' ').replace('.', ' ').replace(':', ' ').replace('-', ' ').replace('%', ' ').lower()
    #print(phrase)
    frase_filtrada = ''
    
    for palavra in phrase.split():
        if palavra not in stopwords:
            frase_filtrada += (palavra  + ' ')
    new_phrase = (word_tokenize(frase_filtrada))
    #print(new_phrase)
    
    try:
        topics.append(model.wv.most_similar(positive=new_phrase, topn=3))
        #print(topics)
    except KeyError:
        print("sem vocabulario correspondente")
        
    try:
        topics.append(model_saude.wv.most_similar(positive=new_phrase, topn=3))
    except KeyError:
        print("sem vocabulario em saude correspondente")
    
    topics_dict = [topics[0][i][0] for i in range(len(topics[0]))]
    print(topics_dict)
    topics_string = ' '.join(topics_dict)
    print(topics_string)
    
    return topics_string