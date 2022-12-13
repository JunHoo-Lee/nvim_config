Vim�UnDo� b'G	���h�y'p�`��h��w~�xT8�h8��      /																			--classifier-step-size=0.5 \      ,                       c��    _�                             ����                                                                                                                                                                                                                                                                                                                                                             c ��     �                  #!/bin/bash   &echo "Bash version ${BASH_VERSION}..."   hypo="_"   	lin="lin"   traj="traj"   kd="kd"   #SET="0.00001 0.0001 0.001 0.01 0.1"   SET1="1 2 3"   for k in $SET1   		do   ,										python ./main.py --folder=~/data \   *																			--dataset=miniimagenet\   7																			--output-folder=./1StepContrastive \   "																			--model=4conv \   %																			--hidden-size=64 \   $																			--device=cuda:0 \   !																			--num-ways=5 \   "																			--num-shots=5 \   %																			--batch-iter=300 \   )																			--inner-update-num=5 \   .																			--extractor-step-size=0.5 \   /																			--classifier-step-size=0.5 \   "																			--kdterm=0.01 \   #																			--meta-lr=1e-3 \   4																			--csv-name=1StepContrastive.csv \   T                                                                            --test \   1																			--save-name=1steptest_base${k}       		done5�5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               1																			--save-name=1steptest_base${k}5��                         �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               6																			--save-name=boil_1steptest_base${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               5																			--save-name=boil_1steptest_ase${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               4																			--save-name=boil_1steptest_se${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               3																			--save-name=boil_1steptest_e${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               2																			--save-name=boil_1steptest_${k}5��       .                  �                     5�_�      	                 S    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �                T                                                                            --test \5��                                U               5�_�      
           	      #    ����                                                                                                                                                                                                                                                                                                                                                             c ��    �               #																			--meta-lr=1e-3 \5��       #              L   �              M       �       L               
   $              
       �       T                 ,                    5�_�   	              
      .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               =																			--save-name=boil_1steptest_contrastive${k}5��       .                  �                     5�_�   
                    .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               <																			--save-name=boil_1steptest_ontrastive${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               ;																			--save-name=boil_1steptest_ntrastive${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               :																			--save-name=boil_1steptest_trastive${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               9																			--save-name=boil_1steptest_rastive${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               8																			--save-name=boil_1steptest_astive${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               7																			--save-name=boil_1steptest_stive${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               6																			--save-name=boil_1steptest_tive${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               5																			--save-name=boil_1steptest_ive${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               4																			--save-name=boil_1steptest_ve${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               3																			--save-name=boil_1steptest_e${k}5��       .                  �                     5�_�                       .    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               2																			--save-name=boil_1steptest_${k}5��       .                  �                     5�_�                       Y    ����                                                                                                                                                                                                                                                                                                                                                             c ��    �                Z                                                                            --projection \5��                          �      [               5�_�                      ,    ����                                                                                                                                                                                                                                                                                                                                                             c �|    �               /																			--classifier-step-size=0.5 \5��       ,                 �                    5�_�                        ,    ����                                                                                                                                                                                                                                                                                                                                                             c��    �               /																			--classifier-step-size=0.- \5��       ,                 �                    5�_�                       $    ����                                                                                                                                                                                                                                                                                                                                                             c ��     �               )																			--inner-update-nuj=5 \5��       $                 ,                    5��