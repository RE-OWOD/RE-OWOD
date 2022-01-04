<!-- ### Hi there 👋 -->

# Revisting Open World Object Detection

## Installation
See [INSTALL.md](INSTALL.md).

## Dataset
Our new data division is based on COCO2017. We divide the training set into four tasks, in which each task has 20 categories. For each task, we obtained images containing the categories of each task from the training set, and removed the annotation information of other categories in these pictures during training.  In each task, 1000 images are sampled as the validation set. And we de duplicate the training set and the  validation set.
For the testing set, we adopt the validation set of COCO2017, which contains relatively complete annotation information.

The data files are at [./datasets/OWOD_imagesets/](./datasets/OWOD_imagesets/).
And the codes for creating these files are at [datasets/coco_utils](datasets/coco_utils)


<!-- 
## Citation

If you use our work in your research please cite us: -->



<!--
**RE-OWOD/RE-OWOD** is a ✨ _special_ ✨ repository because its `README.md` (this file) appears on your GitHub profile.

Here are some ideas to get you started:

- 🔭 I’m currently working on ...
- 🌱 I’m currently learning ...
- 👯 I’m looking to collaborate on ...
- 🤔 I’m looking for help with ...
- 💬 Ask me about ...
- 📫 How to reach me: ...
- 😄 Pronouns: ...
- ⚡ Fun fact: ...
-->
