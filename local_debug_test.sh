#!/bin/bash

# 激活虚拟环境
source cancer_env/bin/activate

# 运行轻量级测试
python -m CancerRiskNet.learn.train \
    --dataset disease_progression \
    --batch_size 4 \
    --epochs 1 \
    --max_batches_per_train_epoch 3 \
    --max_batches_per_dev_epoch 2 \
    --device cpu \
    --metadata_path patient_data_old.json \
    --save_dir ./debug_results

echo "调试测试完成！"
