Vim�UnDo� �Z�(���G�Y_�o�Kk���g�^NY9Ͷd   �                                   c��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             c	�I     �   �   �          $																			--device=cuda:2 \�   �   �          $																			--device=cuda:2 \�   p   r          $																			--device=cuda:2 \�   \   ^          $																			--device=cuda:2 \�   I   K          $																			--device=cuda:2 \�   6   8          $																			--device=cuda:2 \�   "   $          $																			--device=cuda:2 \�         �      $																			--device=cuda:2 \5��                        �                    �    "                    y                    �    6                    A	                    �    I                                        �    \                    �                    �    p                    `                    �    �                    w                    �    �                    F                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             c	�[     �   �   �          c                                                                            --save-name=bothaug${k}�   �   �          c                                                                            --save-name=bothaug${k}�   y   {          c                                                                            --save-name=bothaug${k}�   g   i          c                                                                            --save-name=bothaug${k}�   T   V          c                                                                            --save-name=bothaug${k}�   A   C          c                                                                            --save-name=bothaug${k}�   -   /          c                                                                            --save-name=bothaug${k}�         �      c                                                                            --save-name=bothaug${k}5��       X                 ]                    �    -   X                 ,                    �    A   X                 �                    �    T   X                 �                    �    g   X                 �                    �    y   X                 ^                    �    �   X                 %                    �    �   X                 �                    5�_�                       Q    ����                                                                                                                                                                                                                                                                                                                                                             c	�`     �                V                                                                            --augsup \5��                          �      W               5�_�                    (   Q    ����                                                                                                                                                                                                                                                                                                                                                             c	�a     �   '   (          V                                                                            --augsup \5��    '                            W               5�_�                    8   Q    ����                                                                                                                                                                                                                                                                                                                                                             c	�b     �   7   8          V                                                                            --augsup \5��    7                      �      W               5�_�                    I   Q    ����                                                                                                                                                                                                                                                                                                                                                             c	�b     �   H   I          V                                                                            --augsup \5��    H                      3      W               5�_�                    _   Q    ����                                                                                                                                                                                                                                                                                                                                                             c	�c     �   ^   _          V                                                                            --augsup \5��    ^                      x      W               5�_�      	              i   Q    ����                                                                                                                                                                                                                                                                                                                                                             c	�d     �   h   i          V                                                                            --augsup \5��    h                      �      W               5�_�      
           	   ~   Q    ����                                                                                                                                                                                                                                                                                                                                                             c	�e     �   }   ~          V                                                                            --augsup \5��    }                      p      W               5�_�   	              
   �   Q    ����                                                                                                                                                                                                                                                                                                                                                             c	�g    �   �   �          V                                                                            --augsup \5��    �                      V      W               5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             c	�w    �   �   �           										python ./ssl_main.py \�   v   x           										python ./ssl_main.py \�   c   e           										python ./ssl_main.py \�   R   T           										python ./ssl_main.py \�   @   B           										python ./ssl_main.py \�   .   0           										python ./ssl_main.py \�                 										python ./ssl_main.py \�   
      �       										python ./ssl_main.py \5��    
                    �                     �                        )                    �    .                    �                    �    @                                        �    R                    �                    �    c                                        �    v                    �                    �    �                                        5�_�                             ����                                                                                                                                                                                                                                                                                                                                                             c��     �               �   #!/bin/bash   &echo "Bash version ${BASH_VERSION}..."   hypo="_"   	lin="lin"   traj="traj"   kd="kd"   #SET="0.00001 0.0001 0.001 0.01 0.1"   SET1="1"   for k in $SET1   		do   %										python ./pretrain_main.py \   $																			--folder=./data \   *																			--dataset=miniimagenet\   7																			--output-folder=./output_augmented \   "																			--model=4conv \   %																			--hidden-size=64 \   $																			--device=cuda:3 \   !																			--num-ways=5 \   "																			--num-shots=5 \   %																			--batch-iter=300 \   )																			--inner-update-num=3 \   Z                                                                            --projection \   Y                                                                            --augtarget \   Z                                                                            --momentum=0 \   #																			--meta-lr=1e-3 \   2																			--csv-name=./csv/momentum.csv \   b                                                                            --save-name=tgtaug${k}   %										python ./pretrain_main.py \   $																			--folder=./data \   ,																			--dataset=tieredimagenet\   7																			--output-folder=./output_augmented \   "																			--model=4conv \   %																			--hidden-size=64 \   $																			--device=cuda:3 \   !																			--num-ways=5 \   "																			--num-shots=5 \   %																			--batch-iter=300 \   )																			--inner-update-num=3 \   Z                                                                            --projection \   Y                                                                            --augtarget \   Z                                                                            --momentum=0 \   #																			--meta-lr=1e-3 \   2																			--csv-name=./csv/momentum.csv \   b                                                                            --save-name=tgtaug${k}           %										python ./pretrain_main.py \   $																			--folder=./data \   "																			--dataset=cars\   7																			--output-folder=./output_augmented \   "																			--model=4conv \   %																			--hidden-size=64 \   $																			--device=cuda:3 \   !																			--num-ways=5 \   "																			--num-shots=5 \   Y                                                                            --augtarget \   %																			--batch-iter=300 \   )																			--inner-update-num=3 \   Z                                                                            --projection \   Z                                                                            --momentum=0 \   #																			--meta-lr=1e-3 \   2																			--csv-name=./csv/momentum.csv \   b                                                                            --save-name=tgtaug${k}       %										python ./pretrain_main.py \   $																			--folder=./data \   *																			--dataset=miniimagenet\   7																			--output-folder=./output_augmented \   "																			--model=4conv \   %																			--hidden-size=64 \   $																			--device=cuda:3 \   !																			--num-ways=5 \   Y                                                                            --augtarget \   "																			--num-shots=5 \   %																			--batch-iter=300 \   )																			--inner-update-num=3 \   Z                                                                            --projection \   Z                                                                            --momentum=0 \   #																			--meta-lr=1e-3 \   2																			--csv-name=./csv/momentum.csv \   b                                                                            --save-name=tgtaug${k}       %										python ./pretrain_main.py \   $																			--folder=./data \   *																			--dataset=miniimagenet\   7																			--output-folder=./output_augmented \   "																			--model=4conv \   %																			--hidden-size=64 \   $																			--device=cuda:3 \   !																			--num-ways=5 \   "																			--num-shots=1 \   %																			--batch-iter=300 \   )																			--inner-update-num=3 \   Z                                                                            --projection \   Y                                                                            --augtarget \   Z                                                                            --momentum=0 \   #																			--meta-lr=1e-3 \   2																			--csv-name=./csv/momentum.csv \   b                                                                            --save-name=tgtaug${k}   %										python ./pretrain_main.py \   $																			--folder=./data \   ,																			--dataset=tieredimagenet\   7																			--output-folder=./output_augmented \   "																			--model=4conv \   Y                                                                            --augtarget \   %																			--hidden-size=64 \   $																			--device=cuda:3 \   !																			--num-ways=5 \   "																			--num-shots=1 \   %																			--batch-iter=300 \   )																			--inner-update-num=3 \   Z                                                                            --projection \   Z                                                                            --momentum=0 \   #																			--meta-lr=1e-3 \   2																			--csv-name=./csv/momentum.csv \   b                                                                            --save-name=tgtaug${k}           %										python ./pretrain_main.py \   $																			--folder=./data \   "																			--dataset=cars\   7																			--output-folder=./output_augmented \   "																			--model=4conv \   %																			--hidden-size=64 \   $																			--device=cuda:3 \   Y                                                                            --augtarget \   !																			--num-ways=5 \   "																			--num-shots=1 \   %																			--batch-iter=300 \   )																			--inner-update-num=3 \   Z                                                                            --projection \   Z                                                                            --momentum=0 \   #																			--meta-lr=1e-3 \   2																			--csv-name=./csv/momentum.csv \   b                                                                            --save-name=tgtaug${k}       %										python ./pretrain_main.py \   $																			--folder=./data \   *																			--dataset=miniimagenet\   7																			--output-folder=./output_augmented \   "																			--model=4conv \   %																			--hidden-size=64 \   $																			--device=cuda:3 \   !																			--num-ways=5 \   "																			--num-shots=1 \   %																			--batch-iter=300 \   )																			--inner-update-num=3 \   Z                                                                            --projection \   Z                                                                            --momentum=0 \   #																			--meta-lr=1e-3 \   Y                                                                            --augtarget \   2																			--csv-name=./csv/momentum.csv \   b                                                                            --save-name=tgtaug${k}           		done5�5��