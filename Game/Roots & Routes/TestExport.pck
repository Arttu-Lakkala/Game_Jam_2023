GDPC                                                                               <   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex@,      �      &�y���ڞu;>��.p@   res://.import/icon2.png-2294dfe885793d4711fc20bee13a3760.stex   �4      |      kxp{�ܟ�C����Vs@   res://.import/icon3.png-43d2171f508ea7fdbd835324de92f715.stex    =      �      �y\����JZ@��VF@   res://.import/icon4.png-58174286a6bda1542d86fe67f6a9a7fa.stex   PE      z      ~�͠��-"��!��   res://City_Map.gd.remap �M      #       K7�;i|N��?fD^K   res://City_Map.gdc  p      �      �d�)���④�(H�   res://City_Map.tscn `      �      �E��m5��IW�e{    res://Map_Charachter.gd.remap   �M      )       �u)��p��m���r�   res://Map_Charachter.gdc`      i      �!3~���H���h|p   res://Objects/Location.tscn �      �      iJ�0�8��"le��$   res://Objects/Map_Charachter.tscn   `      �      D.��8�no-9�!�j�$   res://Objects/PathInteractable.tscn �      �      �����	{z�� R���   res://Objects/Route.tscn�      4      �a��̱,��H�Nl    res://PathInteractable.gd.remap �M      +       B�&�&�.�C��r�o   res://PathInteractable.gdc  �"      �       }�q�	7N��[�߯�   res://Route.gd.remapN              �)�LO��纯?�T��   res://Route.gdc �#      �      �NR�#ER�|����   res://default_env.tres  �+      �       um�`�N��<*ỳ�8   res://icon.png.import    2      �      ��fe��6�B��^ U�   res://icon2.png.import  P:      �      }��w&Qb&��   res://icon3.png.import  �B      �      D�z�T�T��)�7�e   res://icon4.png.import  �J      �      ~5�S�z�����.�HU   res://project.binary0N            ��=n��%���l�h�GDSC            =      ���ӄ�   �����϶�   �������Ŷ���   ����׶��   ����¶��   ����������������Ҷ��   �������Ӷ���   ������¶      Zoom_Out      FullViewCamera              Charachter/PlayerCamera                                                  	   	   
   
                                 &      /      2      ;      3YYYYYYYYY0�  PQV�  -YYY0�  P�  QV�  &P�  T�  PQQV�  �  P�  QT�  �  �  (V�  �  P�  QT�  �  Y`         [gd_scene load_steps=7 format=2]

[ext_resource path="res://Objects/Location.tscn" type="PackedScene" id=1]
[ext_resource path="res://Objects/Map_Charachter.tscn" type="PackedScene" id=2]
[ext_resource path="res://Objects/Route.tscn" type="PackedScene" id=3]
[ext_resource path="res://City_Map.gd" type="Script" id=4]

[sub_resource type="Curve2D" id=1]
resource_local_to_scene = true
_data = {
"points": PoolVector2Array( 0, 0, 0, 0, 0, 3, 53.9716, 57.1464, -53.9716, -57.1464, -473, 3, -66.6708, 55.559, 66.6708, -55.559, -473, -390, 0, 0, 0, 0, -2, -390 )
}

[sub_resource type="Curve2D" id=2]
_data = {
"points": PoolVector2Array( 0, 0, 0, 0, 1, -389, 0, 0, 0, 0, 306, -387, 0, 0, 0, 0, 134, -173, 0, 0, 0, 0, 149, -98, 0, 0, 0, 0, 225, 2, 0, 0, 0, 0, 12, 3 )
}

[node name="City_Map" type="Node2D"]
script = ExtResource( 4 )

[node name="Location" parent="." instance=ExtResource( 1 )]
position = Vector2( 0, 2 )

[node name="Location2" parent="." instance=ExtResource( 1 )]
position = Vector2( -6, -391 )

[node name="Charachter" parent="." instance=ExtResource( 2 )]
position = Vector2( 4, 3 )
location = NodePath("../Location")
move_speed = 100

[node name="PlayerCamera" type="Camera2D" parent="Charachter"]
position = Vector2( -4, -1 )
current = true

[node name="Route1" parent="." instance=ExtResource( 3 )]
startPoint = NodePath("../Location")
endPoint = NodePath("../Location2")

[node name="Path2D" parent="Route1" index="0"]
curve = SubResource( 1 )

[node name="Route2" parent="." instance=ExtResource( 3 )]
startPoint = NodePath("../Location2")
endPoint = NodePath("../Location")

[node name="Path2D" parent="Route2" index="0"]
curve = SubResource( 2 )

[node name="StartPoint" parent="Route2" index="1"]
position = Vector2( 89, -393 )
rotation = 3.14159

[node name="Endpoint" parent="Route2" index="2"]
position = Vector2( 107, 5.00002 )
rotation = 3.14159

[node name="FullViewCamera" type="Camera2D" parent="."]
zoom = Vector2( 2, 2 )

[editable path="Charachter"]
[editable path="Route1"]
[editable path="Route2"]
           GDSC   !      B   ;     ������������τ�   ������������ض��   �������ض���   �����Ѷ�   ��������Ŷ��   ����������Ŷ   ���������ζ�   �����¶�   ����Ӷ��   �������϶���   ��������   �������Ӷ���   ���Ӷ���   ���������Ҷ�   �����Ӷ�   �������������Ӷ�   �������Ŷ���   ����׶��   �������ض���   ����������ٶ   �����������ض���   ���������¶�   ���Ӷ���   �������¶���   ���������Ҷ�   �������������Ӷ�   ��������������ض   ����������ڶ   ������޶   �������Ҷ���   ������������Ŷ��   ����Ӷ��   ���������������Ŷ���                              shoutLocation         Path2D                     	      
                           	      
   "      )      8      9      ?      @      G      H      I      J      Q      R      X      Y      ]      d      o      u      {      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6     7     8     9     :     ;   (  <   +  =   /  >   6  ?   7  @   8  A   9  B   3YYB�  P�  QYY;�  Y;�  Y;�  Y;�  �  Y;�  Y;�  Y;�	  �  T�
  Y8P�  Q5;�  �  P�  Q<�  YY8;�  V�  YY5;�  W�  �  YYY0�  P�  QV�  �  &P�  QV�  �  &�  V�  �  �  L�  M�  &�  T�  P�  Q	�  V�  �  �  �  �  &�  �  V�  �  P�  T�  Q�  �  �  �  (V�  �  �  L�  M�  &�  T�  P�  Q	�  V�  �  �  �  �  &�  �  T�  PQV�  �  P�  T�  Q�  �  �  �  �	  P�  �  QT�  PQ�  �  (V�  �	  �  T�
  �  �	  �  P�	  Q�  �  YYY0�  P�  QV�  �  �  �  �	  �  T�
  �  �  �  �  �  P�  R�  QYYY0�  P�  R�  QV�  �  �  �  �  �  �  �  �  �  �  �  T�  P�  QT�  T�   PQ�  &�  V�  �  �  T�  PQ�  �  (V�  �  �  �  �  P�  R�  Q�  YYY`       [gd_scene load_steps=2 format=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 20, 20.5 )

[node name="Location" type="Node2D"]

[node name="ColorRect" type="ColorRect" parent="."]
margin_left = -17.0
margin_top = -20.0
margin_right = 23.0
margin_bottom = 20.0

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 2, 0.5 )
shape = SubResource( 1 )
[gd_scene load_steps=8 format=2]

