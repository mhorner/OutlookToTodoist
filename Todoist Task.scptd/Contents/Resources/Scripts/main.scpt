FasdUAS 1.101.10   ��   ��    k             l      ��  ��    ( "
	Create Todoist task from email

     � 	 	 D 
 	 C r e a t e   T o d o i s t   t a s k   f r o m   e m a i l 
 
   
  
 l     ��������  ��  ��        i         I      �� ���� 0 replace_chars        o      ���� 0 	this_text        o      ���� 0 search_string     ��  o      ���� 0 replacement_string  ��  ��    k             r         l     ����  o     ���� 0 search_string  ��  ��    n         1    ��
�� 
txdl  1    ��
�� 
ascr      r       !   n    	 " # " 2    	��
�� 
citm # o    ���� 0 	this_text   ! l      $���� $ o      ���� 0 	item_list  ��  ��     % & % r     ' ( ' l    )���� ) o    ���� 0 replacement_string  ��  ��   ( n      * + * 1    ��
�� 
txdl + 1    ��
�� 
ascr &  , - , r     . / . c     0 1 0 l    2���� 2 o    ���� 0 	item_list  ��  ��   1 m    ��
�� 
TEXT / o      ���� 0 	this_text   -  3 4 3 r     5 6 5 m     7 7 � 8 8   6 n      9 : 9 1    ��
�� 
txdl : 1    ��
�� 
ascr 4  ;�� ; L      < < o    ���� 0 	this_text  ��     = > = l     ��������  ��  ��   >  ? @ ? l     �� A B��   A ' ! get todoist token from text file    B � C C B   g e t   t o d o i s t   t o k e n   f r o m   t e x t   f i l e @  D E D l     F���� F r      G H G n     I J I I    �� K���� 0 replace_chars   K  L M L I   �� N��
�� .rdwrread****        **** N 4    �� O
�� 
file O l    P���� P b     Q R Q l   
 S���� S I   
�� T U
�� .earsffdralis        afdr T m    ��
�� afdrcusr U �� V��
�� 
rtyp V m    ��
�� 
ctxt��  ��  ��   R m   
  W W � X X � L i b r a r y : A p p l i c a t i o n   S u p p o r t : M i c r o s o f t : O f f i c e : O u t l o o k   S c r i p t   M e n u   I t e m s : t o d o i s t - t o k e n . t x t��  ��  ��   M  Y Z Y m     [ [ � \ \  
 Z  ]�� ] m     ^ ^ � _ _  ��  ��   J  f      H o      ���� 0 todoisttoken todoistToken��  ��   E  ` a ` l     ��������  ��  ��   a  b�� b l   c���� c O    d e d k    f f  g h g l   ��������  ��  ��   h  i j i l   �� k l��   k 5 / get the currently selected message or messages    l � m m ^   g e t   t h e   c u r r e n t l y   s e l e c t e d   m e s s a g e   o r   m e s s a g e s j  n o n r    # p q p 1    !��
�� 
CMgs q o      ���� $0 selectedmessages selectedMessages o  r s r l  $ $��������  ��  ��   s  t u t l  $ $��������  ��  ��   u  v w v l  $ $�� x y��   x E ? if there are no messages selected, warn the user and then quit    y � z z ~   i f   t h e r e   a r e   n o   m e s s a g e s   s e l e c t e d ,   w a r n   t h e   u s e r   a n d   t h e n   q u i t w  { | { Z   $ 9 } ~���� } =  $ (  �  o   $ %���� $0 selectedmessages selectedMessages � J   % '����   ~ k   + 5 � �  � � � I  + 2�� � �
�� .sysodlogaskr        TEXT � m   + , � � � � � n P l e a s e   s e l e c t   a   m e s s a g e   f i r s t   a n d   t h e n   r u n   t h i s   s c r i p t . � �� ���
�� 
disp � m   - .���� ��   �  ��� � L   3 5����  ��  ��  ��   |  � � � l  : :��������  ��  ��   �  � � � X   : ��� � � k   N � �  � � � l  N N��������  ��  ��   �  � � � l  N N�� � ���   � F @ get the information from the message, and store it in variables    � � � � �   g e t   t h e   i n f o r m a t i o n   f r o m   t h e   m e s s a g e ,   a n d   s t o r e   i t   i n   v a r i a b l e s �  � � � r   N W � � � n   N S � � � 1   O S��
�� 
subj � o   N O���� 0 
themessage 
theMessage � o      ���� 0 thename theName �  � � � r   X a � � � n   X ] � � � 1   Y ]��
�� 
sndr � o   X Y���� 0 
themessage 
theMessage � o      ���� 0 	thesender 	theSender �  � � � r   b k � � � n   b g � � � 1   c g��
�� 
prty � o   b c���� 0 
themessage 
theMessage � o      ���� 0 thepriority thePriority �  � � � r   l u � � � n   l q � � � 1   m q��
�� 
ctnt � o   l m���� 0 
themessage 
theMessage � o      ���� 0 thebody theBody �  � � � Z   v � � ��� � � =  v } � � � o   v y���� 0 thepriority thePriority � m   y |��
�� ePtyPrHi � r   � � � � � m   � � � � � � �  4 � o      ���� 0 thepriority thePriority��   � r   � � � � � m   � � � � � � �  0 � o      ���� 0 thepriority thePriority �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � + % remove new lines from the body first    � � � � J   r e m o v e   n e w   l i n e s   f r o m   t h e   b o d y   f i r s t �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � �  e c h o   ' � o   � ����� 0 thebody theBody � m   � � � � � � �  ' |   t r   - d   ' \ r '��   � o      ���� 0 thebody theBody �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � B < remove HTML tags from the body creating a plain text output    � � � � x   r e m o v e   H T M L   t a g s   f r o m   t h e   b o d y   c r e a t i n g   a   p l a i n   t e x t   o u t p u t �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � m   � � � � � � �  e c h o   ' � o   � ����� 0 thebody theBody � m   � � � � � � � b '   |   / u s r / b i n / t e x t u t i l   - s t d i n   - c o n v e r t   t x t   - s t d o u t��   � o      ���� 0 	plaintext 	plainText �  � � � l  � �����~��  �  �~   �  � � � l  � ��} � ��}   � > 8 create a new task with the information from the message    � � � � p   c r e a t e   a   n e w   t a s k   w i t h   t h e   i n f o r m a t i o n   f r o m   t h e   m e s s a g e �  � � � r   � � � � � I  � ��| ��{
�| .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � � � � b   � � �  � b   � � b   � � b   � � m   � � � 2 c u r l   - X   P O S T   - d   ' c o n t e n t = o   � ��z�z 0 thename theName m   � �		 �

 
   f o r   n   � � 1   � ��y
�y 
pnam o   � ��x�x 0 	thesender 	theSender  m   � � �  '   - d   ' t o k e n = � o   � ��w�w 0 todoisttoken todoistToken � m   � � �   '     - d   ' p r i o r i t y = � o   � ��v�v 0 thepriority thePriority � m   � � � � '   - d   ' d a t e _ s t r i n g = t o d a y '   h t t p s : / / t o d o i s t . c o m / A P I / a d d i t e m   - d   ' n o t e = � o   � ��u�u 0 	plaintext 	plainText � m   � � �  '�{   � o      �t�t 0 newitem newItem �  l  � ��s�r�q�s  �r  �q    r   � � n   � � m   � ��p
�p 
cAct o   � ��o�o 0 
themessage 
theMessage o      �n�n 0 
theaccount 
theAccount  r   �  n   �!"! 4   ��m#
�m 
cFld# m   $$ �%%  A r c h i v e" o   � ��l�l 0 
theaccount 
theAccount  o      �k�k 0 archivefolder archiveFolder &�j& I 	�i'(
�i .coremovenull���     obj ' o  	
�h�h 0 
themessage 
theMessage( �g)�f
�g 
insh) o  �e�e 0 archivefolder archiveFolder�f  �j  �� 0 
themessage 
theMessage � o   = >�d�d $0 selectedmessages selectedMessages � *�c* l �b�a�`�b  �a  �`  �c   e m    ++                                                                                  OPIM  alis    �  Macintosh HD               �(N8H+   !i�Microsoft Outlook.app                                           !ШȚs�        ����  	                Microsoft Office 2011     �(��      Ț�F     !i� �BT  GMacintosh HD:Applications: Microsoft Office 2011: Microsoft Outlook.app   ,  M i c r o s o f t   O u t l o o k . a p p    M a c i n t o s h   H D  8Applications/Microsoft Office 2011/Microsoft Outlook.app  / ��  ��  ��  ��       �_,-.�_  , �^�]�^ 0 replace_chars  
�] .aevtoappnull  �   � ****- �\ �[�Z/0�Y�\ 0 replace_chars  �[ �X1�X 1  �W�V�U�W 0 	this_text  �V 0 search_string  �U 0 replacement_string  �Z  / �T�S�R�Q�T 0 	this_text  �S 0 search_string  �R 0 replacement_string  �Q 0 	item_list  0 �P�O�N�M 7
�P 
ascr
�O 
txdl
�N 
citm
�M 
TEXT�Y !���,FO��-E�O���,FO��&E�O���,FO�. �L2�K�J34�I
�L .aevtoappnull  �   � ****2 k    55  D66  b�H�H  �K  �J  3 �G�G 0 
themessage 
theMessage4 4�F�E�D�C�B W�A [ ^�@�?+�>�= ��<�;�:�9�8�7�6�5�4�3�2�1�0�/ � � � ��. � ��-	�,�+�*�)�($�'�&�%
�F 
file
�E afdrcusr
�D 
rtyp
�C 
ctxt
�B .earsffdralis        afdr
�A .rdwrread****        ****�@ 0 replace_chars  �? 0 todoisttoken todoistToken
�> 
CMgs�= $0 selectedmessages selectedMessages
�< 
disp
�; .sysodlogaskr        TEXT
�: 
kocl
�9 
cobj
�8 .corecnte****       ****
�7 
subj�6 0 thename theName
�5 
sndr�4 0 	thesender 	theSender
�3 
prty�2 0 thepriority thePriority
�1 
ctnt�0 0 thebody theBody
�/ ePtyPrHi
�. .sysoexecTEXT���     TEXT�- 0 	plaintext 	plainText
�, 
pnam�+ 0 newitem newItem
�* 
cAct�) 0 
theaccount 
theAccount
�( 
cFld�' 0 archivefolder archiveFolder
�& 
insh
�% .coremovenull���     obj �I)*����l �%/j ��m+ 	E�O� �*�,E�O�jv  ��kl OhY hO ��[a a l kh  �a ,E` O�a ,E` O�a ,E` O�a ,E` O_ a   a E` Y 	a E` Oa _ %a  %j !E` Oa "_ %a #%j !E` $Oa %_ %a &%_ a ',%a (%�%a )%_ %a *%_ $%a +%j !E` ,O�a -,E` .O_ .a /a 0/E` 1O�a 2_ 1l 3[OY�4OPU ascr  ��ޭ