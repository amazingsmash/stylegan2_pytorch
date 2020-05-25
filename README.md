# stylegan2_pytorch

This is my timid attempt of using the Pytorch implementation of StyleGAN v2 for image synthesis. This time, the goal is to produce new images of Pokemons via adversarial learning. This little project has as solely purpose to teach me a bit to tinker with ML training and is a fork of the @lucidrains repository, all credit is due to him. The training dataset is a set of 809 sketches of existing Pokemons, which I extracted from Kaggle.

Best images are achieved around the 75 iteration of the training loop (around 4 hours of training in a Google Colab runtime with GPU acceleration). From there on, the adversarial learning seems to get stuck on a local minimum, but maybe I just stopped the training too soon as suggested here.

Judging by the results, the network is capable of identifying the features common to all the images (drawing style, color palette, position, etc.) while having a harder time trying to find structure. That can be attributed to the wide variety of Pokemon anatomies, which leads to some instability. Further experiments will include a curation of the training set based on the data provided by the database.

Next attempts may include photorealistic image generation, probably exploiting the Flickr API. Stay tuned.
