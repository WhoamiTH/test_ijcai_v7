#!/bin/bash
set -e


mkdir -p ./test_glass5/model_MLP_im2_2000/record_1/
mkdir -p ./test_glass5/result_MLP_im2_2000_bm_num_10_half/record_1/
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=2 record_index=1 train_method=MLP_im2_2000 test_method=bm_num_10_half device_id=0
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=3 record_index=1 train_method=MLP_im2_2000 test_method=bm_num_10_half device_id=0
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=4 record_index=1 train_method=MLP_im2_2000 test_method=bm_num_10_half device_id=0
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=5 record_index=1 train_method=MLP_im2_2000 test_method=bm_num_10_half device_id=0



mkdir -p ./test_glass5/model_MLP_im2_2000/record_1/
mkdir -p ./test_glass5/result_MLP_im2_2000_im_num_10_half/record_1/
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=2 record_index=1 train_method=MLP_im2_2000 test_method=im_num_10_half device_id=0
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=3 record_index=1 train_method=MLP_im2_2000 test_method=im_num_10_half device_id=0
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=4 record_index=1 train_method=MLP_im2_2000 test_method=im_num_10_half device_id=0
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=5 record_index=1 train_method=MLP_im2_2000 test_method=im_num_10_half device_id=0



mkdir -p ./test_glass5/model_MLP_im2_2000/record_1/
mkdir -p ./test_glass5/result_MLP_im2_2000_both_num_10_half/record_1/
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=2 record_index=1 train_method=MLP_im2_2000 test_method=both_num_10_half device_id=0
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=3 record_index=1 train_method=MLP_im2_2000 test_method=both_num_10_half device_id=0
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=4 record_index=1 train_method=MLP_im2_2000 test_method=both_num_10_half device_id=0
python3 ./classifier_MLP/test.py dataset_name=glass5 dataset_index=5 record_index=1 train_method=MLP_im2_2000 test_method=both_num_10_half device_id=0



