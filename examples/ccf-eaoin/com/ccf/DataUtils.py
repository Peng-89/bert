#!/usr/bin/env python
# encoding: utf-8
'''
@author: xu.peng
@file: DataUtils.py
@time: 2019/9/5 2:06 PM
@desc:
'''
from com.ccf.config import *
import pandas as pd
import numpy as np

train_data=pd.read_csv(train_data_text)
##过滤text为空的数据
train_data=train_data[train_data['text'].isnull()==False]
##加载训练的label信息
train_label=pd.read_csv(train_data_label)
train_data.merge(train_label)

train_data[['label','text']].to_csv(bert_data_train,sep='\t',index=False)