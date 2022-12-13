Vim�UnDo� �]�&�[�q;p�	�54Inσ��/U/0�I9��
  a   '        super(ConvNet, self).__init__()   5         (       (   (   (    c"    _�                     %   P    ����                                                                                                                                                                                                                                                                                                                                                             c��     �   %   '  D      
        # �   &   '  D    �   $   '  C      P        features = self.features(inputs, params=get_subdict(params, 'features'))5��    $   P                 -              	       �    %                  :   6              :       5�_�                    &   B    ����                                                                                                                                                                                                                                                                                                                                                             c��     �   %   (  D      B        # https://github.com/cezannec/capsule_net_pytorch/issues/45��    %   B                 p              	       �    &                      q                     5�_�                    '        ����                                                                                                                                                                                                                                                                                                                                                             c��     �   &   '           5��    &                      q                     5�_�                   '       ����                                                                                                                                                                                                                                                                                                                                                             c��    �   &   (  D      8        features = features.view((features.size(0), -1))�   '   (  D    5��    &                     �                     5�_�                    #   	    ����                                                                                                                                                                                                                                                                                                                                                             c�Q     �   #   %  D    �   #   $  D    5��    #                      �              P       5�_�                    $       ����                                                                                                                                                                                                                                                                                                                            $          $          v       c�U     �   #   %  E      O        self.classifier = MetaLinear(hidden_size*wh_size*wh_size, out_features)5��    #          
           �      
               5�_�      	              $       ����                                                                                                                                                                                                                                                                                                                            $          $          v       c�U     �   #   %  E      E        self. = MetaLinear(hidden_size*wh_size*wh_size, out_features)5��    #                  	   �              	       5�_�      
           	   $   $    ����                                                                                                                                                                                                                                                                                                                            $   $       $   >       v   >    c�[     �   #   %  E      N        self.projector = MetaLinear(hidden_size*wh_size*wh_size, out_features)5��    #   $                  �                     5�_�   	              
   $   $    ����                                                                                                                                                                                                                                                                                                                            $   $       $   >       v   >    c�\     �   #   %  E      3        self.projector = MetaLinear(, out_features)5��    #   $                  �                     �    #   $                 �                    5�_�   
                 ,        ����                                                                                                                                                                                                                                                                                                                            %           ,           v        c�j     �   +   4  E          �   ,   -  E    5��    +                    v              �      5�_�                    +       ����                                                                                                                                                                                                                                                                                                                            %           ,           v        c�m     �   *   -  L              return features, logits5��    *                    t              	       �    +                     u                    �    +                     v                     �    +                      u                     5�_�                    -   	    ����                                                                                                                                                                                                                                                                                                                            %           -           v        c�q     �   ,   .  M      7     def forward(self, inputs, params=None, prefix=''):5��    ,   	                                       5�_�                    1   7    ����                                                                                                                                                                                                                                                                                                                            %           -           v        c��     �   1   3  M    �   1   2  M    5��    1                      �              U       5�_�                    2       ����                                                                                                                                                                                                                                                                                                                            -           2          V       c��     �   1   3  N      T        logits = self.classifier(features, params=get_subdict(params, 'classifier'))5��    1                     �                     5�_�                    2   "    ����                                                                                                                                                                                                                                                                                                                            2   "       2   )       v   )    c��     �   1   3  N      U        plogits = self.classifier(features, params=get_subdict(params, 'classifier'))5��    1   "                                       5�_�                    2   "    ����                                                                                                                                                                                                                                                                                                                            2   "       2   )       v   )    c��     �   1   3  N      M        plogits = self.classifier(, params=get_subdict(params, 'classifier'))5��    1   "                                       5�_�                    4       ����                                                                                                                                                                                                                                                                                                                            2   "       2   )       v   )    c��    �   3   5  N              return features, logits5��    3                  	   a              	       5�_�                    4       ����                                                                                                                                                                                                                                                                                                                            4          4          v       c�}     �   3   5  N      (        return features, logits, plogits5��    3                     [                     5�_�                    4       ����                                                                                                                                                                                                                                                                                                                            4          4          v       c�~    �   3   5  N      !        return features,  plogits5��    3                     [                     5�_�                    *       ����                                                                                                                                                                                                                                                                                                                            4          4          v       c��     �   )   *                  5��    )                      L      	               5�_�                   ,       ����                                                                                                                                                                                                                                                                                                                            ,          4          v       c�     �   +   5  M   	   ?     def student_forward(self, inputs, params=None, prefix=''):   P        features = self.features(inputs, params=get_subdict(params, 'features'))   B        # https://github.com/cezannec/capsule_net_pytorch/issues/4   E        features = features.contiguous().view((features.size(0), -1))   T        logits = self.classifier(features, params=get_subdict(params, 'classifier'))   S        plogits = self.classifier(logits, params=get_subdict(params, 'classifier'))                       return features, plogits       5��    +                     m                    �    ,                     �                    �    -                     �                    �    .                     5                    �    /                     w                    �    0                     �                    �    1                                         �    2                                         �    3                      :                     5�_�                   ,       ����                                                                                                                                                                                                                                                                                                                            ,          4          v       c�"     �   +   -  M      ; def student_forward(self, inputs, params=None, prefix=''):5��    +                     n                     �    +                     n                     5�_�                    ,        ����                                                                                                                                                                                                                                                                                                                            ,           4           v        c�&     �   +   5  M   	   ; def student_forward(self, inputs, params=None, prefix=''):   L    features = self.features(inputs, params=get_subdict(params, 'features'))   >    # https://github.com/cezannec/capsule_net_pytorch/issues/4   A    features = features.contiguous().view((features.size(0), -1))   P    logits = self.classifier(features, params=get_subdict(params, 'classifier'))   O    plogits = self.classifier(logits, params=get_subdict(params, 'classifier'))              return features, plogits    5��    +                      m                     �    ,                      �                     �    -                      �                     �    .                      ,                     �    /                      j                     �    0                      �                     �    1                                           �    2                                           5�_�                    ,        ����                                                                                                                                                                                                                                                                                                                            ,           4           v        c�+     �   +   5  M   	   :def student_forward(self, inputs, params=None, prefix=''):   Hfeatures = self.features(inputs, params=get_subdict(params, 'features'))   :# https://github.com/cezannec/capsule_net_pytorch/issues/4   =features = features.contiguous().view((features.size(0), -1))   Llogits = self.classifier(features, params=get_subdict(params, 'classifier'))   Kplogits = self.classifier(logits, params=get_subdict(params, 'classifier'))       return features, plogits    5��    +                      m                     �    ,                      �                     �    .                      4                     �    /                      v                     �    0                      �                     �    2                                           5�_�                    -        ����                                                                                                                                                                                                                                                                                                                            -           4           v        c�/     �   ,   5  M      L    features = self.features(inputs, params=get_subdict(params, 'features'))   :# https://github.com/cezannec/capsule_net_pytorch/issues/4   A    features = features.contiguous().view((features.size(0), -1))   P    logits = self.classifier(features, params=get_subdict(params, 'classifier'))   O    plogits = self.classifier(logits, params=get_subdict(params, 'classifier'))           return features, plogits    5��    ,                     �                    �    .                     8                    �    /                     ~                    �    0                     �                    �    2                     (                    5�_�                    .        ����                                                                                                                                                                                                                                                                                                                            -           4           v        c�3    �   -   .          :# https://github.com/cezannec/capsule_net_pytorch/issues/45��    -                      �      ;               5�_�                     0   F    ����                                                                                                                                                                                                                                                                                                                            0   F       0   O       v   O    c�&     �   /   1  L      S        plogits = self.classifier(logits, params=get_subdict(params, 'classifier'))5��    /   F       
           �      
               5�_�      !               0   F    ����                                                                                                                                                                                                                                                                                                                            0   F       0   O       v   O    c�&    �   /   1  L      I        plogits = self.classifier(logits, params=get_subdict(params, ''))5��    /   F               	   �              	       5�_�       "           !   0       ����                                                                                                                                                                                                                                                                                                                            0           0          v       c�L     �   /   1  L      R        plogits = self.classifier(logits, params=get_subdict(params, 'projector'))5��    /          
           �      
               5�_�   !   #           "   0       ����                                                                                                                                                                                                                                                                                                                            0           0          v       c�L     �   /   1  L      H        plogits = self.(logits, params=get_subdict(params, 'projector'))5��    /                     �                     �    /                 	   �             	       �    /          	       	   �      	       	       5�_�   "   $           #   0        ����                                                                                                                                                                                                                                                                                                                            0           0          v       c�O   	 �   /   1  L      Q        plogits = self.projector(logits, params=get_subdict(params, 'projector'))5��    /          	          �      	              �    /                 	   �             	       5�_�   #   %           $   3        ����                                                                                                                                                                                                                                                                                                                                       3           v        c!�     �   2   R  L       �   3   4  L    5��    2                                    �      5�_�   $   &           %   3       ����                                                                                                                                                                                                                                                                                                                                       3           v        c"      �   2   4  j      class ConvNet(MetaModule):5��    2                                          5�_�   %   '           &   A       ����                                                                                                                                                                                                                                                                                                                                       3           v        c"     �   @   A          ?        self.projector = MetaLinear(out_features, out_features)5��    @                      Z
      @               5�_�   &   (           '   H        ����                                                                                                                                                                                                                                                                                                                            H           O           v        c"   
 �   G   I  i   	   >    def student_forward(self, inputs, params=None, prefix=''):   P        features = self.features(inputs, params=get_subdict(params, 'features'))   E        features = features.contiguous().view((features.size(0), -1))   T        logits = self.classifier(features, params=get_subdict(params, 'classifier'))   Q        plogits = self.projector(logits, params=get_subdict(params, 'projector'))                return features, plogits        5��    G                      �      �              5�_�   '               (   5       ����                                                                                                                                                                                                                                                                                                                            H           H           v        c"    �   4   6  a      '        super(ConvNet, self).__init__()5��    4                     �                     5�_�                    ,       ����                                                                                                                                                                                                                                                                                                                            ,          4          v       c�     �   +   -  M      :def student_forward(self, inputs, params=None, prefix=''):5��    +                      m                     5�_�                   ,       ����                                                                                                                                                                                                                                                                                                                            ,          4          v       c�     �   +   5  M   	   ; def student_forward(self, inputs, params=None, prefix=''):   L    features = self.features(inputs, params=get_subdict(params, 'features'))   >    # https://github.com/cezannec/capsule_net_pytorch/issues/4   A    features = features.contiguous().view((features.size(0), -1))   P    logits = self.classifier(features, params=get_subdict(params, 'classifier'))   O    plogits = self.classifier(logits, params=get_subdict(params, 'classifier'))              return features, plogits    5��    +                     m                    �    ,                     �                    �    -                     �                    �    .                     5                    �    /                     w                    �    0                     �                    �    1                                         �    2                                         �    3                      :                     5�_�                    ,        ����                                                                                                                                                                                                                                                                                                                            ,           ,           v        c��    �   +   5  M         5��    +                     m      �              5�_�                    '       ����                                                                                                                                                                                                                                                                                                                                                             c��     �   '   (  D    �   '   (  D       5��    '                      �                     5��