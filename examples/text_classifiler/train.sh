#!/usr/bin/env bash
export BERT_BASE_DIR=~/bert/bert_model/models/chinese_L-12_H-768_A-12
export GLUE_DIR=~/bert/examples/text_classifiler/data
export OUTPUT_DIR=~/bert/examples/text_classifiler/output

python bert_classifier.py \
  --task_name=setiment \
  --do_train=true \
  --do_eval=true \
  --data_dir=$GLUE_DIR/ \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=128 \
  --train_batch_size=4 \
  --learning_rate=2e-5 \
  --num_train_epochs=5.0 \
  --output_dir=$OUTPUT_DIR/