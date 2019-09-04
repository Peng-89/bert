#!/usr/bin/env bash
export BERT_HOME=/content/bert
export BERT_BASE_DIR=${BERT_HOME}/bert_model/models/chinese_L-12_H-768_A-12
export GLUE_DIR=${BERT_HOME}/examples/text_classifiler/data
export OUTPUT_DIR=${BERT_HOME}/examples/text_classifiler/output

python ${BERT_HOME}/examples/text_classifiler/bert_classifier.py \
  --task_name=setiment \
  --do_predict=true \
  --data_dir=$GLUE_DIR/ \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --output_dir=$OUTPUT_DIR