[ext_resource path="res://icon4.png" type="Texture" id=1]
[ext_resource path="res://icon3.png" type="Texture" id=2]
[ext_resource path="res://icon.png" type="Texture" id=3]
[ext_resource path="res://icon2.png" type="Texture" id=4]
[ext_resource path="res://Map_Charachter.gd" type="Script" id=5]

[sub_resource type="SpriteFrames" id=1]
animations = [ {
"frames": [ ExtResource( 3 ), ExtResource( 4 ), ExtResource( 2 ), ExtResource( 1 ) ],
"loop": true,
"name": "Move",
"speed": 5.0
} ]

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 31, 29 )

[node name="KinematicBody2D" type="KinematicBody2D"]
script = ExtResource( 5 )

[node name="AnimatedSprite" type="AnimatedSprite" parent="."]
frames = SubResource( 1 )
animation = "Move"
frame = 3

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
position = Vector2( 0, 1 )
shape = SubResource( 2 )
 [gd_scene load_steps=2 format=2]

[ext_resource path="res://PathInteractable.gd" type="Script" id=1]

[node name="PathInteractable" type="Area2D"]
z_index = 100
script = ExtResource( 1 )

[node name="CollisionPolygon2D" type="CollisionPolygon2D" parent="."]
polygon = PoolVector2Array( 0, 0, 390, -120, 310, 0, 390, 120 )

