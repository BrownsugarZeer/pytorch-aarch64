#!/usr/bin/env bash

set -ex

pip install torch torchvision torchtext torchcsprng -f https://torch.maku.ml/whl/stable.html
python3 test/torch-test.py

pip uninstall -y torchvision
pip install torchvision+slim -f https://torch.maku.ml/whl/stable.html
python3 test/torch-test.py
