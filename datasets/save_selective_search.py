import cv2
import sys
# from drawBoxes import draw_boxes
import time
import torch
import matplotlib.pyplot as plt
from selective_search import selective_search
import numpy as np


t1_train_file_path = "/home/selective_search/all_task_test.txt"

with open(t1_train_file_path, 'r') as t1_train_file:
    t1_train_list = t1_train_file.read().splitlines()
    
for image_num,image_name in enumerate(t1_train_list):
    image_name = t1_train_list[image_num]
    image_path = "/home//datasets/VOC2007/JPEGImages/" + image_name + ".jpg"
    img = cv2.imread(image_path)[:, :, ::-1]
    img_rgb = cv2.cvtColor(img,cv2.COLOR_BGR2RGB)
    try:
        boxes = selective_search(img_rgb, mode='single', random_sort=False)
        new_flag = True
        for boxes_i in boxes:
            if new_flag:
                boxes_sum = np.array(boxes_i).reshape(1,4)
                new_flag = False
            else:
                boxes_sum = np.r_[boxes_sum,np.array(boxes_i).reshape(1,4)]
        
        boxes_draw = boxes_sum[:50,:]
        img_save = {'image_size':img.shape[0:2],'obj_boxes':boxes_draw}

    except:
        print("cannot compute score:",image_name)
        boxes_draw = []
        img_save = {'image_size':img.shape[0:2],'obj_boxes':boxes_draw}
        error_save_path = "/home/selective_search_save/selective_search_test_error/" + image_name + ".pickle"
        torch.save(img_save, error_save_path)
    img_save_path = "/home/selective_search_save/selective_search_test/" + image_name + ".pickle"
    torch.save(img_save, img_save_path)
    print("image_num:",image_num)
