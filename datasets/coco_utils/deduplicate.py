import sys
import numpy as np
import xml.etree.ElementTree as ET
from collections import Counter
import random

t1_train_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/t1_train_sel.txt"
t2_train_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/t2_train_sel.txt"
t3_train_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/t2_train_sel.txt"
t4_train_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/t2_train_sel.txt"
all_val_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/all_task_val.txt"



# Val set creation
# t1_val = random.sample(t1_list, 1000)
# print("t1_val:",len(t1_val))
# t1_val_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/t1_val.txt"

# with open(t1_val_file, 'w') as file:
#     for image_id in t1_val:
#         file.write(str(image_id)+'\n')
# print('Created file')

# val_list = t1_val_list + t2_val_list + t3_val_list + t4_val_list
# new_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/all_task_val.txt"

# with open(new_file, 'w') as file:
#     for image_id in val_list:
#         file.write(str(image_id)+'\n')
# print('Created file')



# Training set deduplication
with open(t1_train_file, 'r') as t1_file:
    t1_list = t1_file.read().splitlines()
print("t1_list:",len(t1_list))

with open(t2_train_file, 'r') as t2_file:
    t2_list = t2_file.read().splitlines()
print("t2_list:",len(t2_list)) 

with open(t3_train_file, 'r') as t3_file:
    t3_list = t3_file.read().splitlines()
print("t3_list:",len(t3_list))

with open(t4_train_file, 'r') as t4_file:
    t4_list = t4_file.read().splitlines()
print("t4_list:",len(t4_list))


with open(all_val_file, 'r') as val_file:
    val_list = val_file.read().splitlines()
print("val_list:",len(val_list))



t1_train = [x for x in t1_list if x not in val_list]
print("t1_train:",len(t1_train))

t1_new_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/t1_train.txt"

with open(t1_new_file, 'w') as file:
    for image_id in t1_train:
        file.write(str(image_id)+'\n')
print('Created file')


t2_train = [x for x in t2_list if x not in val_list]
print("t1_train:",len(t2_train))

t2_new_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/t2_train.txt"

with open(t2_new_file, 'w') as file:
    for image_id in t2_train:
        file.write(str(image_id)+'\n')
print('Created file')


t3_train = [x for x in t3_list if x not in val_list]
print("t1_train:",len(t3_train))

t3_new_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/t3_train.txt"

with open(t3_new_file, 'w') as file:
    for image_id in t3_train:
        file.write(str(image_id)+'\n')
print('Created file')


t4_train = [x for x in t4_list if x not in val_list]
print("t1_train:",len(t4_train))

t4_new_file = "/home/OWOD/datasets/coco17_voc_style/ImageSets/t4_train.txt"

with open(t4_new_file, 'w') as file:
    for image_id in t4_train:
        file.write(str(image_id)+'\n')
print('Created file')

