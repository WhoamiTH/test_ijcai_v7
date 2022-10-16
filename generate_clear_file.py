
# # -*- coding:utf-8 -*-



# ---------------------  分割线 在此下方添加数据 -----------------------------------



# ---------------------  检查 test -----------------------------------
import sys
import os
import math
dataset_list = ['abalone19', 'ecoli1', 'glass0', 'glass5', 'pageblocks1', 'pima', 'vehicle0', 'yeast3', 'yeast5', 'yeast6']

data_range = 5
record_index = 1

train_infor_method_list = ['normal', 'bm', 'im', 'im2', 'im3', 'both', 'both2', 'both3']
early_stop_type_list = [ '20000', '15000', '10000', '8000', '5000', '2000']
# early_stop_type_list = [ '20000', '15000', '10000', '8000']
# early_stop_type_list = [ '5000', '2000']
# early stop 效果不太明显， 结果不太好
# test_infor_method_list = ['normal']
test_infor_method_list = [ 'normal', 'bm', 'im', 'both']

ref_num_type_list = ['num']
ref_times_list = ['10']
boundary_type_list = ['half']


# for file_index in dataset_dict:
    # dataset_list = dataset_dict[file_index]
device_id = 0
with open('train_mlp_katana.sh', 'w') as fsh:
    command_list = []
    for dataset in dataset_list:
        for sample_method in train_infor_method_list:
            for early_stop_type in early_stop_type_list:
                for test_infor_method in test_infor_method_list:
                    for ref_num_type in ref_num_type_list:
                        for ref_times in ref_times_list:
                            for boundary_type in boundary_type_list:
                                
                                train_method = 'MLP_{0}_{1}'.format(sample_method, early_stop_type)
                                test_method = '{0}_{1}_{2}_{3}'.format(test_infor_method, ref_num_type, ref_times, boundary_type)

                                command_list.append('rm -rf ./test_{0}/model_{1}\n'.format(dataset, train_method)) 
                                command_list.append('rm -rf ./test_{0}/result_{1}_{2}\n'.format(dataset, train_method, test_method))
                                command_list.append('\n')
        command_list.append('\n\n\n')

with open('clear_dir_file.sh', 'w') as fsh:        
    for item_command in command_list:
        fsh.write(item_command)

