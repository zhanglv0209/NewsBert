#!/bin/bash
export BERT_BASE_DIR=/data/nlp/bert/data/chinese_L-12_H-768_A-12
export DATA_DIR=/data/nlp/bert/workspace/ThucNewsBert/nData
python run_classifier.py   \
  --task_name=THUC \
  --do_train=True   \
  --do_eval=True   \
  --do_predict=True \
  --data_dir=$DATA_DIR   \
  --vocab_file=$BERT_BASE_DIR/vocab.txt  \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt   \
  --max_seq_length=128   \
  --train_batch_size=32   \
  --learning_rate=2e-5   \
  --num_train_epochs=3.0   \
  --output_dir=second/output  /