[node name="Polygon2D" type="Polygon2D" parent="."]
polygon = PoolVector2Array( 0, 0, 390, -120, 310, 0, 390, 120 )
         [gd_scene load_steps=4 format=2]

[ext_resource path="res://Objects/PathInteractable.tscn" type="PackedScene" id=1]
[ext_resource path="res://Route.gd" type="Script" id=2]

[sub_resource type="Curve2D" id=1]
resource_local_to_scene = true
_data = {
"points": PoolVector2Array( 0, 0, 0, 0, 0, 3, 131.056, 123.032, -131.056, -123.032, -473, 3, -168.5, 179.199, 168.5, -179.199, -443, -352, 0, 0, 0, 0, -2, -390, 0, 0, 0, 0, 0, 3 )
}

[node name="Node2D" type="Node2D"]
script = ExtResource( 2 )

[node name="Path2D" type="Path2D" parent="."]
modulate = Color( 0.921569, 0.0509804, 0.0509804, 1 )
position = Vector2( -2, 2 )
curve = SubResource( 1 )

[node name="StartPoint" parent="." instance=ExtResource( 1 )]
position = Vector2( -98, 4 )
scale = Vector2( 0.2, 0.2 )

[node name="Endpoint" parent="." instance=ExtResource( 1 )]
position = Vector2( -102, -388 )
scale = Vector2( 0.2, 0.2 )

[connection signal="input_event" from="StartPoint" to="." method="_on_StartPoint_input_event"]
[connection signal="input_event" from="Endpoint" to="." method="_on_Endpoint_input_event"]
            GDSC                   ���ׄ�$   �������������������������������¶���   �������¶���   ����¶��   ��������ζ��                                     3YYY0�  P�  R�  R�  QV�  -Y`      GDSC   $      6   Y     ���ӄ�   ����������Ӷ   ����Ӷ��   ��������Ŷ��   ���������¶�   �������Ӷ���   ���Ӷ���   �������¶���   �������Ķ���   ��������   �����϶�   ������¶   �����������������������¶���   �������¶���   ����¶��   ��������ζ��   ��������������������ض��   ������Ҷ   ������޶   �������������������������¶�   �������������������Ŷ���   �������������ض�   ������Ӷ   ����������Ӷ   ڶ��   ���ӄ�   ����   ������������Ķ��   ����޶��   ���޶���   ����¶��   ����Ӷ��   ���������������Ŷ���   ��������¶��   �������ض���   ��������Ҷ��            /root/City_Map/Charachter         shoutLocation         _check_interactables                       
   StartPoint        Endpoint      TEST            Path2D                                       *      +      .   	   3   
   4      :      A      L      M      X      d      m      u      y      z      {      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (     )     *     +     ,   
  -     .     /   (  0   .  1   6  2   B  3   M  4   R  5   W  6   3YYB�  P�  R�  QYY8P�  Q5;�  �  P�  Q<�  Y8P�  Q5;�  �  P�  Q<�  YY;�  Y;�	  YY0�
  PQV�  �  �  P�  Q�  �  T�  P�  RR�  QYY0�  P�  R�  R�  QV�  &P�  4�  �  T�  QV�  �  T�  PR�  Q�  &P�	  �  QV�  �	  �  YYY0�  P�  R�  R�  QV�  &P�  4�  �  T�  QV�  �  T�  PR�  Q�  &P�	  �  QV�  �	  �  YY0�  P�  QV�  &P�  �  QV�  �  P�  QT�  �  �  &P�	  �  QV�  �  PQ�  (V�  �  P�  QT�  �  �  &P�  �  QV�  �  P�  QT�  �  �  &P�	  �  QV�  �  PQ�  (V�  �  P�  QT�  �  YYYY0�  PQV�  ;�  V�  T�  PQ�  �D  P�	  Q�  �  T�  �  P�  RR�  RQ�  �  T�  �
  �  ;�  �  P�  Q�  )�  �  T�  T�   PQV�  �  T�!  P�  �  T�"  Q�  �#  P�  Q�  �	  Y`            [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @            �  WEBPRIFF�  WEBPVP8L�  /?����m��������_"�0@��^�"�v��s�}� �W��<f��Yn#I������wO���M`ҋ���N��m:�
