#!/usr/bin/env bash
export BERT_HOME=/content
export BERT_BASE_DIR=${BERT_HOME}/bert_model/chinese_L-12_H-768_A-12
export GLUE_DIR=${BERT_HOME}/data
export MODEL_DIR=${BERT_HOME}/output

args=$1

python client.py \
  --data_dir=$GLUE_DIR \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$MODEL_DIR/model.ckpt-6072 \
  --max_seq_length=128 \
  --predict_batch_size=2 \
  --output_dir= MODEL_DIR \
  ${args}