��{-�4b7DԧQ��A �B�P��*B��v��
Q�-����^R�D���!(����T�B�*�*���%E["��M�\͆B�@�U$R�l)���{�B���@%P����g*Ųs�TP��a��dD
�6�9�UR�s����1ʲ�X�!�Ha�ߛ�$��N����i�a΁}c Rm��1��Q�c���fdB�5������J˚>>���s1��}����>����Y��?�TEDױ���s���\�T���4D����]ׯ�(aD��Ѓ!�a'\�G(��$+c$�|'�>����/B��c�v��_oH���9(l�fH������8��vV�m�^�|�m۶m�����q���k2�='���:_>��������á����-wӷU�x�˹�fa���������ӭ�M���SƷ7������|��v��v���m�d���ŝ,��L��Y��ݛ�X�\֣� ���{�#3���
�6������t`�
��t�4O��ǎ%����u[B�����O̲H��o߾��$���f���� �H��\��� �kߡ}�~$�f���N\�[�=�'��Nr:a���si����(9Lΰ���=����q-��W��LL%ɩ	��V����R)�=jM����d`�ԙHT�c���'ʦI��DD�R��C׶�&����|t Sw�|WV&�^��bt5WW,v�Ş�qf���+���Jf�t�s�-BG�t�"&�Ɗ����׵�Ջ�KL�2)gD� ���� NEƋ�R;k?.{L�$�y���{'��`��ٟ��i��{z�5��i������c���Z^�
h�+U�mC��b��J��uE�c�����h��}{�����i�'�9r�����ߨ򅿿��hR�Mt�Rb���C�DI��iZ�6i"�DN�3���J�zڷ#oL����Q �W��D@!'��;�� D*�K�J�%"�0�����pZԉO�A��b%�l�#��$A�W�A�*^i�$�%a��rvU5A�ɺ�'a<��&�DQ��r6ƈZC_B)�N�N(�����(z��y�&H�ض^��1Z4*,RQjԫ׶c����yq��4���?�R�����0�6f2Il9j��ZK�4���է�0؍è�ӈ�Uq�3�=[vQ�d$���±eϘA�����R�^��=%:�G�v��)�ǖ/��RcO���z .�ߺ��S&Q����o,X�`�����|��s�<3Z��lns'���vw���Y��>V����G�nuk:��5�U.�v��|����W���Z���4�@U3U�������|�r�?;�
         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST@   @            `  WEBPRIFFT  WEBPVP8LG  /?� O)�$GRT���B8(�?}='H@�$I��Y��o�t@�ua�ʀɶ�f�}����I"��?� o}����A,2@�0P	 T#H$ � F(�D�A�nF� �D����$02���@ RH0��� $��F Q�i)�	��l(���	�l	�j���@0J  D"��  @2��H�l�1J9p,s芮Re0��'cc�rTcZ����<�`t�e3�c��(G}���f���J1��<���27cc�N
F�m7U�Tp��*��y1�6�1�2�QX������뇮�mn�(��ٱ?��Oc����T�r̵C��[���e�v�����_� A�D�%��8�Q����7%����v��֣�՗�˱?���Dk�I��k۶m۶��qֶm���6�X�dyUIUR��n#)��t��� �G{�0�����1�|��`6�툗.�1��A-���0�9Ɗ�Ԧ����`�j�¾?��<��<l_s�����a����v�=s3fɚy5p#�JĘ5��/?��.�v�%
w\���߿�G�J��JBȲ�^-��9���ٻz6�pu�Ye�Qw"�jY�����c�5h i���B~%��YS�*U���v0ᡋ�N%3��t�[�n�����TI���F�p�nN���*ђr�l�]��^��s��}�}�j��4��J�U!�1 ��/�4|u��XlK��}w��<���� ��O�V�� x�,�'�r�`�,B�.�Cmb�±�f/^]���2q�H�%���͖qC���3��J��f�[��2�v�5�+
jy���ރ�D��ʀ�1h\���g�#c�0r����`����U|j�T�a ��%a2o�ؾ�0JI��^���_�K�N��J��F%��S!�j�37
?)�CL x�55I��17J�\��.�R)Ux���<���`����������y��y��p��D�/G�����s+p\�qp�(��D[s�}�e��T�:�"D��?�6�p�ًWW�Ne�y���� N ��b��@p= ��d)�Z� ~՗B�������ak���s��M��}�a�:7�(�|�Ϸo~B�@�4��KR��֦�7���f,)�0O	=����*�Cf�'��I�&�E�`.D�N%3��_h&_#9k�^UD�c�8|rA�"zu&�Z������g�ڢG���m�a�;�,UF�v�������a��b�fYc��T��y_~]��Fj�� 5p#�Jq3�%K��S;�L�N`.jc.���y��a��`N�8��G8Ɗm[����x�<.��.c�����l��/p=ޛ��z_�>      [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon2.png-2294dfe885793d4711fc20bee13a3760.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon2.png"
dest_files=[ "res://.import/icon2.png-2294dfe885793d4711fc20bee13a3760.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST@   @            |  WEBPRIFFp  WEBPVP8Lc  /?� O)�$GRT���B8(�?}='H@�$I��Y��o�t@�ua�ʀɶ�f�}����I"��?� o}����A,2@�0P	 T#H$ � F(�D�A�nF� �D����$02���@ RH0��� $��F Q�i)�	��l(���	�l	�j���@0J  D"��  @2��H�l�1J9p,s芮Re0��'cc�rTcZ����<�`t�e3�c��(G}���f���J1��<���27cc�N
F�m7U�Tp��*��y1�6�1�2�QX������뇮�mn�(��ٱ?��Oc����T�r̵C��[���e�v�����_� A�D�%��8�Q����7%����v��֣�՗�˱?���m�I������zls��m�1:��m۶m�JcՓ���t*}"�? pl�C#���p�1�W�`V�c���c&��J�3�{`�d�zj��F��0=�Z=�ql!3Q+6��������W��&�����y�������8ʘ��?W�9O�Y��$���������E���eďV ��I��ΣSLVX��	�}���xe3�p�&K��C4�q��¯�h^��¦#`
�pJ �	�|��?"��ӟ��AQ�$��U����x�:*�op���I�1�:�0�]'$�स@=�C�lsȝ�̉�R�^�	!db&"y��\�����<���v*R� ^�%1�Q�qE���� |��E�TQ���<�� ��L^��<3]�����J�����Qf���@3AQDڨ��w5���o0W^#KIO�UT'H��E�z�HQ�p�ϝ��=8C������9�P(���{7nܸ�/�i��n޸q��ug	Fc��_������ޏ���c/�wߦ���ً|�&�\����*��-V�mUݾf3I;�wo��g[�"&u���[7��7�`lw�
0�X8�t�IK�����K,��q�WKx-�,@"O�D,��;����+�>i;F�1m�d1R�ԩXlɺnD�n�,���0���u�Lխ�P�^_�]�*�Ԧ�HU���k��TB��M��m8���T ]��!���=j[/�>���歇Dc)B7;_����Z&�����W;��T����g"ILfQ���T��'H�������3y��	�yf
�K�٨��v ���
̖e>������?1�7�eyw�}�hB�䶻(�tg�Ʉ��Q�Ͻ��>�m�~�<S=�P8��w?��P�f�! (w=����P��(�og��f_�xKE3���Dɩc_1�5أ��dM&���7��=�v+X��Z�l`�1�A'��`b� ��ά��*��-zh���p�1           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon3.png-43d2171f508ea7fdbd835324de92f715.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon3.png"
dest_files=[ "res://.import/icon3.png-43d2171f508ea7fdbd835324de92f715.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           GDST@   @            ^  WEBPRIFFR  WEBPVP8LF  /?� O)�$GRT���B8(�?}='H@�$I��Y��o�t@�ua�ʀɶ�f�}����I"��?� o}����A,2@�0P	 T#H$ � F(�D�A�nF� �D����$02���@ RH0��� $��F Q�i)�	��l(���	�l	�j���@0J  D"��  @2��H�l�1J9p,s芮Re0��'cc�rTcZ����<�`t�e3�c��(G}���f���J1��<���27cc�N
F�m7U�Tp��*��y1�6�1�2�QX������뇮�mn�(��ٱ?��Oc����T�r̵C��[���e�v�����_� A�D�%��8�Q����7%����v��֣�՗�˱?���Dk�I�fֶm۶m�gm۶m�m#�UO��ѕJ�U��n#)�s��3� ��{�
����1�|�|6��hQM���[���"�1Q��6�,����m;���	�1��'\vr�8�p��<�?ߚn!8A����tKB�l|[v4�P����i��1��JTV���{�vX�,:0�1���~�-���f��Ї�*Ւy�X�J���VpG0{�j�54�*3����eRz�N4]��k��5������~�
YW�fr�qȜ����j�ԙ���6�_�r�w��O7o.6_Ҽs�a~�)�D��{��ĭ�����Ndhh�ˆ^˫0�iU�F��
 P/P�	�B�������>9$�+�^<{�؅L���PM$1�u�"����E{3��"\S�����q��Xal�y�]��N�nP�k�����ﭖzu��	A2J��7�0N���@�s��ծ,I��L�Y�PA6
i������o�(��;v�l2(s�|�f��\�s�KI�O�26o���A�`M��" ���hc�t�㕔�6?�5/�L�Bv�m%��ھn��u������}�)�q�06�BCCî�V�[;��ܠ�,��X[�{�ƔQ�"��q
~���ų'�]�R�C�&�d�t��'I�+ @�@�&������u�`��/rHx��������B܉�~ِ1��z1 c$U�q5���N��O7o.6_��{��L�FSr�[�?�j�ԙc��Z��7��Po�g馩V�L�!nJz�N�T0Y`���\-���QeYH�⦤b�i�@>v�nN��j��X��I�,:���V��{���相i��O�e^+[��GU%�w�|n��m��lB��{8)K�������n���v�ڟo��!�q��m�%��	��<bߣ��i����D�Ӷc�8 V��a=��#D, ��&l��Ѣ�z�7������}       [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon4.png-58174286a6bda1542d86fe67f6a9a7fa.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon4.png"
dest_files=[ "res://.import/icon4.png-58174286a6bda1542d86fe67f6a9a7fa.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
process/normal_map_invert_y=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
           [remap]

path="res://City_Map.gdc"
             [remap]

path="res://Map_Charachter.gdc"
       [remap]

path="res://PathInteractable.gdc"
     [remap]

path="res://Route.gdc"
ECFG      application/run/main_scene         res://City_Map.tscn    input/Zoom_Out�              events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          physical_scancode             unicode           echo          script            deadzone      ?   mono/project/assembly_name         UnnamedProject            