GDPC                                                                                @   res://.import/Arrow.png-3338cb6e5df7a9c9fd3fc2709e2d951a.stex   ��      �      ӑ��3�Hߝ|�v�<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�L      U      -��`�0��x�5�[L   res://.import/joystick_background.png-a704d9dd1a3f2b398b0519aa8633d55a.stex �u      �      M�{����1�0��b�T   res://.import/joystick_background_cross.png-292ca8e23f373fbd69963f3bd38d1ef7.stex   @�      �      ���=p�;�"��H   res://.import/joystick_circle.png-23157b8c71d52f98a75b48cace5a395f.stex �      �      �Zq�۾�=|0��AH   res://.import/joystick_handle.png-6f7aa9df5093e15feeed0334767c8683.stex P�      �      �Zq�۾�=|0��AD   res://.import/preview_1.png-06ff17d6641b7514728403d9e51242f6.stex   0�      ;�      �3�53�1O.�hA��5D   res://.import/preview_2.png-28e0b947f651cb4e3bd8fb4aec3b5a36.stex   �     uk      ������v$U.~�@D   res://.import/preview_icon.png-b6f91254769c8365b597f57b76deea52.stex0�     �&      ��a�r�s���g�>   res://cenas/Mundo.tscn  �
      B      �L7z�B�#�r���"   res://icon.png  p     �      G1?��z�c��vN��   res://icon.png.import   Z      �      �����%��(#AB�,   res://joystick/Joystick/Joystick.gd.remap   �     5       ,�3�ca���$   res://joystick/Joystick/Joystick.gdc�\      L      X����f:^dmH��	(   res://joystick/Joystick/Joystick.tscn   �p      �      ���ְq�V�p�� ŀ8   res://joystick/Joystick/joystick_background.png.import  ��      �      ��z��2���#B��<   res://joystick/Joystick/joystick_background_cross.png.import�      �      �M�̶�����[����4   res://joystick/Joystick/joystick_circle.png.import  ��      �      �0�S�m(raT��|�524   res://joystick/Joystick/joystick_handle.png.import  ��      �      �ؿw���N~�{���A$   res://joystick/Test/Arrow.png.import��      �      ��z��%�u���T��$   res://joystick/Test/Player.gd.remap      /       <������p�|�Re�    res://joystick/Test/Player.gdc  @�      �      ��:wO	�z,c���    res://joystick/Test/Player.tscn 0�      �      �-�H�u	��q/��    res://joystick/Test/Test.tscn    �            �_���X>��K ��$   res://joystick/Test/TestScene.tscn  0�      K      �V�
�r�� ᢓ�̯    res://joystick/default_env.tres ��      �       um�`�N��<*ỳ�8$   res://joystick/preview_1.png.import p�     �      n����nJ������!$   res://joystick/preview_2.png.import ��     �      �S��Փ�W��4е��(   res://joystick/preview_icon.png.import  �     �      ��:MJ�_��cՉ��V   res://project.binary`+     �      �m�y�}���iן    res://scripts/Player.gd.remap   @     )       �g��і��CY�e�<e�   res://scripts/Player.gdc�     +      �o��	:��Ï�$.Gx    [gd_scene load_steps=5 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]
[ext_resource path="res://scripts/Player.gd" type="Script" id=2]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 32 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 32, 32 )

[node name="Mundo" type="Node"]

[node name="Player" type="KinematicBody2D" parent="."]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="Player"]
position = Vector2( 512, 320 )
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Player"]
position = Vector2( 512, 320 )
shape = SubResource( 1 )

[node name="Camera2D" type="Camera2D" parent="Player"]
anchor_mode = 0
current = true

[node name="paredes" type="Node" parent="."]

[node name="parede" type="StaticBody2D" parent="paredes"]
position = Vector2( 512, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede"]
shape = SubResource( 2 )

[node name="parede2" type="StaticBody2D" parent="paredes"]
position = Vector2( 448, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede2"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede2"]
shape = SubResource( 2 )

[node name="parede3" type="StaticBody2D" parent="paredes"]
position = Vector2( 384, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede3"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede3"]
shape = SubResource( 2 )

[node name="parede4" type="StaticBody2D" parent="paredes"]
position = Vector2( 320, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede4"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede4"]
shape = SubResource( 2 )

[node name="parede5" type="StaticBody2D" parent="paredes"]
position = Vector2( 576, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede5"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede5"]
shape = SubResource( 2 )

[node name="parede6" type="StaticBody2D" parent="paredes"]
position = Vector2( 640, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede6"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede6"]
shape = SubResource( 2 )

[node name="parede7" type="StaticBody2D" parent="paredes"]
position = Vector2( 640, 448 )

[node name="Sprite" type="Sprite" parent="paredes/parede7"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede7"]
shape = SubResource( 2 )

[node name="parede8" type="StaticBody2D" parent="paredes"]
position = Vector2( 640, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede8"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede8"]
shape = SubResource( 2 )

[node name="parede9" type="StaticBody2D" parent="paredes"]
position = Vector2( 704, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede9"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede9"]
shape = SubResource( 2 )

[node name="parede10" type="StaticBody2D" parent="paredes"]
position = Vector2( 768, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede10"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede10"]
shape = SubResource( 2 )

[node name="parede11" type="StaticBody2D" parent="paredes"]
position = Vector2( 832, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede11"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede11"]
shape = SubResource( 2 )

[node name="parede12" type="StaticBody2D" parent="paredes"]
position = Vector2( 896, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede12"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede12"]
shape = SubResource( 2 )

[node name="parede13" type="StaticBody2D" parent="paredes"]
position = Vector2( 896, 448 )

[node name="Sprite" type="Sprite" parent="paredes/parede13"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede13"]
shape = SubResource( 2 )

[node name="parede14" type="StaticBody2D" parent="paredes"]
position = Vector2( 896, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede14"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede14"]
shape = SubResource( 2 )

[node name="parede15" type="StaticBody2D" parent="paredes"]
position = Vector2( 960, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede15"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede15"]
shape = SubResource( 2 )

[node name="parede16" type="StaticBody2D" parent="paredes"]
position = Vector2( 1024, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede16"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede16"]
shape = SubResource( 2 )

[node name="parede17" type="StaticBody2D" parent="paredes"]
position = Vector2( 256, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede17"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede17"]
shape = SubResource( 2 )

[node name="parede18" type="StaticBody2D" parent="paredes"]
position = Vector2( 256, 448 )

[node name="Sprite" type="Sprite" parent="paredes/parede18"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede18"]
shape = SubResource( 2 )

[node name="parede19" type="StaticBody2D" parent="paredes"]
position = Vector2( 256, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede19"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede19"]
shape = SubResource( 2 )

[node name="parede20" type="StaticBody2D" parent="paredes"]
position = Vector2( 192, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede20"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede20"]
shape = SubResource( 2 )

[node name="parede21" type="StaticBody2D" parent="paredes"]
position = Vector2( 128, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede21"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede21"]
shape = SubResource( 2 )

[node name="parede22" type="StaticBody2D" parent="paredes"]
position = Vector2( -32, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede22"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede22"]
shape = SubResource( 2 )

[node name="parede23" type="StaticBody2D" parent="paredes"]
position = Vector2( -96, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede23"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede23"]
shape = SubResource( 2 )

[node name="parede24" type="StaticBody2D" parent="paredes"]
position = Vector2( -96, 448 )

[node name="Sprite" type="Sprite" parent="paredes/parede24"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede24"]
shape = SubResource( 2 )

[node name="parede25" type="StaticBody2D" parent="paredes"]
position = Vector2( -96, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede25"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede25"]
shape = SubResource( 2 )

[node name="parede26" type="StaticBody2D" parent="paredes"]
position = Vector2( -160, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede26"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede26"]
shape = SubResource( 2 )

[node name="parede27" type="StaticBody2D" parent="paredes"]
position = Vector2( -224, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede27"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede27"]
shape = SubResource( 2 )

[node name="parede28" type="StaticBody2D" parent="paredes"]
position = Vector2( -288, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede28"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede28"]
shape = SubResource( 2 )

[node name="parede29" type="StaticBody2D" parent="paredes"]
position = Vector2( -480, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede29"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede29"]
shape = SubResource( 2 )

[node name="parede30" type="StaticBody2D" parent="paredes"]
position = Vector2( -544, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede30"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede30"]
shape = SubResource( 2 )

[node name="parede31" type="StaticBody2D" parent="paredes"]
position = Vector2( -544, 576 )

[node name="Sprite" type="Sprite" parent="paredes/parede31"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede31"]
shape = SubResource( 2 )

[node name="parede32" type="StaticBody2D" parent="paredes"]
position = Vector2( -608, 576 )

[node name="Sprite" type="Sprite" parent="paredes/parede32"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede32"]
shape = SubResource( 2 )

[node name="parede33" type="StaticBody2D" parent="paredes"]
position = Vector2( -736, 512 )

[node name="Sprite" type="Sprite" parent="paredes/parede33"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede33"]
shape = SubResource( 2 )

[node name="parede34" type="StaticBody2D" parent="paredes"]
position = Vector2( -800, 448 )

[node name="Sprite" type="Sprite" parent="paredes/parede34"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede34"]
shape = SubResource( 2 )

[node name="parede35" type="StaticBody2D" parent="paredes"]
position = Vector2( -864, 384 )

[node name="Sprite" type="Sprite" parent="paredes/parede35"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede35"]
shape = SubResource( 2 )

[node name="parede36" type="StaticBody2D" parent="paredes"]
position = Vector2( -928, 320 )

[node name="Sprite" type="Sprite" parent="paredes/parede36"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede36"]
shape = SubResource( 2 )

[node name="parede37" type="StaticBody2D" parent="paredes"]
position = Vector2( -992, 320 )

[node name="Sprite" type="Sprite" parent="paredes/parede37"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede37"]
shape = SubResource( 2 )

[node name="parede38" type="StaticBody2D" parent="paredes"]
position = Vector2( -1056, 320 )

[node name="Sprite" type="Sprite" parent="paredes/parede38"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede38"]
shape = SubResource( 2 )

[node name="parede39" type="StaticBody2D" parent="paredes"]
position = Vector2( -1024, 320 )

[node name="Sprite" type="Sprite" parent="paredes/parede39"]
modulate = Color( 0.0862745, 0.00392157, 0.0196078, 1 )
self_modulate = Color( 0.0470588, 0, 0, 1 )
show_behind_parent = true
texture = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="paredes/parede39"]
shape = SubResource( 2 )
       GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
GDSC   N   	   �   t     ������ڶ   �������ݶ���   ���������Ѷ�   �����¶�   ��������   �����������Ӷ���   ����򶶶   ��������   ��������񶶶   ������������Ӷ��   ���������Ӷ�   ��������   ����������   ����������Ӷ   �������������Ķ�   ���϶���   ���������Ŷ�   �������������Ӷ�   ��������Ӷ��   ���������Ӷ�   �������������Ӷ�   �����嶶   ���������������ﶶ��   ��������������Ӷ   ����������Ҷ   ���������Ҷ�   ������Ӷ   �����Ӷ�   ��������������Ķ   ������������Ӷ��   �����������������ض�   ������������ض��   �����������ζ���   �����϶�   �嶶   ����������������������¶   ���Ӷ���   �������������Ҷ�   ����¶��   ��������������������޶��   ������Ҷ   �����������Ҷ���   ����ζ��   �����¶�   ���������¶�   �������������������Ѷ���   ����������������������¶   �������ض���   ��������������ڶ   ������������������������Ӷ��   �����¶�   ��϶   ��������Ӷ��   ζ��   ��������Ӷ��   ���������Ӷ�   �����Ķ�   �������������������ض���   �����Ķ�   �����޶�   ������������������Ķ   ���������Ҷ�   �������������Ķ�   ������Ҷ   ���������Ѷ�   ������������Ӷ��   ������ڶ   ������������������ض   ��������������ض   ���������Ӷ�   ϶��   �����������ض���   �������������Ҷ�   �����Ŷ�   ����׶��   ������Ŷ   �����������Ŷ���   ����Ӷ��                       Z         ?  �������?                                                                      	      
                           &      '      3      4      5      6      >      ?      K      L      M      Y      Z      [      i      j      k      l       s   !   t   "   u   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2   �   3   �   4   �   5   �   6   �   7   �   8   �   9     :     ;     <     =   '  >   (  ?   3  @   @  A   B  B   C  C   I  D   Y  E   i  F   r  G   }  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y     Z     [     \     ]   )  ^   A  _   J  `   K  a   O  b   W  c   \  d   _  e   c  f   i  g   m  h   o  i   p  j     k   �  l   �  m   �  n   �  o   �  p   �  q   �  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z     {   *  |   /  }   0  ~   ?     Q  �   `  �   h  �   s  �   t  �     �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �     �   )  �   9  �   F  �   T  �   Z  �   ^  �   r  �   3YY2�  YYY;�  VYYY;�  V�  T�  YYYYY>�  N�  R�  R�  OYY8P�  Q;�	  V�  T�  YYYY>�
  N�  R�  OYY8P�
  Q;�  V�
  T�  YYY8P�  Q;�  V�  T�  YYY8P�  R�  R�  Q;�  V�  YYYY8;�  V�  YYY8P�  R�  R�  Q;�  V�  SYYY8P�  R�  R�  Q;�  V�  SYYYY>�  N�  R�  OYY8P�  Q;�  V�  T�  YY5;�  VW�  Y5;�  VW�  �  Y5;�  V�  �  T�  Y5;�  V�  �  T�  YY;�   V�  �  YY0�!  PQX=V�  &�"  T�#  PQ�  �  T�  V�  �$  PQYY0�%  P�&  V�'  QX�  V�  .�&  T�(  �   �  YY0�)  P�&  V�'  QX�  V�  .�&  T�(  �   �&  T�*  YY0�+  P�&  V�,  QX=V�  &P�&  4�'  �&  4�-  QV�  .�  �  &�&  4�'  V�  &�%  P�&  Q�.  P�&  T�/  RQV�  &P�	  �  T�  �	  �  T�  QV�  �0  P�  R�&  T�/  Q�  &�1  P�&  T�/  R�  QV�  �   �&  T�*  �  �  T�  �  �  '�)  P�&  QV�  �2  PQ�  �  '�&  4�-  �   �&  T�*  V�  ;�3  V�  �  T�4  T�5  �  �  ;�6  V�  �3  �  ;�7  V�  �3  �  �  ;�8  V�  �  T�9  P�  T�4  �  Q�  ;�:  V�  �&  T�/  �8  �  �  &�:  T�;  PQ�6  V�  &�  �  V�  �:  �<  P�:  R�  R�+  P�  QQ�  �  &�  �
  T�  V�  �  �:  T�=  PQ�  �0  P�  R�  �7  �8  Q�  '�  �
  T�  V�  ;�>  V�:  T�?  P�7  Q�  �  �:  T�=  PQP�>  T�;  PQ�6  QP�7  �6  Q�  �0  P�  R�>  �8  Q�  �  �  �  �  &�	  �  T�  V�  �@  P�:  Q�  (V�  �  �  �  �  T�  �  �A  PQ�  .YY0�0  P�B  VR�C  V�  QX=V�  �B  T�9  �C  P�B  T�4  �  Q�  YY0�A  PQV�  �0  P�  R�  T�9  P�  T�4  �  QQYY0�2  PQV�  �   �  �  �  �  �  �  T�  �  �  T�  �  �  �  T�  �  �  �A  PQYY0�.  P�D  V�  R�B  VQX�  V�  ;�5  V�  �D  T�5  �B  T�9  T�5  �D  T�5  	�B  T�9  T�5  P�B  T�4  T�5  �B  T�E  T�5  Q�  ;�F  V�  �D  T�F  �B  T�9  T�F  �D  T�F  	�B  T�9  T�F  P�B  T�4  T�F  �B  T�E  T�F  Q�  .�5  �F  YY0�1  P�D  V�  R�B  VQX�  V�  ;�3  V�B  T�4  T�5  �B  T�E  T�5  �  �  ;�8  V�B  T�9  �  P�3  R�3  Q�  ;�G  V�D  �8  �  .�G  T�H  PQ	�3  �3  YY0�@  P�:  V�  QX=V�  ;�7  V�  �  �  T�4  T�5  �  �  &�:  T�;  PQ�7  V�  ;�I  V�:  T�=  PQ�7  �  ;�J  V�:  �I  �  ;�K  V�  �  T�  �J  �  �K  T�5  �5  P�K  T�5  R�  T�4  T�5  �  R�4  T�5  �  T�4  T�5  �  Q�  �K  T�F  �5  P�K  T�F  R�  T�4  T�F  �  R�4  T�F  �  T�4  T�F  �  Q�  �  T�  �K  YYY0�<  P�:  V�  R�L  V�  R�  VZ�  QX�  V�  ;�M  VP�:  T�M  PQ�  QPZ�L  Q�  �M  �  P�M  Q&�M  �  (�  P�M  Q�  &�  P�M  Q<�  �  �  V�  �M  �M  �  &�M  �  (�M  �  �  �M  Z�L  �  �M  �  �  .�  P�  P�M  QRP�M  QQ�:  T�;  PQY`    [gd_scene load_steps=3 format=2]

[ext_resource path="res://Joystick/Joystick.gd" type="Script" id=1]
[ext_resource path="res://Joystick/joystick_background_cross.png" type="Texture" id=2]

[node name="Joystick" type="Control"]
anchor_top = 1.0
anchor_bottom = 1.0
margin_top = -300.0
margin_right = 300.0
rect_pivot_offset = Vector2( 150, 150 )
mouse_filter = 1
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Background" type="TextureRect" parent="."]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -128.0
margin_top = -128.0
margin_right = 128.0
margin_bottom = 128.0
grow_horizontal = 2
grow_vertical = 2
rect_pivot_offset = Vector2( 128, 128 )
texture = ExtResource( 2 )
stretch_mode = 6
__meta__ = {
"_edit_use_anchors_": false
}

[node name="Handle" type="TextureRect" parent="Background"]
anchor_left = 0.5
anchor_top = 0.5
anchor_right = 0.5
anchor_bottom = 0.5
margin_left = -64.0
margin_top = -64.0
margin_right = 64.0
margin_bottom = 64.0
grow_horizontal = 2
grow_vertical = 2
rect_scale = Vector2( 0.5, 0.5 )
rect_pivot_offset = Vector2( 128, 128 )
texture = ExtResource( 2 )
stretch_mode = 6
__meta__ = {
"_edit_use_anchors_": false
}
        GDST              �  PNG �PNG

   IHDR         \r�f   sRGB ���  aIDATx���y�^U}���LBIp�%AQd��b ABT�
���Z�U�K�jk�����VK�j�EQAEC@�ª)"K0�B����3��0�����{���~��W���{����s�=KW__���{/ � vv�������[��Cγx�<]���>+�嵿/�X_��U��	�%��}a ���]�W�J���X
܃�C�sh>; G 3k�l#+U�&�� nnn64�R�5'����� ��v�Qy֡$�X�<��u8'�����>�Ӹ&|������gj9XE� ���J� ;7�:M�)`J?~���?'��L^����c[���\\|=l�̜ ��� �^��>�^�:�R�V5�6m�	�~]�!ޟ�o����-�u��%���s+�	�������olU:֯����&��� ����|������A���|��C6л�5C�����}'4���A��ш�fzs��&ppo���R� �f�����f4��nt�?X�<�F᭫���ш��>�~���~\���(� ��x-�!ਊ��z��;�%�ڊ�jp(��b���N
� ������	`d�>̨�zk�M{s��~:���Q(QT���*�^Kqx�S����o����E�;e��846��T7�V�o��K�NKqp4�tc�e#�S��G��%^��<��<8����e�� �Zu<' =��p�|�b��%\��LFݯ7�a�eL��C�?�_��[F''�	�8���m1��]�z���
��YV��ף7�ĳ_�v�NM g ���|�������>��s$J� �2��!�}���Q:-L��^���
�ՙ�m[��x���x7�h��6�NI ]���{���{-jB.���$�hpV��7���V\��N;!�~�'d:�&���g�k<k��QОC���~���e:_Sj��N4><Ǡ��h��'а[k>{�L��kѼ��3��)�k��07ù6�|����7��&�A��Z�3����c�|��S��h�ȝ�e�;�\ˀ���=m�Q���0���S�����q�;�=�]��@��gi�U�ۥ�iw|��Y���_�s��w�q���_S����h��z+�h� �A�����}�7Ш�9*eMk
zu�f�{u�J�rT�QZ��.4ξ�� � |+�N���O����{�{�]�W�qZ5��
�+�g�mB���T/kנ��Eߌd;t~�rg0��� ;�1���������g���YQ?C{@��l�Vk��L}�1�t��o�nE˗�3������YjT�Vj�|ܭ��+�`���V#kGs� �)��=Z���l5*Q�� N�����9����C�ʵ�����c�Q�Z!��~)���7�-gq��{�)6#p"��9+g����]�?E;��c�I4|~�Y�yz@�����	i���F5s���`�%hя�d��u����8�-2��5ʤY� I��
�?��\~�D�V�.t/�e�eҌ	�=��)�_BM6/�e��F�֗
ۅ��s��(�f���ޓ��Ѵ݋������>M�h��ZtSh�pp)���D��ju&Z!*u��^�p���5*�Y���$u<�*4p���kd6��ў��o6�]�~��F��!�D'R��[��/���,���y���֢U�o�^��N �E�LK<n�C��U^�r8�	Z�&�chچ��ȷ =h����8�5���=����T=�+ը0=�;4��h��{��Ȭ>����SW>�BC�hT��R�B��4u̲X�V�^�x�Ih�{�� ލ�dJ�4��8{m��ݫO'����!�hZoJsg-�*���Y�8Ny��x.4Ze��ix�����J��Y��ID)-�G��Pђ�Uu�������o�kګ0Ş�w�h��?���2���bV�O�>x��Ut^��K�L����M���1�U_�f�}hm�"S���N S�_�����hx���Z;��F��,*�8��Faev��.�)��
����v��jS�L�F}[�mS�	�\4("���u)�1k�{�=��잍�)EY]��Р�����H�S�V��W�:4���)#t�m�^�p̵hj��Y'��8%����C�sV��.����
�U���:E/��2q襔��`���;�Ϩ���>֙撶[�j�෹*���E҂��p�[�G� �Ih��lr� ���P��#��\0kA�����_\����4z�`�^��E�h������0�_��� !��M�fr+����H{�8�-�����@�/����fmd6�O��z4���z.���)����9~��֢؈~#�G�l�Ro8=���pM��4kWע�3Q�G1XX�]����m���j�Y'�͇�,��PTH=-�SI[���p�f9���P,R��܄v5��=��X�bff;�@0:6�f��"*�8�x���Sv��lޟP~&Z=(Y�@ڐ��`��L���q�عMN
�"-�3�pA�k���鿇�մ�I �'��.�˘Y�_���@�R� �Ы��^����3+n:���<�Yh���y	e���߬^K�Kʧ�ГZ ���y���	e��S*cf��%�������^J�	������~Ԣ��>=q��ڴ0������J�٨f������O�V0���Gă�'8��r��V���"�	���r �I(kfq)���H�H�h�\Q�]��_�;��u�.��vt�cМ�EZ )�����oV�>ࢄ���h-��Τ���W�݀���Yy&[/`5z���
��8��:����7+������eŮ��9�\�P�̊�JBٳ�����L~G�9�b�3ͬ~���uF�u͟���g�����߬Z_�ێmL-D��6e�����l��)�N|���ǃe�,���`ٗ��#%�W�|Y������1h�g)�"x����e�,�y��`�9��p�08%xҟ����Uo�	B��U?\8���$W˙Y9�1؃b{+�%��2�}�	bf��C��o^5��%��6C��yf�8�_c��M ;��G"�� ̬\�X��b|��	�X4�8��|�5��������p\�Dk��eͬ\7����*Ƌ&�[����fV���W�1������f��`�#Q�['�� �O�`�\�mϠiă���	6��eͬ����G��ep����A4���fĖX� �|s�FfV�[���z�6��UJ�̬2��<���p ��GA{��Y�����$�C.�8�FfV���<���A+Sjdf�Y�b4b:$�}���o�ܢ1�$���ݝ\3�R4F����O��$W�̪t�ܖ�C|	������*M =@O7𼄓�6�>fV��>��+X��hf��a�k���,�8�5�ͬ16 ˂e�v��C#+V3�Xt��=��]����^�̚��`�]S��+cfՊ�֧t;��`e̬Z�/띻��p��5D��L�vv��5D��n�9�Ojf���`��n�+{ ������Ԗ
X]�2fV�h�n�M|)03k/c�����O�Y3�&����-�����*�Ք`fm&%8Y���p�v�-�"��̬������TfM̬im�&>h`R�51�l���L7�L�pt���5V4V�w7�5hf��߳���$��V�̪��^��ޥ`e̬Z�����B����U+�Z2%�`��+}?�M|Qw�ZCt���)-�hV1�ƚ,�D7��'bw`\���YEƑ��W7�P�pi��Y���b5�wݤm������Y�^�P�w��*⃁�K���Ui�`�U��&x�>��1�
E��0�p�}��J���U)�[%����\3�R4F�4x�^@Oj�̬=(F#��@�3�"�����*��w�@����`��5�hl���@X��@ċ+efՈ��=Ԗ�|�/��L���U�`�-�>8�<�� Ь�L@��%�'���w�˚Y5���n���	�6�+,gf՘,��u`���5x' ��rB�ܭ(ցg�!vC�$G�}̚�x���b�h� ,kf�:�dĢ��chX�O4;X�����>Fi<I�u��rfV�h,ގb|����:x��4�rLC��`��K ?
��8-X����J�k ^5��%��rAg˙Y9�1�
�i��K ��T�I��`Y3˫89Xv���. ��t;���f��\�{u�lo�p�9xⳃ��,�h��?�FJ ��'?�dfՙB���u���H	 ����� ��5�<�B]���F������MC�m+I�[��
4��m���6�X^1�?n+�EM����|d3+ߡĂৌ�0������P�̊K������. ���%0)p����ڟfV������@�����F*0Z�i�;��M�,kfż�X��bw����[  G���w��ItJ���u�M|����0��<�	X���x� ���&�K%�!�  .	�8?���ť��W"�"] ���G��?���"f6��7�Y��=5Z�h�)࿂eޗP��F�ބ��E �!� 8 ��X��L��F���ol��f�@�ȉ�- ��?�|4��f6��%��?�� @�\,ۋ^	.M���me:z����x�3y�Z  ?#�j�f�������x��DB�Cz �0����Ynf[{iS�SbH��F#�������K�,�U�c���=)��� �P�$�8��J���R`~� �p�$4�Ԝ�X�bff;�W�u^�-h�Nr0iP�P�k��w��Y�y������P���z�`ٕ����z.h�榠���)����^�h�߇�g����꼞Y��4���.��b�&���ʿxy��4kW/G1u9C��NUo ��h���`�ߠ�k뽰Y����,���@=��@��K(����5k''����+�!O ���{��3�_丸Y�{1p3�!��9u��s� @yB�1h��L�7kU�o~���ԅΕ @$�J( �.���ѷy�U��r]<W�������y0/g%�Z�\�J4�6bp�`�
�l ��H�1� {d��Y�������k2?�o���B�؄c�A�zsWƬ	�A�dOI8�F4�/k��n��${Z�4��x�u�����?��/�2 h�߇��pz	u1k&���M� �Tvet��5�ON8f�b��Rjd�X����=	�\�v*%P�L  Ӏ�h�S�]h�КRjd���'�8��]��� �E�R�������0kfc��&-��P������ h�����|����5��=������(��.@�퀟��p�xkm$�^��o�_��U� @~��D�g���֚�W�֝}MZVJ�����opiYm�-��2*dV�н��P�T�Pm �^�2k4[�Л�V0�ZSg��G�+����0�ׁ�$��箌YF���3�����OҖˢQ	`}R�q��懥��2��t�殉��ͅ)���P�J ��P��)A���^#��@o��L<n	z;�*{��  ���x�c(	x�qk�ѷx���h?����(�ꇀC=�I]�h*�g��]!�D3н��k�W�����' �b�g����e�»����x�ѽ�bp&��� ���٤�w�\;���kd�mg �I�����P;��%��F{3�I`�H�����lx�������~��L	 4��I���\|�"��A��gI��>to_��R�h�[����3i&��!�F`u�Y������V��>���d�Q͚  �|�b��w���e��u��Ѥ�����z�w���F�4[`����Ҧ��J�l���e���&t7e�Cs' P�u"ك,~?�t��޹��'��{��4Y��f�65�Rvl�|T�4Kki{��9���&\��F%i�@�h~u� ���^w��F3�+E�������� @�	�D����+�%�+�=�to\I�l�~wG��--�U� �����S�j)�ܚ�F��DM��]z��	�ېY}E�R��*4w�ku�c:��nt�	�XD}��5tO�T�Ck� {7�9��pQ �D;�X�x9p1��:αA��,5j�VO �]��C�B���e�>�vc��5�4Z~��H�~��<+]�/�V��x	Z]��.�O�����e�e,��އ~����h��~h� z�r2�TO�f2p!ZxtN�zYs��~���X�`}hǞ�h�1%���TԜO]�e8� wf8�U���/G2_�ZM1�?�viv5�"��&����`��j�~g�Zr��=�V�� @�-������c�
�%84�����^�;���^�f�ӎ]���G3��t�M��Ѣwd:��� �C�9�{��s����� @O|߁vi-2�k$עK���s"z�j�{�?�*�+��t��S@�ih���ϻ���m�Q�&�d�E�p�t%���LG���L��p���]��_�����J��3��!4F�{����:5��I.@��ƕp��(|x���w�)h	����p��5�'�Ж[''�~�������9X/�9�2���%\��LF}��ќ�z�yl������K:Kpp4z�w\��؈v3����k�bO�U(	�L9-�~7 �7�x����l��戗��\�ݘ�o� �P�=��=�rZ_��
|�6�S'��u������O�G�MlZ������LD�����r<���;�Z��t�k�TN �օ��pT��ބ� ܂֨[R�se��H5�=���QhL~�3,oA�v���?"'��Y��x�B�J� �W�<X�s]Eu��}A��B�@��_��،v������w'�t��!�l���8�ZԤ��D��x�Vn��^Ld���N�x`��gʠ�T`����yM���6���@q;����kp]:�}h������B� �ׅ���D�іf������N y��a�oB�xK�<6�7#���-��n�r(�4��^��A�^����ϣ��N{r��nh˩9h9�S���*4�z>Z�����N�s��X4fN�s8参kV}hQ����"�mo94��Z��p��,�z4@g�|�dCk�� ��h���h��hY�V{��	V��y�	m𺾑���9���hݻѰ����6�V��� �x'
��q�7='�ַ=['�]���SɷJ"=h�sغE���`]����E�U�����A�L)�UV��'�'��v    IEND�B`�         [remap]

importer="texture"
type="StreamTexture"
path="res://.import/joystick_background.png-a704d9dd1a3f2b398b0519aa8633d55a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://joystick/Joystick/joystick_background.png"
dest_files=[ "res://.import/joystick_background.png-a704d9dd1a3f2b398b0519aa8633d55a.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
 GDST              �  PNG �PNG

   IHDR         \r�f   sRGB ���  ^IDATx��y��U�ǿg���TPA���qB�IM��f-�>�|�[Y�F3�ᚖ�s�H
q�DqLE�)3TH��������<�����}?��a��}��o���ghiooG�����{�M��!����;>k�}��_��<K����[�߿^�̭�~�<�`iJ�.�-�R�^��H��oZr��x�竿>��D�Px$ �c`7`t��]0�Q	X�����#�}�C��<��#ȟ�1�����ï��E��i�T�^��\-jr$ ���W��J~K��i�V���i��Ad� 6��`�|�),oS01�3�Z��4>��
�-���kN�h����^6��H ��
L N ޏ�>m����� ,�՚BP?-�K��b��]��E\� 7 ���#��H ���I�d`�|MiZ�~	\�N!g;�t�����Ul�<���ɷ{�v����ڣ�~�߯�uD��l�E��b	�[�B`vζ�
	��1���@%'Vbw3�����9,
oI�|�?�����Fܺ�l_��<���\���^� ���C�9��{%��t�3���T �� `',��}�^�0d-
 ? nD�	zD�3�Fft���C{s��NC ��~ڻ���Pd���ׁ?et�R!x'��"�o��(�۰3�������b#&�h���nI�>�B�ɞ���3-�w`�X^L�^���l�EJD���4�8�Z5= {���X�q�� ��1�=�{$�(P� l�u<6�FbT;]�U���/�, ��L��+6ӱ`�k��"RD�epd�K
�/�N���6�* �� �G�w!��Rl�Yt�. ���``�_ ���К�f�a�O����� .Ɯa�ӤL��@�#���#�}p*�r�yK�@�9�\xP�yoÖ�S(�Ys���/c�Y��_ ������3�`쇹��V W?Ǝ��L���0�=�x���¶OG���4� ��Ň�:Y�ś�mE :�88�8�����K"�UHU ��G�k%�{��X�}#�h��X�G��<[̍0W�hD\�U䩗�X����*"�* �w��0������!���4���'S���>P�4��7���s�Y�\�`�֏i��͍����ۯ�y�c{��i�������p�5�?	��E�Ωר�i���۴�9ځ�`Q��bU�I :�ݞH}��0�è�(��,ξ�� �$�����<�g}(����{�N�ߤ�(� �~���c+�#X�4�hn�~����Z�3�k��`L�2n6�b��	왍��+C�~�4��;Fa[��u��7�D��={�l+�������/��n6��N�ʗ��?Vc`�(eD�V ����%�~���h�� ��x,�lp��_��<͢)�
�P�$w�[��19�草سr[��7ª>�>J�2���e�׮����C�償W�g�$�\��96�QiP�-����/Iz콁łO�jQc�-@��� |W�k۰��_E�("E�/`G,I�Xяg�Z�xH |l���>���X��_D�(E�|���?	�?/��x
�=[��`��Z�"
���H��?ǖle*�%��B���y�k[�g���E�h[��`�{B�%��{at�m�q�C¿@ہ��jх�Hp,p%�/�� �	+�F@����
Q��۰��WG�(E�qرIh<�,p��5����9zB�����R�N��훋	���-j$ ��v�<$��XU���[@���?`X�us�r�Vyiv$ q��+L�+X��zD�y
Њ5�u������0{&C��|�5�A^��~�K�����5���"!�c6��<�r�N�/�RO /����� s�Y��"
�����;yϜ<�T�$Soa�ӣ[#D\Şշ������K����ސ��b�p�����^��X�p���2��dXh4K��;a<۱�҉�X$$ �2K"
Yi��NF%ǳ��E���_E�/��D�Wa�אQ��{���k~|?[�Ȓ��
<����,� �c�!K̉�,nZ��� ��;�iVێ�L���&m
<FX�řXx�Rz�G���א�"�]0r��������J>r~�h,�V�!1���IQ���Ӱ�/�X|�S�X#D��ƞ�e�X�HN*����	ɕ�.�oLE}h����pyY�e>ې4���I�7��۰�^���	@>��jp��X���1Icpa�?k�,��B��8�/)���x�8���ˑ(�'/�ȗ�u�Z��3��W ?%���9�h^&$4+1��+�����?�ud]� �V �3 ˑ	iM~p}����X.����m�^�Ew�H ��(�^��_ F��3��<���$A�/�� �^6'��Gb� ���w�;�?��_^T�E�hP`a�[9�/����1V ?�������ѕŘox���cY�uQ� 썽�����:�)D�r�?��Ø&��-�]����cm�C������x��a9�O�:%�������r~!zc.p~��1�/&"�
���j��I����$7��@1Y{!���3ɍ�� ����`���B�X�0~4V=(�$+��!������� ��$���(�2��IV �;;pn�{!�?���U�
"� �0�Zl/#��1̇��z��-����C��P����� �g0���x����c���_�z�\0>d���;���
L��	1Fd�V �`kL�:Ʈ���{!+���_�5@�+�`+j�l�����X�Bo��݀G�F���
�<�Ď�=,�z���@�7���;�������#�oyX��g�W >�𣀱B?!�u�g�g�'V�����_�GE�(-X�mo������ B��/B�/DZ����w{[��u&���^�uVc��@�Xx_�������4�������_��_��Y��9v �T��M Np�ಀ�B��\0��5�嚶 À�{O0��(������:��ۚ���_�ɹ����kѷ���k縵XC�poࡍ��E!D�\���V�ۀ�`c�-��^u�B�a0�9���F��EOp��㫝�q��^���;�I >��x9p�s�".�eα�����p�s�;���"{�OK7���`/�]Inr�B���[1�^���[��[�!��f��7�w�����f�,O@�/㯿1��t���#�GB�t���H��W�U ���6�B�[��Z��N�� ��h1p�s�"]��|��j>�T  �:�
!�e)��]=
@?`�s}�Q,�t���:�� ���D D����65iĵ0�9�J`�s�"�2s=���Z��=�� 
!��"�7=���Z��y��^����s�*_���XCA��X$���o�|~� l���(X�r!D���fLV	��7�b�"3B|s��΋^ �X$�Ȍ���z����"-��(6^�:`�E3��Bd��G��N��yѳ��!���UЊ���I,Bd�W Z��
����n�"C���
��sp;�+PQ\^�_#p�
��s��k�!�a0�9vh���d�!2�[�w�
0�9����B��1�9nH� ���!D�xW�+�����%4F�-�/�*�c ��x�uU������x``xW�I���o��
�J�� D9��j�
��@&4F�-^_]�������[�u~+MK�����-�����!D�ѵ9���� ����Z
y�LJ��1�ۿ�ܬ�9��1nQX��1B�b���?h``��!���շ+����ހ!!D�x}uiܰ7kP�/����I>$4F�-�/��`�s��	�Bd�W �U���(�1B�l��� m�(�J߯W�W�@�r�-�;7d�U!D�s�{��u��1�/�=B���G@��
��spa�D�ٳ���Uk���p{��ހ��� �ml�"K�v�[@5�Y�E[��#��� <�A�v^�}�9B�,���j��󢝂�Bd��G��N��hs�5�"!D&�b>�at
��7�5�"!Df����) ���6@�b���6�I����x�9�(!D6x}�I�� k˂?�xt�EB����9n���
�#΋wD/�(0�����k�~��`o�X!D6��8Ǯ��Zx��}���0�9�m�ׁ�`�s	��b�1_����${�>B������xR ��+�H��0��0��?�
�4Vo�&�:�	!������x�q��qB�t���#�����  ��l$��B�t����)]��;��s���X!D:��मН ܋��0�9N�^\ �����6�Y*����`�X!D\Z���c��M�ow 0�9�Z���c�q��WG���z�I�J���9�	!����6�����'x��� �k�";�?���:��$  78'�|�9V�c�-���{�������a]��$LG��H��{�$��C���c�<���\�s��-<��#!�g'|�p=8?���~��"�c��	�����- �z�J`��F���_E9��|��r�]l
����� ��q68�9V����9?�������
 `O,<����ěR,�E+�rт5����ۋn�k������N�i1��Ϡ��  \�pf�X!��ߺ�3ȳ Xx	X�y�����-@y��y���ߛ��� �~�𕀱B���r����p~�  �f������"�([a���:Ʈ�O{&�� �����9�/�����=�|��.燰 X�;�c۰#�Y!7��@��������&o�
 �o8����8�bu�����#��!\  .{���B��ٙ�T��· `KŇ����\*��� �f~�y;~r�$+�vlY��H �%�o�N��$+ �o���&��Ė3˓�L��V �d-�1�8��X�N�3'YP�Q�1�p�Ԅ���8��C�oH���n`�������zn(��@����{S~��$�Y�@��W�A�꼟���;;pn=7�W ���I��:�)D�r0�#^��K��P�� l���w�{!�������8�^�m����\=7�w@Հ���
8?�}�h$����`>W��C� �z�6w�oF�qs�� ����������Խ��� 3���}�����/DY ����A�-t, {!1)`�p�.�`\�}�{�\�汶 ���n�5Gc!�h�/せ���_�<ˀ�+ ��^s�Id;�(:�`�~��~����W `�2�;��[�䇶�ƈ5�@>���d	��^,�/���^��$�V���!�x�h�I��/>M
_�i X��W�98*[�(G�M>�褱X57��?(��X��S�X$��-@�l���\s�(GMS  �ӱ'/O`AB�R�H�"Ȏ�X����u�N��� ��%7������FQd� �'��۱}j�� X��E�׌.N�!��b��"�}8�������	/\p.�!�&���ل?�S���e��Y�� ,����{/m�)��t�@�v�e,9hN*u!�-@s�c	S�>���0H��{vC��#�8?d+ `�KB�������QFc���l�3���O(Ynj��D�5�����41��g����_�GX9�(�% ��X����5?L%*�	� �e�?sH�uw`�0����J^ 5� �KXt���5�xl��tmx��tlAt��)  �^�
&j=^�8����C���b��^�n���_v�E� Hhy���>kdl��d$�,�:�b������� �C�@��g#LuwE�N���=�!,�ƞ�\)�  �Gx����n�kf0���>�g��굹S ��v"�"�V$�+�-�{N�Ş�ڰg���%�H ��y�s�+���OQ�H�>�3�c�}�{���mT=�}
���M�7�7F��1�)���Xh�	�m��OT�"PT ���}�?��x:�E���ǶXROH>m�)�/�Z��mj��/�Hp�����`ѕ�X�$ο{���Pl �/C��V���w�{N{vn"�M?�3�a
���J�� ��Ŗ`!�j��%e�fY��M�䜱	�_�N�fQJ}��,�:���z�kK zc<��$u�9X�j��# `ՄFc/��0�+�sԕX��سq��|<�巔��lji�:����,lK�`�ʋ� �(l�ҥ�+�cόd�%�L+�`�ӗ�1�`�#�hf`��4�s�˱g�T��\�r*���pR�N�:�4ͼ8�ز�9�c!�?�bQ�] ��_Cx!�Zڱ2egc�X��f�����[���_�
xfZ�/6e�te�;V]()-�����3���Ţ/��}�Y���wc��K��� v�r�TϒfpVxt\�D1��L/ �Xg-�XǞi���F�t�Pl9Z��;&g�G���4�`G�%_1���
���FY�r�3q�	u|s��"�|"��~f�Vr�g���S ��-	|��z�]� Ǫ_����l���fc?�z���X&�Q�3�p4��+�b���E�opV��Hs�E�l��N �ܻ��h����  `�IX��$�]=q�bi
��|̋���9��g��+�%��gD�@ð���"�;��r�DTF��=k����/b�g��f��Ǝ7�<�B,��2ʑgP&���`��s���\y��Ӭ �Mr.v��/���cBp-�j
�Ǡ�0+��`��_�~�r�ܢ�����Xh�Q��mX瘫��&��p��Q a{�㰜�z�<�čX��3)�_
$ �쉽��'�{,Ǻ� L"��fQ`S�pL�"�Y� g��x�� x'���r�Ӥx\�{0�n�� �Ä������� �u0��$ �ӂ��6��4��",�i*�ex��gi�� ��u�= ��7��;�2s�?��z�H �L�_�`����Ax �Q7������HC aa�;U����:�������{D�g�w<�|C�_���I�����_�ΕT ���n�[�l	ǜ>��j+��PP_zx� g;�9���9�ҕW�W��&�׫�����q˰�ŭ5�E�˷����������P`�4�	xK���ݍ� 9`�'��lK��4�{�:^-��i�
D|
k�2Z����_�U��\���ba����%YVb'#Wbấ��[T$ �1���}��҆�޻��y9_s	@6l����������H,�R�'cUx^�ל�G�=}�@�q�Ϯ'?kڱ�*���i$k/"ȟ�X������.4nY�X��4,����\-jr$ �c,�}V{~$V֬l�V`�J�b9�a^��i�X	@9�ս����F���*�,�y,�q��g"g/<��6����X{��tF�m��H+��.޹�����͗�E�:U8���Z�;�?Id�����Ӻ��    IEND�B`�            [remap]

importer="texture"
type="StreamTexture"
path="res://.import/joystick_background_cross.png-292ca8e23f373fbd69963f3bd38d1ef7.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://joystick/Joystick/joystick_background_cross.png"
dest_files=[ "res://.import/joystick_background_cross.png-292ca8e23f373fbd69963f3bd38d1ef7.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDST�   �           �  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  7IDATx���_�\U��ϝBjK��Z,�
��&i	A�"H[���M�^����	ȟ���/���@b�����`�B1)Z(-F�Jm�@��'�þ���ss��gf�79ws֚u���Z#�f� r<��,ĩ� f�3p�}�kxob�����6l�3x��OP#� '����%��PR_/K��_�����~t��X�X)<'۰�0����� G�Ӹ_�qy�˫X���g��W����N÷�-��YK���;�k<�Y˸����z��Hf-���:܆�2k9��9��p��-�$����Bƨ�|?���B*b��r�� ��v|6�����uؑK@#S�3p#�^��8[�k1#��`~��Uw\s�ŵ*(V�c6
�c�4w�F�V�PU8�Ţ*: ��x�쎪� WH��0~�,���ewT�L���7V��*��kw�t-K��[�1��XF�C�Z|��n�8A���I��؄ˤG҅Q���?I���x���҃�B(��I?�>ZT�A[v�"<_DcE9�)���E4L�s҄��6T�̑V�Dد�m�{zi�ן�3�_�zJ�~f/��� �p��" �%��<OЋ܌�=��j�Sb�c�˥����\kPhJf���ĩ8��ҤDL�֋}���Sݜ��-`��ۯ+�Hの%w� 7��zufn��nnˤ����כ������E�:�i�B���;�h��do��p�0~?q�d�I�$��H����|\��>.�D�ۄ������2Y��(��%���L� ����~g�	l8�-ಉN��Œ-�2Q�,�\	��'pN���	�gK6=����Ҥ�hk�v��S�����,������E�����\sċ�E���/̭HTP-��!))&�� ��2s�t<8�Jߍd���?ZoӥQ�$�A1�*E���
��I�ơpi�Z�L�u��� $��[��N��98/�E�s*	��)���($��yt�H�2|�K����	��������%�?|�y��[I����"@0��n�5��*�l�k��U٘ݐҼ�ɜ� ���L�j�Z0���\�A�6ҬI�� ���5���s���z��Vd㽆2I��7�� {z,8�5{"7{�gnA6�o(��TЗ�9�7tY` (��e��ˁe�M)t0\lAs�aЦ�J�,<�����f��Qn?Yuh�����/J�h��`��|�B���d���[`C!A�:��㦉ۏ�r(
*�>����E��T�%��!6�d���n|X*)�##����BAA�ܡ��D��a���x���vCvb]��JY�0�3�Π[��d��v/Fٸ��q�r�זE�)
|�EAe�]���5�D��(�����L�=��_���J��'z�d��a������;Xd�u�$�؎5E(
*�':X��I %��"�����?���NSļ��`0Ԇ�d���>t�#�!�t*��J��d����0�ti��.EհK�V�'t�%l?�&KՑ}�m:6>SK��ぺq�)l��j��{��A=Xc�����2���6���%SL�׋�Ll�A��፩6Ы���{m(��R�Ϟ���+x.�f�QP;q�R��,��	v�^0>�$�����l�p��e\&ۤ�_���t�/a)+�� ]ӥF�uE�^�r�-��a�>难\t�e�؇����Ep+�,]��)�g�d\�_aV���j�]f'U8 |w�Ut6 <��� }_U5��b1n�&�)]��*��XUh�"�\,/;��V�Z��U�6JJn����o���5���� �̗�0��)"#p��% w��g���ɣǤϼRF���x@����#*��ϸD����}��������p�6]�֭��:���|'f��-�q'~�Ə��� c-=n��W�d��J����A�%d�#�� �L�����Q�W"m���l��Z�0��� �s2�=ΑbNI}�����>���Ap�v�3$gX ����٣���H2s��oH�ܷ�w��--��.��R�'�����cj֓    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/joystick_circle.png-23157b8c71d52f98a75b48cace5a395f.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://joystick/Joystick/joystick_circle.png"
dest_files=[ "res://.import/joystick_circle.png-23157b8c71d52f98a75b48cace5a395f.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST�   �           �  PNG �PNG

   IHDR   �   �   �>a�   sRGB ���  7IDATx���_�\U��ϝBjK��Z,�
��&i	A�"H[���M�^����	ȟ���/���@b�����`�B1)Z(-F�Jm�@��'�þ���ss��gf�79ws֚u���Z#�f� r<��,ĩ� f�3p�}�kxob�����6l�3x��OP#� '����%��PR_/K��_�����~t��X�X)<'۰�0����� G�Ӹ_�qy�˫X���g��W����N÷�-��YK���;�k<�Y˸����z��Hf-���:܆�2k9��9��p��-�$����Bƨ�|?���B*b��r�� ��v|6�����uؑK@#S�3p#�^��8[�k1#��`~��Uw\s�ŵ*(V�c6
�c�4w�F�V�PU8�Ţ*: ��x�쎪� WH��0~�,���ewT�L���7V��*��kw�t-K��[�1��XF�C�Z|��n�8A���I��؄ˤG҅Q���?I���x���҃�B(��I?�>ZT�A[v�"<_DcE9�)���E4L�s҄��6T�̑V�Dد�m�{zi�ן�3�_�zJ�~f/��� �p��" �%��<OЋ܌�=��j�Sb�c�˥����\kPhJf���ĩ8��ҤDL�֋}���Sݜ��-`��ۯ+�Hの%w� 7��zufn��nnˤ����כ������E�:�i�B���;�h��do��p�0~?q�d�I�$��H����|\��>.�D�ۄ������2Y��(��%���L� ����~g�	l8�-ಉN��Œ-�2Q�,�\	��'pN���	�gK6=����Ҥ�hk�v��S�����,������E�����\sċ�E���/̭HTP-��!))&�� ��2s�t<8�Jߍd���?ZoӥQ�$�A1�*E���
��I�ơpi�Z�L�u��� $��[��N��98/�E�s*	��)���($��yt�H�2|�K����	��������%�?|�y��[I����"@0��n�5��*�l�k��U٘ݐҼ�ɜ� ���L�j�Z0���\�A�6ҬI�� ���5���s���z��Vd㽆2I��7�� {z,8�5{"7{�gnA6�o(��TЗ�9�7tY` (��e��ˁe�M)t0\lAs�aЦ�J�,<�����f��Qn?Yuh�����/J�h��`��|�B���d���[`C!A�:��㦉ۏ�r(
*�>����E��T�%��!6�d���n|X*)�##����BAA�ܡ��D��a���x���vCvb]��JY�0�3�Π[��d��v/Fٸ��q�r�זE�)
|�EAe�]���5�D��(�����L�=��_���J��'z�d��a������;Xd�u�$�؎5E(
*�':X��I %��"�����?���NSļ��`0Ԇ�d���>t�#�!�t*��J��d����0�ti��.EհK�V�'t�%l?�&KՑ}�m:6>SK��ぺq�)l��j��{��A=Xc�����2���6���%SL�׋�Ll�A��፩6Ы���{m(��R�Ϟ���+x.�f�QP;q�R��,��	v�^0>�$�����l�p��e\&ۤ�_���t�/a)+�� ]ӥF�uE�^�r�-��a�>难\t�e�؇����Ep+�,]��)�g�d\�_aV���j�]f'U8 |w�Ut6 <��� }_U5��b1n�&�)]��*��XUh�"�\,/;��V�Z��U�6JJn����o���5���� �̗�0��)"#p��% w��g���ɣǤϼRF���x@����#*��ϸD����}��������p�6]�֭��:���|'f��-�q'~�Ə��� c-=n��W�d��J����A�%d�#�� �L�����Q�W"m���l��Z�0��� �s2�=ΑbNI}�����>���Ap�v�3$gX ����٣���H2s��oH�ܷ�w��--��.��R�'�����cj֓    IEND�B`�   [remap]

importer="texture"
type="StreamTexture"
path="res://.import/joystick_handle.png-6f7aa9df5093e15feeed0334767c8683.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://joystick/Joystick/joystick_handle.png"
dest_files=[ "res://.import/joystick_handle.png-6f7aa9df5093e15feeed0334767c8683.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
             GDST@   @           �  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  }IDATx��[r�0E�;�f7W�~yZJ\�zs�'�����{��>����u �*�8i���?e� ��n�V���$� @B��E#4�h�'���*�`H�W ��3 P��w Cb�  !� ��%��!* �!2 �`���8Qg������t!3�Kd04!+ ��� L@� ^ԅ
 �N!T '��?��`�Cm  �:���*h`�v�Xw���2�afP	������N��g��1Yf S3¬ ���j��'Ù2`i,~�~p����X��-p��E���̍
`�m�Y`{���"�:
 �;�w�ߢ=g�J��Zs���]i�X�[����W<Hj}& ��!o5�NKS&5��BX@Ro �X�<�o�x5��D�     IEND�B`�             [remap]

importer="texture"
type="StreamTexture"
path="res://.import/Arrow.png-3338cb6e5df7a9c9fd3fc2709e2d951a.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://joystick/Test/Arrow.png"
dest_files=[ "res://.import/Arrow.png-3338cb6e5df7a9c9fd3fc2709e2d951a.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDSC            x      ������������τ�   �����Ķ�   ����Ҷ��   ���������������޶���   �����������¶���   �������ݶ���   �������Ӷ���   ����������������޶��   ������������¶��   ���������������Ŷ���   ����׶��   ����Ӷ��   ���������Ѷ�   �������������Ӷ�   �����¶�   �������ض���   ����Ӷ��   ,                                                   "   	   #   
   *      5      6      A      F      G      R      Z      c      d      l      v      3YY2�  YY8;�  V�  YY8P�  Q;�  Y5;�  V�  �  P�  QYY8P�  Q;�  Y5;�  V�  �  P�  QYY0�	  P�
  V�  QX=V�  �  P�
  QYY0�  P�
  V�  QX=V�  &�  �  T�  V�  �  P�  T�  �  Q�  �  &�  �  T�  V�  �  �  T�  T�  PQY`       [gd_scene load_steps=5 format=2]

[ext_resource path="res://Test/Player.gd" type="Script" id=1]
[ext_resource path="res://Test/Arrow.png" type="Texture" id=2]
[ext_resource path="res://Joystick/Joystick.tscn" type="PackedScene" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32.1814, 23.4241 )

[node name="Player" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="UI" type="CanvasLayer" parent="."]

[node name="JoystickMove" parent="UI" instance=ExtResource( 3 )]
editor/display_folded = true
margin_top = 90.0
margin_bottom = 2.0

[node name="Background" parent="UI/JoystickMove" index="0"]
margin_left = -196.0
margin_top = -56.0
margin_right = 60.0
margin_bottom = 200.0

[node name="JoystickLook" parent="UI" instance=ExtResource( 3 )]
editor/display_folded = true
margin_left = 512.0
margin_top = 90.0
margin_right = 0.0
margin_bottom = 2.0

[node name="Background" parent="UI/JoystickLook" index="0"]
margin_left = -56.0
margin_top = -56.0
margin_right = 200.0
margin_bottom = 200.0

[editable path="UI/JoystickMove"]

[editable path="UI/JoystickLook"]
 [gd_scene load_steps=2 format=2]

[ext_resource path="res://Test/Player.tscn" type="PackedScene" id=1]

[node name="Test" type="Node"]

[node name="Player" parent="." instance=ExtResource( 1 )]
position = Vector2( 512, 200 )
controls_Mode = 1

[editable path="Player"]
   [gd_scene load_steps=5 format=2]

[ext_resource path="res://Joystick/Joystick.tscn" type="PackedScene" id=1]
[ext_resource path="res://Test/Arrow.png" type="Texture" id=2]
[ext_resource path="res://Test/Player.gd" type="Script" id=3]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 33.5625, 23.1896 )

[node name="Node" type="Node"]

[node name="UI" type="Control" parent="."]
margin_right = 40.0
margin_bottom = 40.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="JoystickLeft" parent="UI" instance=ExtResource( 1 )]
anchor_top = 15.0
anchor_bottom = 15.0
margin_top = -500.0
margin_right = 500.0
margin_bottom = -6.10352e-05

[node name="JoystickRight" parent="UI" instance=ExtResource( 1 )]
anchor_left = 25.0
anchor_top = 15.0
anchor_right = 25.0
anchor_bottom = 15.0
margin_left = -500.0
margin_top = -500.0
margin_right = 6.10352e-05

[node name="Node2D" type="Node2D" parent="."]

[node name="KinematicBody2D" type="KinematicBody2D" parent="Node2D"]
position = Vector2( 500, 200 )
script = ExtResource( 3 )
joystickLeftPath = NodePath("../../UI/JoystickLeft")
joystickRightPath = NodePath("../../UI/JoystickRight")

[node name="Sprite" type="Sprite" parent="Node2D/KinematicBody2D"]
texture = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="Node2D/KinematicBody2D"]
shape = SubResource( 1 )
     [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST�  �          �  PNG �PNG

   IHDR  �  �   ��$   sRGB ���    IDATx���[sdYz�o���	�S�P������19�EK"MS)Ҷ�+d�/��oНo�G|o�JV�-Y)��DR�i3<<LO���� �yN_t�$�����@n ��ը�̅:w�w}k}�?��`    @nW=    �+V=     �	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �sB<    �9!    �    rN�    9'�   ���   @�	�     �x    �s�U   �j�|��,�H҈XD�XĴX�am#��^����Q�O���� ז ��#IbI$��[���1+֢0�Da6�H��'Ř�1�oE��Ga6�d1��B�b��0F�N���'1+�"�$��(��F������cZ�Ÿ܌t6����������d5_? pm	�  ȭER�d����g�I"b�B)"I"�Ϫ�
�ĴT�y��l�Y���""ƕvt�Dex��a,�bL�������߈t:���(��0�bf�h������������(f�J,�4ʣ�X�8��~��I����9�z�e�ʿ���2{��2 ��� �K���r;��~�X$�X$i��8��(�i5���(�{1��c�Vb�����Q뿊��B�ⴾ�w~!��Q��'I�����j'">�2��g��"��8fi9f�j|"&���g�Lb����������i� �9� ��B)�[1�oŴX�'��f�G'QG��ǬX���4�l~/&�V��a��1)5bQHcT�Ĥ܌t�;Q�O��J�$��J�+k1)ϗ�]v�ݼ��o���E,>�~�3��X|a/ �y� ��B1^�����/Ǡ���ߏ�l�� b��yZ�t6�au=f�j$�y$��gA�_j�h~�s,�B�����"������m���o |=B<  r �E��I�x}��E�����qZ�q�����-����O��gQ�����Ys ���w<  �Hg�����h�8�+v�\q:�F�y���(��t�� �!�x  ������,-ǼP�{�Ū��U�o�}��hv�DA� \ !  �Q�O�s�g1/cZ�����c��V=��)��<�
� �#�  W��n���I�����讽�Rm���j�ŧ �q&  �Sǭ�{+Z'�"��V=���%- p�T� �K��0���I��b5z�{��D�y�b��i�&�U ����.  ���ɿ��'���᪇򥪃�X���X;�᪇ \cB<  r�2<��gw��(N�;{�<>�Z�eTs2 ׃ �\K�h�<���~?v��^���+�N�<>��l��  ט ��Kg���^����Fa����8F:�z �5'�  ��i)���8��^��U�-���ˆ ���;-  �w���x��ߎW���be��yK��G���z �5'�  �I��~%����q���1+VW=�/����4�z �5'�  wI�r+�o�g�������G1��W=�/��t2��4_�6 ��G� @���R�ֶ�p�/�������ŴX[��� Y̢6x���(M� p�	�  ȍE!���v���K������6s�4"���������8���� p�	�  ȍ^k/��_ų���J'�^&��#� p�  X�y���ƣ���ؿ�W�D��BD��A  7� �����q��a<}����/Ĩ���!}=�Eǽ(�g�	 p�  X�q�Gߋ'~=^��嘥�U�kI�Hg㨞Da�3- p�x  �ĬX�í������xy�W=�o�0G��0j�ב�ƫ p�  X�g�~5�<��8��ު��U�Ǳ��?F���(N�� p�  �<I�R3����|�oDw�A���G��%�I���(�Ƒ,�� .� �K1/�bм�v�z<��k�k�ŬX]���5� p��x  \�Y���^�������ߌA�V,�t���֒XD�Е �<B<  .P�B1z��x�����j���U�$�E��QT�Ǒ,� pC�  �0�B1��?��'�Cl?��ƪ���J�^4�Ϣ}�P5 pi�x  \�q��[??�o��ALK�X$�U�UN�}����_Da.� .� �swZߊ�����zl�|̯`ڟ�4�E�� ��᪇ � B<  ��i}+�w�j<��7���/�z8�0�Ea>]�0 �F� ��H��k���/���G�zDb��Ŷ` �j� p.��Z|�����j��wV=�S�O"��V= ��� �NI!z��x��7���/�i�V���Yￌ[��0��$^����7w�ߩ^G����:yt	# ��w @n��j�/����|�Wⴱ�$]����b���q����'���,I/���Ϭ ����}�ӃK, ���x  |s��w���x~�W��_�amsգ�Q�O�q�$�<���}����>���;��m�Řݭ|��QGet���� B<  ��ER�Y�G�Ə����`��1-5V=��a�l���x��������.�s��1/�1/���_�YZ����R�"�/q�  �� ��L��8��K��?��c�܍YZY��~��t���w��D���(��_�3�Ï#��I��v���~]�v��b� pфx  |#��iԻ�b\iǴX���Z���|��q��kG�Dqҏd1�+�'�:~����iZ����Ť�|��$1�$�5t �����>�G�  WG��G:Ea1�Ac'&�����S���b�����ߎ��Dq:���0�Dyt�I?F��W�1Oˑ,f�迈�'�.�����
  �x  |��i|�g�4fi5�<�[�o�]��ޒ,�Q==��gw��X?�ӯ�w��8v��A�+k1K+q��݈�h�<���F�t��� �S	�  �־���%��0~�s�cLʭU'""��,*����w��'�<ݧ��1�q����,�ĸ���z�GǑ�F�i��'� �����?���K�p�C���z�U��񿊽��˨�������y���,f��ޯ���{��- �er&  �0�Fe�&�Ǐ�`��1_a����ǽ���}�;Q==�d1{��Kg㨞�ڛE���Q�4�  VB%  �2<��O~/ƕV<���\�y�b��?��'�;��C��/��q�I��Q==�Ҏ�  �E��%�$�4M�P(�u%I�֕���[|v^�b�x���o]��l�g�������_��/Y�#��u�0���_���?����9?�"�� ��	���\�$Q("MӨT*Q.��W�T�b�i�.��'I�eP��v��lyM�ӘL&1���h4��l���9{\E�q7��Әk�<�b�I?�G?�����ڛ��4�_�s �����4�r��Z-��zT�ըV�˰."����l����
��O���9[��}�~��{��0��a�8==��x�ٻ���
����9ʣn|���B��<:�����?�f�if�}> �U�7F�X�j����J���ug�;��
�>?�,L<[��U�e��p8��t����h�q7|�G:���_�s�{�c�鿋�ǿ͓'���N  ט���$�r�����T*Q�V�\.G�R�R��Ba��\V�i�Ri���|��$F�Q����1��{��ؖ[ �ݧ���c�V��w��s�Z��g��=����6v��~��F2W� \B<�Z)
Q,�T*E�R�Z��F#�FT*�\�v_W�P�J��J%">�F�Q������qzz��(&�IL�Ә�uM��}����J+^��k1�v�����(���q�����G�&��4R ��K������8�+/�[.���jE�Ӊv��b�\����b���t'''qtt�n7����-@���/��x��+ߺ"�0�D��q���_��O�E���<B �|S�\y�b1��flllD��ZVܝmJq�$I�b1���cmm-F�Qt��8<<�^���< w޵�E�����O�e�>��(N��<: ���WV�Z�v��v;��z���(�Wj���Bʬ
�T*E�ٌ�`'''��v��T�
����b��ĝG�66_��*� �K�\)�B!��j4�h6��l6�V�E�x�_β��Y#��,�^��~?�ám���}�f�(N�������;6���K+ @���Y/ped�f�z=��vt:��V���骇�;�b1Z�������(NNNb0�d2�+�u�]$�YTFG�9�a���?��Ï�4�`�  ��~��G�hՃ �i�$�4M�Z����V������f����m��ʪ���I��\Hg�������_�~��[��,fQ�������7?�t6Z�H �C%�[Y�������Q��U�}K�z=*�Jt:�888�ׯ_�l6��B�r _����{��q��oE��2��F=  B< ��&����l6�R���A�Ͷ�h,?F�ۍ�d���7�w���8=���=
�i4Oǽ������z��  �!�;�F#���bmm-Z�֍oZq��4]v�-�JQ�V���8�}gM��s��q�G�<��At��݇��/����#Y�� p��1����z������Wu-�]��X__�j��r9�4��``�-p�6_�q��c�?�����H��U	  ��x��e[=��f���9���j�(���j��ɓ'���b:�
�KU￈���X�0  rMkG`��jܺu+>���h4�K��i4�����֭[Q�VW=$   >G%�Rkkk���kkkQ.�#I�U�F*
Q.��֭[Q�T���0���V=,   >#�V"M�e��n��R��zH7^�$Q�բP(D��Q(���8f�٪�  p�	�K�$I�J�h6�q���h6����L�R����(�J���b2�8'  `�̜�KU,cmm-�޽�Z��ٜʾO�r9�>}GGG1�LV=,  �Kc��������]��ڻw���֖�I  ����X,���NlooG�Z�]I�D�Z��������  ���p��3𶶶bss3��z
���B��z=""�E���;#  ��	��$I���X[[�����T*�+*�vvvb:����q��cA  �%1�.L�X�v�{{{Q�VxW\�P�j���݋v�mk-  �%2�.D�$��tbww7*��3𮉬�rww7:���+  �%�bss3���t�������9�   \<{��sU(��l���f4��H�t�C��i�f3��y�����z1��W=,  �kK���B��J%nݺ�V+J�Ҫ��*�J�j�b6��d2��h$�  � ���T*���zlllD�\^�p��r9666b}}]h  p��x���:�޹s��&MӸs玎�   H���v����Q*�4��a�$�R�����n�W=  �kI���$I�X,F�T�b�i�~�*
ˏٕ$�������|��f������t��$��i,�K�wh6���t��l
�n�$I�?Y�  ����>!|��f��nri�F�\�J��RiyC��u�1�$Y~L�dyc<+��e7��l��8�N�?M&�e���x��7ʳ�1����ߨX,���z����Jy���X[[��d��0��骇 pc����g�˛�ٕ�4M�Z�F�^�z��F#j�ZT�ըV�Q�բT*E�p��ҳ��|����<&�I����p8��p������c0�`0��p��ɞ]1���`�BaY}U�վ��~j�Z���G�׋��c�j Ι�˷���u ���˂�V��v;Z�V4����Q.�j	�����I�P�r��R)Z�֗��������������I���D�����KV���o�V�����~?&��7V  ������]��q���h4�j���lF�ٌZ���a�-)�΂��~�ͺR�D�^�N��,i��1��7�^��^/��[�#��rlnnF�^׍���i�z=������ F�Ѫ� p嘻��]�.p]�ֲ�񬬼^�G�V[^�ju�bue�՞-y�V�F��[��ٕ�������ԍ�/Ⱥ�nnn�`0��dbu �g0w�j�v�2��t��qm
�(���Z��r4��h��˫V��؛�ו�i��q����8==�����$I�����u&��[m�ݎ�h�����i�    IDAT @n�����3wɮ^������1�N-4s��Ҳ՘�����Zlll,���Ru�
�B4�h4����b��J�h4Z���.n�$Ib}}}�*�� ���].�ٹ�����L�����u||�슛5ɀ��qe��h6�q�֭��ڊN��juyė�?��eo<�s��f4����1�N�*[��n�7\�^�V��nW5 pc���V�P�J�;;;�����,��a���~�z�*z��s��=!WFv�V�Ӊ����t:_8�U���W,�Z!���½b��z=��i���Υ��<ٶ���u! pc���O��6M��΢j�q�޽��zqtto޼�����L&v��;B<r�Z�.χh�Z�+k�n���dA�O+�O�d�!�R��u8ov���3(���j�Z��V�1�� �-s��#�����N'666���.��,=M1�!��AY t���v�m�jE���oR��ƸX,�����<�K����N��_���l��! �s��!I��T*Q�Tb}}=f�Yt��888X���u��� �U�YHT.���j���nܽ{7�F�W�G�l3��Ͼ���X|�Uz������Y������~���o�I�D�Z�j�kkk1����F�׋�h��L3�k�\.���f
� �+��%�s�w��it:��t:���������ٳx��y���,b��pٮƫ�^�$Q����ݻ�������s"�J���|��*:�L�pM���.�J�X,b6����z������?O�>]�؊�Ⲫ�X,.�p8{���(����w�����f˖���t:1�%�Ξ���4�Z��V ����%�s��V,��jŇ~<�7o�,���``�¥�R�j5:�Nܺu+666��hD�V�R�����l+�p8��p���eg��F���.kO�X,���le�V�""��n<{�l���JU�@"���_g�����e9xveUp�J���f���ٯ�P(,W1OOO���/Kչ>�4�����Vj �����j�].B6����f�w�܉���x��U97�K!���e�*�vjZ[[�F����l�쨚��������
U��w)��L&o��t:�V�<���/[��V����7ɯZ	�n�u�V�qU��eW��p�:�(
���o޼��p�,D  ��]�(�s���$�rLYӒN��VW�^�g��qi�_��floo���N���E�R���d�Kgoh���`0x�ʂ��p��b���t�����e�&j�ڲsl�шz����z�FZ,�Q3�wq���u���z1�m?WWv`p�^�~���h�C �R�.�"�.�5o��t�:򶷷���8^�|�����v�,�B�pY�q�ݎ;w�Ľ{���j]��UV���g7����8>>^~���W��.f�Y������o}>M�h4����v{���nG�TZ�&]�M1+U���1���Z��hY��Փ$I�Z-! �K�.��M�.�juY��z�1�T*q�֭��ڊ^��=�gϞ��ɉBΕ�U(bcc#<x;;;�h4Vr��t:�n����qxxGGG����7Ƴg?�T��,z�^���x���r��������_�x]v�zV����kkk����-�yWS�шj�I�� �a�ru|�ܥP(D�шN�����V�N��P(D�ٌ�}�{���/_��������~q~�x\�J����q���X__�f��J���l�n7������8��n����u.���/�n,ي^�V��t�l4qtt�<�";l�\._��켌$Ibmm-j�Z���.���}�)�JQ�բZ�~��S  Γ������Kħ�����x��u����j�j�bmm-:�N�Z���f�b�Պr������͛x��i�y��nމ�s�$I�J�X__������ڊ���e��EZ,1���G��{��(A�7�U�egUD����`�<������u�+T�|����WG�$Q�V�^�� ��0w���yK�3;S��hD��\~̮��~�i�z}$6���ߏ���x���}|+B<�Y�$Q,��h���z������v4�}��l��dyxkv6ě7o����j�9���Q�V���|>_�
���(
�U��|��:�fo�J�Ҳ"0;<v<+U�����`�C ns����z�^��b��V+���c}}}y�^�V�R�t!UzI�D�V������>{�,޼y�~?�ө0��M��;)
Q*����ă����Q*�.l5#;�a6��`0����x��y�~�:�á��
�e%�W���1c8�����l.o�I�\ؖ۬���l.�e��n���u .
�� .����4޼yo޼�B��j5���cww7666�^�/�A���������x��Q<|�0���b2��y�k��N��ݻw�/xy����իx��y,x؜�$I��h|���6�'''��v�T*E�^_��_��0;�N����v����SV��h4����� �p�.�5�����4�>}ϟ?�F��������n݊r�|����{ｸu�V<}�t��~!�X�bq�޽�}�vt:���jVi�5Tx��u�����WgE\���S���_"���M�|>_�Iqtt�Zm�E��<��R(�R�,?�����o��'���_ .��_%+B��t��p8������Obcc#������|ሡw�!4�͸�~���x��e<z�H�&_I��7R��bcc#nݺ�oߎV�u!a�t:��`GGG��͛8::������+I�h6�����n���4��a�F�8==�J�ra�m�$�r��bqyn^�׋��Sg��L��e�C �!s���l�]�B������at:�ew�F�q�����J��l���իe �'��k�*f����Ν;q���s�f%秧���v���0^�|���1�L�����$�4M��h������"F�Q�F�e�\�шZ��V3��R(��].�����`0��"G����V �s��|>�n��n7^�z�v;nݺ����j��g���v�b�����j���jE�V�ׯ_/_@F��W��|��v|�ᇱ���z�\�c�X,�5����ӧO��˗�����y�z�J��;+;���tY��n��:��n��B!��v�j���,��Vv.^�\��d�� �s.�d2����888�Z�;;;������ˎ���������F<�<>���899q<KB<�R�
��?��g�}��b�� ^�x>����E�X�X�z�~a��~^����G�R����h�Z�Z���׵���z=����*i$I�z=F�Q���U ���]�h��0�<y���{��Aܾ}���O�Z-�߿������Ǔ'Ob0���su	��Ri����vܻw/vvv.dk���q�|�2^�z'''1�0�@��Q�V/-ċ�eU\������^�G��8��dۄ�BlnnF�RY���^�:I�D�Z=�� �f1w�dg~g����x��Yܺu+vvvbmm���.�R)Z�V|��G����?���}�ko8!oɪbn߾������u�%���4��~���/K��ݮ�I�4j�ڥ�x��v4�d2��h��0����̉��ޛ$ɲ�m�����y�"I�\h�8 ��2waU�EL&�8>>�~��^/���css3���έ4M�h��Q,�g��x�"����%�c)K�wvv������vn+XY�����x��u<y�$������B\v�w�|>_v�����j��s	|���r�i�F�ߏ�h�*� �s�b:�ƛ7o���$^�z�</omm-j�ڹ�\����{�n4��(�������v�����x,����Ǉ~{{{�v~DVn����ɓ'����8:::���b�i�Je�!^&��{��uT��h���n���{�1f�eֽ6k�.Ȼ<B< ��0w!�f�Y����~���t:q�޽��ۋf��b��.i����F���X__��?�8c6��ʻA�xD�X�{���w��X__?���|>��h>�G�-��_���<nm�Fqpp�^/���bmm�\n�Q�^*���hVZ/O�P�R��b�k ��]�
NNN���������q���x����H�w��i���E�ш��G���cy7��K�$��f���{q�Ν�^�������˗���ӷ~%��4=����%k|1c6�E�ߏv��F#���;?��mĥR)���b2�Xպ$�R)�4�: |)s���|��8���b<ǫW���ݻ����f�;I�(���t���n4���O~�^�����P�r9:�N���ŝ;wΥ�SV~���/_��ׯ_/�{���e�U��x��4F�Q4������3�yi�F��qrr��XY� �y�.\U��4NNN��ow����ى���w�UT*����D�T�R�O�<Y��\_B��V����Fܿ?����%��N�1���p������F�eJ���V4/�b���`��8F�Q�f���j�8�^[,�A��؋��{ �e��u0�������������h4��������4�ʎ��jQ�T�ѣG�s�����l�s�m��ݍ>� nݺ�Ώ��`��Ǐ��?�q�F#e�W�U
�2��4��n��t:����<o�]V�����s�.� 8�܅����4�<y�_����?�ݻw.g}�J�x�����h�'�|O�<q4�5u�f�|kپ��>�h�Bq��a<~�8~����qL�S/W�U�"������[a�y|-�z}�xa_��"� 2�.\g��"F�Q|�������x���޽{�?{w���q����`��ջ�ʗ|�����{o�;��h�"�:��s?(�P��  0��T�Wi�L�9�}L�\��>::��i�,���y{({�:	S�|�|���&
���]q�0D�������X0�f�,�;ٙvYQ�q��}���h|�ʮVr��\.CQ��}x���p�E��g����փ��8���>��!^�|��h�'O����h��mY�Q*��p��wض�E{�I�=��|��	?~�0V��(�l6C��ƻw���t�8{B��̟�Jya"x��B� M�R'�dY��닟�h4��8<��FYO ���СI�w���u1�Nqrr�����((������}�C�-ao�i��(��ٳ�������d����ŋ�I���I�����ǋ��B�\.��/��R�V!I�"��]���I<""���؅UǋZyIӋf��A"N�,�0M/^��,ˋ�L�e�x{JQ�j5|���8??_)1�1�0D��ǫW�p}}Ͷ�{J���J��q�q��t�.��*L�\��|�����ٌ��k�j#"""�.�.D�O�ض��x��ϟ�^�CQ�T���/������Kt�]B�8&����(h4���h4V>Y޾}�W�^a8�K��$I��DJ��c��juQ�.-I�P*���*:�l�f"oE���#""��c�B�!��qqq��d�/^�ɓ'�O��c�=B.��?��t:~/2�I�=��:�����7ߠV��ԝ3�"�F#�y�����L&, { �5�r���y�T*�u}�:y�i��h@�e�f3~?V���;"""�4�.D�1� �`0�o����t��O��T*��Q��*��:~��G����h��p]w�#���$�1M���x��9���V�=�C�����5���ye�@��i��M/�(B�X�eY�w|E�eY���$��m.S���}����A��p� ��>���Q��S����r8::B�P�V��|ͣ�McoO����<{�������8��y:�޾}���֐8 ��HI>�Ʉ�1,�J�p�e�Ba�țN�L�p�="""z���r�8^4�p]A��h �˥�ި��f��Hr����q�u�6�I�=�(
��&���+�<	�Z-��������D{+C��c���z��b�����$I��`<�CDDD��]��y����Kض���'''�y�$���tq��ꊇ2�I��S���:��dI�Z��믘�f�Pǈ�h�:�~N�ν�j!������%I�eY�$i�c����(�""�=�؅(�(�����׿���=���aYV�?K�$A�e�q���k&�2�I�K
�~����T*+ur���������%'����%R�8��������R	�i���dY�a�����.�g����0v!Z]E��f�����8?~�j����R�J�~�-�(b���`/��I𫯾B�VK=	FQ�n����K���`<�y��%��D����b4-�^$��D)��4Q�� ��<���#""�w�]��'�"��c\\\,�^$��Di��Z�����
 ��tX#o�1��A�����O�>M]6�c�a��`�W�^�����l��,I�Ӯ�3�e��"���n�i��&ä�E��ض�0�:�}��DDD����f��cA �� I��j�f}�����t����j�����ցI���e�jϟ?��ǏSב���?��3��.�8��$�����	������J�I��R��}�ʶm&�>�I<""���؅h�f�����8���?�T*�J�I��Ǐxu:���w�x"�2J����;4��ԓ`�t:���1xՏ�(�1�_(ڶ���ò�ԉ�B� I�\�e���k�DDD��=�$��������h4R'�Ӳ��b<s}�����e�|?�����R})������5���.&A&(�$�DQ��|�n������;::��i+ua�gw�1Q�1v!z8q#��}���\�Ӭ��8::�?��|>�� mO�e@r��ٳgh6�0C8�ԑ���ƛ7o��txϝ� C&��H��&J�R��LUU
����pȮO�xDDD{���Ë�xq"/��=z�H8�.I�@�لm�x��&�	��;�I����8;;Ë/RO�A��n�իW�v��飢(��{�ֳKv�EH�UUQ�V�!�8f-�{� `���h0v!����n�E4M[\��&��/^��<\]]a:�np�$�g#w��i8;;��_˲R]�� ��?��3w���0d�#�(�l6C�݆�8�N�I�M�P�VQ,��0�GDD�}�]��/9�������0U|'I,���_���3h����RL���'O���ӧ(
����^��_S��p0��iQ�u]���b6��>R��:*�
���G�mL�ec�ݐ$���׿���^g
<}�O�<Y�)-&�v��(h6�x��1*�J�:\Q������;��!d�� ���Q�q�z�Ե!$I���(�J�ε�~ǐu""�lb�B�{�0�p8�������T��dYF�R��Ǐ�l6y�h�&�R�B/^�@�VKut5�߾}�v���-%C���8��\���F�,ˋ�͢?��cm�ZEp]����&�x�X'""��.D�)Yc��m(�I��l6��욦�V��ŋ���N�\�o�x;&�{~~~���S�.�gDQ�~��ׯ_��j�&--il�p�C�ᢸk���Y���b��u1��y�A&����ec�ݗ����\�ZM8�gNOO1�pqq��tz���.�u�����h4��w�!��	?�����_q{{�q60J�ga�s�� 0�N��Lb���^�ò��=��1��nQ1v!��qp{{�_���,��y.��w�}�F����N��$�I��~����u=�)(۶���K�Z-x���QҾ�������l�F��O�}SU�Z�|~ͣ�&񈈈���Q�x��V���/_¶m����_�5��&omm	�x;������(�˩���WWWx����^ͣ�%I<ZN��F�ǩ���r����[���s&񈈈2��Q��q�����[\]]a2���$�\.����fs��/aM� I��<���qtt���l6���...ReՉwO��O�d8� IdY�˲˲<�K}=7��(b���(C�eWǰmP����,�?C�44x���d۶&v�<��e�$!��-2�i��A�V����K�z���I��Ð/c������4�UdMӐ��Q,��fU�|ވ��h�1v!��^���h�Z�@�y˲�qs���>�Èw��((����oR]�K��z�
�Ng#�C�1� ��8��'h6�a0�q�T	P]�Q�ס��A$�(��8��	c""�`�l��=    IDATB�?:�^�z��h�jC�P(��o�A�\����Q�+�J����a��pО\C������`���ME�N��veYҤ��n��+I��x�����H:���EDD��]��GE��������,�0M��=J�҆FI�1��E�R	gggh4�2������;��>|����P%����,P{�^�.kI}�b�������/O��>�.D���}�z=����N���+��F����3&�[l��i8::£G�R�m���WWWp]�A0�U��KN�����:o��xQ"��	����X,��}����;�q��}&񈈈2���~�������
�|��պ�$	���ѣG�����L�oO�mI�R���)�ժ��������Ʉ� �]�2Oꕑ��kg�Y��i�P(�4��p����\��>�.D�+�cL&\^^���J�U�U4�MT*�����I�-PUO�<���p-�8�1q}}�v�������f3
h����d�m�PUu�yV�$I���� U��]�.f��DDD;���ah���u�e��h�ƒe���p���A6�'����8??G�рaB�&��^�~���[��q�m�q�m#Ӧ�)�A��x��"�ϣX,�]�Z�q`����ADDD��؅�p�q�V��ׯ_�j�g���ϡ�</�)�`����Q,��A���_�t:�
�����p'U�ދ����~_�4]RO�Z�BӴ��M�!��|>��P���������v���K��t�$�X,����,k�!�
�T�i�8??G�V�L{��^�������\�d�%�d:m}<EQ`�&J����h%�)�'""�]�]�O������^O8��*j���������1��@TUE�R�ӧO�O�DQ��d�7o�`41�5��S�������b8��<ᅬ�((��0Ms/v���)�DDD;����
� ��o޼�d2�M$I4M�ӧOQ�T���.�~4��b�f�jU8w�No߾�$H�qL�ӽk��Т(�h4�m۩�����|>�\.��>�(�0�NYk���h�1v!:lA��۷�t:��vY��j���Fx���{ �����������q���[�~��u�h+�+�L�.�"L��T�JJ���|fk�%	<^�%""�]�]�x_�z��4���8>>��(��b�44�Tw�{�Z�&��FF���R5f�?�</�uRMӐ����70�͋��~�ŭ���vc"JL&�Z-�z=�gM�D������Fv�xAy�$I���8==E�V:��1� ��w���vyj����}��c��Y���.۶$�js�t]ڙJ��
���L�p'u��1|���p�����.�K�e���\.M��T��B�e(���L�������O�>E���h�� �!|߇�y�A����.��<J��P�LY�Q��pzz�~�� ��f��� Y�Q��qtt$|r&�"t�]�Z-6������`2�,&vJ��}L�SX��|>/�H�4�e�4�Lu{� ����p�FDD����?Y��i�◪�P��A�u���?�ߓ��e�$�\.�����$^E0Ms��K~���u�8���}a.~O�k��4�Nq{{���#���B���h4����t:�:�����ې�+����Q,�jX�q�q���K�����ߢ(B��C>��RF������/H��<%I���T*p';��߷��qqFDD�����Mr�N�u�J%T*�J%
X��\.'��|7�#I�" ����(��yf���)��1�����Or�/�E��1��1^�|�r�˲�b�b���ϟc8"�"�#V�$ކ���j�����/���s777�t:�E;#�"L&ض�05��!f�&���h��EA>��a��Vl�nQODDD�����e�R	�Zm�˲�ŵ��T]��!ǥ�:r���2NOO�pg������x<��qG���n��w�����\�f���8>>F�ZE��ei�1��!�|Ϟ=���B/�(�0����+x��,5픤��a�T*�N�a��p]ס��ЎV��N��2۶1�#""�Q�]��i�(�˨V��T*�,k�0��rP����&����r�,���p]������ ��(Uc8Z�8��y^�~�R�]ח>���$z����9���G��v�[�gr��ժ�}q��}�v��8jJ�k�U��{J/�~b���ɲ$IB>��d2Y��E��-Np��a�]�,#�ˡT*�T*�X,�X,�P(�P(@Q�L��Ij�Y��8��!��*�&�	&�	��1��1<��g�EQ��p�V��4Q*��~VQ�������ٌ�vW�$��E4X�%�\���z����D�+:LIRƲ,�j�L-vQrM9�!9��i��<\��ɝ�8�.N�DDD���K�h��0C��$�u�}��<�T*�T*���n�^���m�q^�|@A����b�|~�ϛ$I�,�F���^o�#�_L�Y�թ�l
?;����t����7�Nu,v�X~���s�f�ŕ�B���q�����!����(�.�!IdY^$�NOOqzz�J�r�ꊢ,N>{���777����p8Dl��@��>:����P,��=99�`0`��0�^�r��Z�&ܖ �����v�⡝�4*���8::�fE7��0��h4���4�iB�u8���щ���~�msw���hG1vɎ\.�F���ϟ�Z�B���]�]I�P.�Q(����~��N��n{x{/�ct�]\]]�~z�P(�^����b0lh���I�5k6����
¶�m�X��p�N�B�a0��"��0���8�PQiI�`���D�.��h��ؕ1�1v�}�B���8>>F�RA>���i��N:�*��(13�n���| I=���S�J%�&��_&��aoM$IB�P��ё�NV����h4�ʌ0a�6z������2-I|�F#	�3I:y�r9����q�����`���6� "":d�]v�,��uGGGh4��닎����g��:��<��"*�
:���.\���� ������������U��t���%k��[EQ�l6Q*��j�%�����,LO�9a����4�E7)J/L&���,�0
�íN�A`:����2�GDD����&I���:��"j�?~�J�"� 9d����h�R��V���,��}L&���dњ��s\__�����,}AUU�J%4�M�~����q�A�%���\����8h�Z�N�x)s�8�|>G�߇�i(�JY�c]�(��y�N�PEh��L���dk��q/j%raODD����&Y����prr�gϞ�����̦�i���qtt����y��V���T��a��t���[�r9�S��e���WWWÐ	VL⭁�i��j�T*B;YI����f�)��r���1�EQ��p���,EQ`�@E[YX{���p��p����DDD��.�G�eT*|��7899�i�Lୁ,�h6�(��h�Zx��%���Yx����:,�Z�@G�e�Z�������t0���i�ѣG�4M��l6C���x<拄2-C�Ch��]��q�hr�i�p"�T*��O�EQ�n���pȅ=�c�;$I�eYx��=z�J�"TR��LQX����3��y\]]����ٌ��� �"L&t�]X��B���swO۶�$� &�V�(

�NNN�
��q��`�V�ŀ����80�JE��@������%�$IB>��x<��y�0���� ����h���vc�ݑ��<==E��D�Ra�nCdY�i����eY���A�߇���^�A���[�J%����7E���	���yE_ �x+�,�Z�BAh'�u]��}�z�����DQ��l�v�]�a�&y+�����,k�.�$!���4M��� ;Zw���f3���0�.ۗ4�8::'O�l6aƶ�udY^4��,��-:��T�j��>��>�����<']�k���1&�ɆG���_Q�R���p1���
���>	� ����a�H�H&ÇX�q�qWk�3ODD���l�,��u����駟���&��0<y�?��NOOy�y<��`0@��zN�$�R�lhd�������r��Z�&�l��b�w�Ka��j����u�m'�ǁm���%.6�Iv�[����8�.�W(��w����3��*G[$�2��*���?���_��}�p8D��~�V��\.5�9d|k��R�آ(�h4�p8��8���a�N��^���A �q�8�ЩFEQ���Fwv=�C��C��a���(�l�,�899�w�}�gϞ���Hj�=}���=NNN��e��`8b4	��I6xo9�������RI�8z����a�F�{��,j#�e:I���t*|5Y�uX���qA��o�=Q60v�UUqzz��ϟ�ѣG���L�Y����qvv�/^����'�R
���777B�I�P*�P��78���Og
�$AUUT�U����������ݻw��H{/���UPUUkEk�� 0�LP*��i��?�\.�0�(���q#C�Ct:ضͺ�DDD;���v$?�F�����
�F��o{X�	�e�����!�ct:A�����|�w������PUu��%�ϣV�A�4�ܿ�[ )H��J��b��\.��s��c4a0��5�(�`�6.//���R��+�"���^�]W�4�]����m��DKDD��]�$I�4�j�ӟ�l6��� ]��l6�?�	�jUh���}�� ��H轑��P,Q�T�3�&�RP��������9����Ƞ�E\��۷o1�x�6�(�0��Ъ��P(���F�Fx��-\�e���(#�<<UUq||����/�V����!ɩտ��/8>>���0����	^�0pzz
EQ64���$��dW���Dh"���ٌ]� EQ��|����z=&�%W�}�:Z���Z�A�^������s&����2�����4�=·�~�R�ĄD)��R��o���=��i�R��a�V�%|s�0��� ���4�g0�,H�4T*
��|>�h4�l6��n:HQa:�.^ȵZM�N�!�����q躾�UY���(^��q�hb��v1�N��#""��.KUU�����ӧ���L�e��(����q������l�C���kq*��B��r����yކG�ML�	�u'''�ɇ�d�n�� �ZE�L&�dR�R��i�е�d24C����(���p]W(�E|��p8D���l6�����(c�<UUqtt��ϟ��h����4��ǐ$	����2���(���v��$�`���1�L���F΂����ЮJ������Q6$�....����ywx�4�υ^�$��,�zq��<�z=\\\��QF1vy�	���	�=�i�~��G������c<�.�����X���!aO@R_�R����f�F�m{��#ʎ����nnn��XRp]W���$I0MS���m۸�����[�ec��S.���O?�^���RU�z?����򶇓������l�gdYF�R�i�L�~�x�IP�Ô&M����[K^����q�u�;=ɲ]׿�+EѢ�E��g���(��<�Z���O����Lِ\�<99�ӧOQ�ն=�LHN��z=��EA�\�eYY�1�' �E�q�~���d��Qe���h���t:p�ɼ�H�� �4?YK/�"8��N��v���p�uW*mc�ͳ,�f�=�aL��1I�`=z�f��Ӓ&�	���p9�j��B����e�xK�e�B�Ri�g�S3����lptD���>F���D�m�,�	ɕZ�Sr�a@��?,.� �mۋx��H�.��.���*��&��΄~Δm�R	gggh6��:���|��x�q�b�J��b�����Ȓ4MC>�_��
��t�p8�|>�
It��(�l6���%noo1�Lx��#�8�����fB?MӐ��Wj��̓�������dZ""�=��e�dYF�\����qtt����K���e&�� �����P�����$���[R�\F�P:"E��6��	H�]\\�����3�wOrzN�X��i�u}����Yt	f򎈈h0v�I���:~��G�!���?���Go�Ї\�E���7$IB�P`#���gI�RI��{�t:��EQ��|�N��ׯ_����u]&��-�T����n�_�F���|>g���h�0v�˲���3���O������P�����3����$�'Z.ɲ,^U�^�^��D��)��)k{��4[�<oq}�T*!����)�"����(�R;�qC�$���V�۶yU���hO1v�M��h���%�.�>}��t�X���a۶1�N�i�ҵ���8���I����P(�����y��~�ϫ�D+�����V���������[�i�/%��8F��}Q-��<}GDD��l�$I(��8==E�Z�5Z�,˨V�8==E�TbR��Zܽ^O(ѩ�:
�r��w������0����v�<�B�&A`0��������p]a�b3�c�f�O��q�(��l=�CE�u�r�!�b�9��������\Gт$I8??���	��~F��I˒e�a0v��I�/P%U��d"�i��
� ����׿>��wh>�Ļ������uGGG�.�DDD�?�l���)NNN�N8�a�u'''8==��PvVҼP4nc��GL�,˨�jB��y�m��� OmZr-t2��u]
�E��C�K����� �(�"y��|�8��;H�4^!""�S�]�/�F{vv�j��A��$�Z����l��ߥ�q��|۶�y���(�.����
$I���(���4m����9&�	w��6,A �q��eY0M�eA���޵	� �����0�E��s�M�P.���*<�����hO0v�EQpvv&��Ò��P��pvv���6�����|>J�1v��x��(
LӄaB���l��x����]I���|��h˲P(E��.H��dz�4iR���K��@�^_jRK~�i�u].0����c���e�e��ӧ�,+��H�,I���n���t���G��c�f3���~?c�?b�3����I��l��d��Q��A��x��xY�Q(P,Q,Wm%I�,˙X�%*����e2�`:�.��Zm�?SQ��eض͉���hO0vY?]��h4R��Ó��P���h4��>������s�$��.b�3��P��u���f�N�-#�"L�Sض�v��\.�|>�|>�B� �4w�~^��狿CRC"I�EQ۶1����ҋvY�Q.���t�� ""��]�/������{]���KUU�x��ш��`첺ݍ^w@2��֙��p��ىvDr�=C�a��0�L��*4MC.��a�u}q�VӴ-�E|������8�<oѸ"�a��c�ab>�c6��X,.��'I�p�"""�m�]��4M�j5�'!�$�R��^�/��0vY�x��iJ���K�_T�ݕ4}�}�
@'���v^R?���N~ɲ��%I�b�|�=�$ڒ�wN$�Ĥ�]��K�w��K�w�ԹK�z,;ʲ�R�ĉ���h�0vY�J��f���	�$	�������߯�`�&�>AU�EE�ݬ�t
�q682"Z�8�	����yw�{w�c�M��M�I��H�%�����D�����i9���d�f����$iQ�ZUU֖ ""�8�.�i��*�����BU����v��v�k:�.�a�t]�eY�G�m��DH�qI�03�}N��H���~�!Q�1vY�b��J��4�=�(�4Q�TP,����=����e5���	�a�P(=�1w��������l&�ƾP(�0������
c��:99A�R��0(�*�
NNN�=����e5L�}���B;/qc>��u]�%�E\��|>��k�&t]��Ȉ���!0vYI�`j��pR��B��Z��0����;�.�a��#�ˊ�����Tۊ�HTR�o2��h%G҉��(����,˨��(
PUV��ը��b��z���w0vY?I����w�������&��� ��Dx7+��mpTDDD�����(h6���GkcNOO�(ʶ�:&;    IDAT�S���$�GȲ]ׅ��qömN�D�A��m��0y�qg���(����$I�4'''��Ekc����i�����%�����a��rB_�(�0�N9�VA��t*t$]�$�:DDD�[��G.�C�^�a�$���e�a�^����]����#�L�nmS��,������DDD���e=t]G��`-<Z;UU�h4X���.�1���a@Ӵ�E�<���I&"Z�(��8<�zi�v�!Q�1vY�0�h4x
��N�e4���`��P�I_V����Ðݝ�h+�8��]�,�fec�թ�
˲P*��ģ��e�R	�e��1vI�o���u]h7+�}n"�uKS�F�4�'""�0�.�KxL�Ц���H��{�]�a�#D'�0S��&"Z�����n'B""�lc첺$�G�IL�}��K:L�}D���qN�D�Uq�qN�DDD����,�B�\��0hϕ�e&��`��x�Ȳ�\.EQ�~&��͉���)�c��� �˱�Q1vY��(�,��ڸ�s&�}�g�]�9ܿ�GH�MӠ(�Ї�!�4�,�P��A�������։��z��4�N3��iL�<��	�.�0�w�$I�u]83�!\��DHD[��H:�~GK�����������z
����aЁ0M�Ba���	�]�a�I�`���L֕ �]�1\��eY�a;ec�����_c���������N`��x��ޯ���E;�(����pm	.^��������,���Fz0�a����]�1�wG�#�A��}�d�N����#���I�b�nQ1vY˲���=:�\�I�;��c�I�R�f�|���6-���<ec��)��0�Ԃ��i0�j�`�"�I�{D��DQ$|���h�D'¤�ec��$IZt��+H��,ˋ.�����������H>��"�,�<O�H�!�i'""�"�.��e�|��n{(t`TUE>�g�������N�D�ua
I?��,""��b�^��D�:���1v�7��$AUU�/'B"�5a
u�K��#""��b�:�&�mHj1�{�]�0�w��(�u%8�.I3rKDD�=�]�KN�qD-I�j�>�.b�Ļ#�n���.	���YDDD{���jx�����i?��E�X���*�"�n���,Y�Yԙ��(�����1�:zc������їxǈ�xC�!"���EQ�0vY�x��ޘ�>�.b�ƺG�e�"Yc"�M}/I��,Q1vI/9�w�� �~�>��E����?B�$�/w��hפy/�DDD�]�]V'z�h�:�}�]���u�!��0�nQV1vI���&~w�;������?!͑tvx"�]��M�!O�DDDY��e5iN3����1v�3���~���&
�|��Ј�����?}��ZmK����4�BA�.$������Kz�\�|�t]��P2�~S�J��4�4�lr]����me���aoE�e���m��L�TB�T��0����h�0v�M�P�T�%tt]g2T���8;;cB���D""""""""���I�{D���a� ت�V�(
r����}�G[eY��JQ���a�:""��a�^p]w���$Y�?Xg�֢8�u1��y�]D1�wOE��x�;�777x��%���GF���l����������?�8"ʲj��������K��8���'""� �.����Q(�H~�B�uf��G���∲%�"L�S���7���p����&������|���>�_���}~�(5˲�Nr�DHDD�U�]ҋ���B�u&��?u�!O�	��h�=d���(����X�X&�CѮI�^J� """��.���bچ(�X:��.b�ĻG�� �2wn�h����}7���(����1|�?�D m?{b�"�o�{D?��"�]���EQ�0vY�����툢�׏�`�"�I�{D�T'�T��v��(B�Y<�ODD�M�]�KNC1�G-I�r"�.�.b�Ļ#�cA �eRE�2Ѧ��*|$]��GDDD���e5q�q&���EQ�q���7�.b�ĻG����,"�5iv�x����({���$��wZ%ڴ0�Ļ���&��Hs�ZQN�D�SD'B�%""��.�c��!I��{�]�0�w'B"�:ѫ2�^W���(����봴-�N�!�.b�Ļ#MF�!�\.'�^:��,""�,b첚(�`��A'h;� �m�L �c1L�ݑ�H�,�,KD;EUU�ݬC��������j�8�|>g�ZzPɺ{>�s��o�]�0�w��Q֥����([��&�M�u=��Y���.b�Ļ#�cx�'4��
M� I�GFD�I��i��=�"x�w��YDDDY��e=f�<���0�@x���l��a��.�ĻGt"T��	uS!"�Y��i��n�DDD���eu�ٌ�B��8��$��]���}G�E���0�h�VI�]ׅk�DQ�uv7���(����m�p]w�à�.l���0vc�t�Ļ#�c��+|?]Q�Ή���J�$������� 0vY��t��|��aЁ���N���N`��xw$��0>�n�&'B"�*I�`���q� ��Q1vY�q]j�6)�J����1vI�I�{���";Z��h���0~��n`첺01��X��6.��q��c�t����u�vbXW��vA�#��Q�1vY�l6�h4��0hύF#&��`��x�f"����h�$IB>��DHDDt@��n6�a<o{����1�xw0vI�I���UUE�P`�v"�*Y�Q(�����p"$""�6�.�K�xAl{(��� `��.��������RWBQ�h�VH����hY�籸.Q�1vY]�D�H��eDQ�H�1Q�c������q�v�dYF.������"���e��#��	��|�?�����(�����8�t:L���EQ�N��5��]��[�#���MI�����Kr5FtG��YDDD���e=\�E���I)Z� ��t��]�]�c�#�#�q/�L���DD뒦�M�p]��|�##""�Mb������q�ƣ�������	]{�w�]�c�#�(��B��
'B"�UU�;�%�9.T�������z�q���n������8h���}_(Ѿ����$�'x�'��$	�R�!m���(�B�|>� �`�a���I<Z�qpss�0�=����%=&�>�u]��ϲ,�X,"�˱�=(I��i�ŢБ��l��DDD{���zDQ�^���d��x�� 0�N������]�]V�$�'�޵�$	�iB�u��DD�J�;��)��ŉ���(���G�p�~��t�á��m�~���*��]V�$�'8�#��N�<���Q����,Kh' ��)����.��j�0�=ʸ�`����mc�0vY�x��I=����9у2M�BA�(�x$���hO0vY��d��px�]0)��|��p��d�����.�a�� ��8���BG_��ED�0�ťǘ��p��^���� c���}�� �^o�C����z�}�C�9�]V�$�g����x,�����a��GED�!�4�����Qa<sQADD�G���h4B�݆���gFK�����nc4m{8;���j�����1��^ڦi�0�%��(
LӄeYK?�1F�'B""�=��e�f��ݮ�ϔ[���v�B�c��1���D(���(
,��,����aY���;�"N�DDD{����ٶ�W�^�
--�z�
�mo{(;�������d"�P�9˲P*�64*"��(�JB;Y �!'B""�=��e�\�E��F�׃�y��8������n�ـ����I���pQ@Qd2�DHDEt"�pQ�Zt�ODDD�����%1/..0��x��>)��>+���c��1��q#ᬯi�(��e�x�hsdYF�X*H���A��(�a�a�ݻw���<�G��y��>޽{�d�'0vY��� �"�v.�[tz�$i��#�C%I�@>�G.�[�9��1�;HDD����_ǘ��x���	�qc0�ݻw�����|c��a��0LUA�u��u�h�FȲ�z�]ׅ�s]�n�;�DDD{������ܠ�j�����h�Z�����Pvc���[��vƎ�eu]G��`�v"�EQ�h4�&�(��8F�w����c��	� �VWWW\G�BǸ��B��b��`�>L�}A��<��Th�%�ˡV�A�4K'���$	���^�Gw]����q"$""�C�]6'�c��c����zx�d����x<������xK�ǘ�fK�~UUQ(P(���GFD�FQ��y���l6�d2��Ȉ��h0vٌ�y�۷o�8,�c8����6=��.��$ޒD'B��d(zd���K�+/����l��x��QѮ`�9��o޼IU{����y��zx����w��0vY/&�4�`۶�n�,�8>>�DHDk�L�"ŧ�8�t:�h4��Ȉ��h0vٜ8��.~���C^�=@Qa8�_~��<���]֋I�%����t*�e�e�J�i�H,��,˰,�ZMh"�m�msǘ��� 0v٬(�0����kt��m�X����ׯ1�����.��$ޒ�(�K�]�Q.�a�GGD��4M�J%�!Txz4a2�p�ADDt �l^���Żw�x��c�{�����F��.��$� ۶1���$	�Z�bqC�"�CR,Q�Մ&�8�1`��GFDDD������f3��������.�\�����������$�.��$��d"�P�Z��R��v�D�I�P*�P�ׅ����!�a��0�n��VA0����8Fh�Zx��-������	�]6�I<A,&C�c��e�\.#��optD��L�D�X�eYK?�ޝ��x"""�.�.g4��F����=z�~��g6Z��e3���8����*�@�j�����]���0�n��8�GFDDD�����������:�|����hM|�G���/����t�Ē �.��$� �uS�.�8::��BD��eGGG(�JK?��o��p]w��#""�]����A��Z�n�����::�B�S��c�9|+�}��P8o�&��2,�b}	""I,�B�R�i�K?��
�F#.$���c��޽{��oߢ����V��a�^�����{��	<�]6�I<Aq��}�Z-�#�������lp�D�oE���	���Ў��8h�Z�<�E����c����>������c<3��Aab<��~���J��l�x)�a����{ڦi����!	Q�?���O�777\<0�./�d�?��?�<ŕ!A`8���W�Ic��b/�8�11�L�y���i��r��j�
M�68B"����Z��\.�7<��d2�p8�N�c������ ���p{{�_�.noo���� ��s-��������w��m[i��/�ྒྷ)jw��d&y��=�C=߰+=]�=v,K���;�˼�FvwҦDJ ��U�l��D6qx���.�Q��r�D"_u^ P4���L��\ �R<���"��Z=i&����  x��.�����Z--�K��e%���	�4�l6uss�V��xDv�>��{�N���p�V�8
�R�(�Jqk:�?
��J�T�Tֺ^����p�N���� �]Bvy�e�^���Ǐ��j�L&�i�#��j2��V���Ǐ�������4�������,���[E����٬r����&�ɖG	`W�b1�r9e�ٵγ,K��@�~K#  ����|�Q���t:�b����b��ZM��y��h6����Z?~�p8|�!�4������?�n�����RI�\n��/r��J����u��Շt   �����Xo߾����7��}9���Cz��Q������7�}�V��������.O�"�#��}�Z��o�.
���_ݓ���D���U(�:�u]�Z-V�  �? �</�q4��U������]777k��Ǜ�f�������w�j5��s
��Dvy:��4M�z=���&�h4�B���?r /�w}�F�_}�����v�2Ms��  �����\��l6S���/����?���RDz������Ǐ��_�l65���Q�d��CO�G�m[��H�fS�x\��u?�@ �\.���#u:n�b����������ɶm5�M��cٶ�� �]Dv�o���d��t���e�YE�Qz�m�w�`0����noo�`d��.O���L�S���j�\�u!H&�:88P&��B@�o����L&��<�u�\.u{{��t�� �]Fv��N����맟~R�V�i�46ȶm���Z���~�I�߿_�NT�1�������R�nW�~�U�@ �d2���˯^�����奒��Z+Y�e�����j�\nq�  `��]��q�z=���O�駟�h4x�v�Q��X�\{�?�#�<=�x�U������r�b1��e�R)�B�-��.�BJ�R:::R,[�\�4U�V�^U  /�ş�G>�ͦ޼y�����j��8`�\��n���޼y�f���[@vy,�l�m�j4:::R2���թP(�d2���-��^�x<���%�ɵ>[���p�F���  �_"��������N�:88P�XT&�YkӀ�h>�k8���N�NG�v����]�E�q]W��H�NG�LF�l���5Cggg�v���f4�^ �0��fuvv��#*��D�NG��hK�  ����o��h:����F�nW�RI�RI�\N�dR�p������8Z.��L&���j�Zj�Z�����|(�mX��P6�U&���g��r��J�����eI�R�g�p]Wwwwj4[  �Wd����Ǻ�����^�z�|>�h4�P(�b�y��ȶm��s�z=]]]�����]�E��ՒT*�ֹ����F<� �@@:==]���d�n���`��� �}Fv���B�z]�v[�\N�JE�JE�\n���������MZxl�i�]�E�sgUY~���Z�&	������nK#�7�BA���J$k��h4twwǇ  �6���p]W�m˶mu�]���F��L&�ꛗH$�v�۶e����p8�d2�l6c�'Fvy^�`4��n���D�X�WFB���Ţ*����%� 
�R��X,����k|�n��'  ��{���g}�^p�tZ�LF�dr���ޥ�-��&���áF���á�á���g@vy~�`�X����l���t�F��TJ�rY�FC�n������Y�۶�l6����X,�4B  ���.��q�f3�f3�Z-��qe�Y��y�r9%	E�QE"E"��7 xj�ei�Xh�Xh>��4M��}�z=M����Fv���w�i�����Z	��d2z������9=&�=�D��7�(�ͮՔ�u]��s}��I�inq�  �% ���t��t�F����)
��{�6**������pg�I�i��v��c8R�	��P�ے�r�n��V��J��X,����b1�^���jQ��P8�������׺>H�|>W��R�ۥ  x4���qG��P��X�jU�PH�XL�Lf�#q*�R"�P$y�]n��b��i�������f�m{Uأ��d����%��j�\���J�TJ�h��W8��b��^�~��l���;V��=��d����z�H�][F������\.�6  �G#��/a^����N�pX�a(
)+�*�)�)�*�����������t��R��Ȳ�ձ\.5��5��W����s-�Kٶ��o�˥,˒m���c¿@v��x[�����t�H$�L&���`0���i>����#�TJGGG:88X{��4Mu:vu  Ev���������A�����
�V�;�1\I*�J��Lzuu�_~�e�X�W̳m{U��z�Y��g�Cv��x[�h��u�R)����G�=s~||��d��tʎO�0cu+z$Y�\�q��vU�׹  l����q��G������W���޼y�����]��i|����Z�փv�)�*��J��[�E�r  �IDAT���N�U.�U,�>w:���j��noad   d �#��E�'`۶Z��������իW
�B[��
�tyy�r���]��ժZ��B  �֐] Hd����DF����z���ς�b1���B����.2C*�J���k��8�z���=f  �֑]�����_�eY������^{W�`0�t:���Ke�Y&C`���l6�������z�i�������/  ����\d�����ө�ժ������#���Ţ��ΔL&t;+���L&uvv������Z��n��j����4   Av^���Q�{B���4M]]]i4���%�V�����L �G$����^�~��J���F����i�l�  ��xy�.�G�Y��j��v���l�ֹ�@@�pX�^�zpsI O'�\.�իW
��k�gg�������*�� �'Gv^��n���,���͍Z�����@ �|>����J�-��&�J%���(�ϯ=	:��V����&A  �l�.��@v��I��_����p8�R����S��iV� �	J��:==U�TR8^�5�����F  ���.��"���x�d�\��n���V��b��dR�JE����F�L��OE�Q����R�(�L�u��Z,���U���r���H  ���Od��C��C�j5��mٶ����TJ�}��
��� 6/�P(��S*�Z�|۶�n�U��4�0B  ���]��Cv�=��p8��?���t�v��`0�x<��Q�|^� ��s
����������~O:���t����I  ���d��ĕ�ٶ��`����k<�}~(R.��7�|����-���:<<�7�|�\.�P(�����X�߿�`0x�
7  �6�]��Av�M�s��!�V�J��2C�Db��0C�rY��R�e���nK��G�Ţ���T.�e�_ZM�T��T�Z}P�  �m#� ��첻(�����ǪV��D":>>^�OD"�P�R�mۚ�f2M�7��������U�T�� +��,�Z�>hU  ੐]��Ev�}<N�#�FC�jU���A���-��Ņ"��>[�Dt~~���S���_�u]��ު�hla�   �Gvv�e?p'�����F��P(�t:���,�L��o��x<V���|>��hD"��e�~�z��إ�I�����:+�  `g�]��Bv�܉�3��B�v[�޽�r�\��`0�D"���^GGG��b[%�X,���#}���J$�am�\�ݻwj��Z,[%  ���]��@v��|�u]���j��Z���l��k�B!
�z�JGGG�F�[)�rE�Q�իW*
��i6��V��Z��  �$��d����>d۶F��>~��H$���õ���A�u]ٶ�F�!˲x��d�J��...ttt��U�n���?j4�%;  �Yd���.��"�Oy�W2�T8V�X\��M��PH��L�^O�emi����B��r���txx��I�q��}���4�  {����e?�8����������[7�B!�E��/Q6��aP��0�r9��/Q�X|�m�4�u}}�����  �y�]  ��/�x>�\.U����Ç?{������t�pX���������������j�5  �3����.����0�LT���D����*���}��,|�\�eY
�j�Z����U*�tyy�r��P(���O�m������j��&�ɖF  ��.��!��?�x;�u]��c]]])�L��_�dxrr�z�v�M�X�x���C]^^������X��L�fSWWW�L&��  ��"� O���rP����h2����a:::zЭ��d�DdY֪a,oL�w�$��������:<<|pO˲��t���M&9����  ��x:d����x;�q�C�{�N�z����W�����/�L ���G�{�<tt]W�z]�޽�p8d  /�xd���"ގqG�^OWWW���y�d
���f��?���T�Db�#vS"����~��e����亮nnntuu�^��$  ^��]d����iw�r�T�������v��b�(�u�U��5�4j��2��*�����T,>l�ò,5�M]__���Ј  �Xd`;�./E�5���n������H$����A�J%�!�0�믿j<Syǋ�J�tvv���3
���b�P��Ӈ��t4��78R  ��Cv6���Q��a��\�FC�@@������o�-
��b��bz��L�d2ċ�H$��w�����Q�gض�~��w�ީ�hȶ��  `w�]��#��"ގ�m[�z]�a�u]�J���o�/����R�x\o߾U��e2�^�*
����U.��"�q]W�NG�����:�   ��.�Ñ] Q���m��hH��y����M��@@�HD�rY�`P��ת��Z,�2��"��*��...txx�H$�����V�����U,  �?Av�Gv��"ޞ��fj6����0V�m2�F�*�J
�B�F���j�L&�M
�@ �d2���c����X,>j�k���'�Z-�f��  `��]��Cv��(���t�F�!˲��V����P�^�h4�eY5�t�P:�V�R���2�̃wq�~k{wwG#X  �5�]�?Gv�?Co�xc-��������A�Z�o���r9���J�R������l�fe;%(
)���o���Ņ���^Ӳ,����͛7�t:܆  �&����.�3�����=l�뺚�f�L&
��J�ӏ���Ae�Ye29��6�[��dtyy��s��R��z��p8���3�������eƃ{HH��r���ջw�  ��{�.�Ev���N�=e۶�ݮ>|���|���K���7�5C�BA�a(�����F���	��}�;??��ё2�̃Ww��>d.�K}��I������.�   �#�] ��E�=�\.uww'۶�8�NOO�H$�������F��T���n�5�͸E���txx�J��r������8�L�T�Z��͍��>}V   6�삗��uP��s�e����&�J��T*��^�TJ�x\�TJ�hT�v[��|�0�R)���\
�B�zM˲4�U�����{���J.  ���]�Ґ]�.�x/������X,t~~�l6���~(R�\^ݞ~}}��` ˲X�³���f������������_�q�F#����ݻw|�  �"�^��"�bY����W�i��o�U�Tz�k�b1}��7*����ѧO�4�ϙ����Ѩ.//W��?�N��_~�E�j�I  ���]���.x�x/�r�T�^�r��d2���飶�
����r
��*
���Q���l6��ȁ.����@������J&���˥�ժ~��Wu:-���   _��}Cv�cQ�{�f��Z���˥�󹎏��L&�콷�S"�P4U&�Q��R��clE(R>�W�TR�\������_�~��^��Z����i�Xlh�   X����M���B-�Z-����r���ce2���lyh��noo5e�&��b#�P"�P&���ɉJ�����F^۲,��u]]]i<�x  �3#�`W�]�i�^0�u5����[M&}������
�B�^H��J&�:>>����nnn4eY;��A���j����\�F��jr�q]W�m�����Ǐ����t   !�`��]�-� ˲tss��x�ׯ_���t#���A�b1}���*�˫g����F��&�����L���J�R���c۶�ժ>|��n��c   >Ev�. �`[(�A��ʲ,�z=�}�V�^O�f���5!�~�z&�ѫW�T(�n�U�V5�L���O�B!%�I������P�lV�x���.=�mk0���Z�fS�шG'   |���"��)P���r�T���|>�b�P�R�����ģ_;
)�J)��zN�������aJ��*�*�:88���M�4��tT���h4d�&=$   v�~Av�S���ϸ���d���kM&��s���G� �1C�lV�LF�bQ�fS�V��\�^�@ �Y�Wo�l6��[ϥ�V�&�����jv>�  ����υ"�)˲�h445�����j�&.J�@@�\N�lV���j4����p8�b��m�L�/D P(R$Q&���Ņ����H$6:z�^L&}��A�jU�in��  �<�.x*d<7�x�S��TWWW�����ׯU�T6r��'(�H���B����t:���U���d2�����b1���U�p8��]ƾ4�N�h4����Cvp  �3dl�ύ"���Z.�z����ݮ���U.�7���w+r(R�TR:���ɉ�ݮ�ͦ��=��N�U.�U,�N��H$�D6>Z��f��Z��v���x�-�   {��m ��O(��X���`��b!�45utt�t:��	1�*�*�J)��*�ϫ����k8j2��q��|?<�`0�d2�L&�l6�\.�\.�d2�p8���gY�F���ͦ�ͦ�ݮ���ƿ   ����"���(�a-��T�z]�^O��T�rY�\N�x\�`pc��0e2�U��^��N����M��U�	���/"�)�H�P(���@�|^�Xl+��qM�S���U��t�(  ���u�]�(�am���4M�}�V�VK:99Q"��J?�X,�J����#-�Z-��u��ݭV�h&�^��`0�D"�b��J��r���[�=��ʶm�����[]__���n�{  `7�]�g�.�5��(�~_��D�ZM:??W8���.(���Z���n��z��v���lƊ�3��F�*�J�T**
�H�`p���r���͍�������E  �ϐ]p���"�q-u�]��s��m���p�;Ay����b����f�-�{���@��aJ�������r�f���b���ݚ��4M��m�j5�z=M&Y���&   >Cv���"��.P�i�4M�z=�X,*�me��d躮r��&�����g�d2�l6�ņx?�d2�T*����}<�ڪ��u]�f3������N�NG�^O��	   ���]�o(�ac\��b�P��T��W����ɉ���R������V6������d۶F�������F�Ѫ��b��r�d��+��p8�H$�H$�x<�t:�ڥ)�No}��c۶����z��noo���4�ϟ��  `?�]����"�b>���h��j�P(���B�rY�dr�c`�B��jpIZ.��F�v��v��~^SY�q�8΋_		
���PH�dR�\N�BA�BA�tz+۪���d2Q��\5~��   �첛�.x�(�a��Q���p8�������u~~�T*����>�0����dt~~.˲4��V�]��@��P����޺
��Ǖ�d��fW�U�XL�a|6A>%�q4�uss�Z���p(˲�  �Qd��Av�KE[�5������fj��:88P�\V6�U4����j�F��ᰢѨ���\.�X,4��5�N5�L4�NW�l6ۛ[��X5o��D4U$Q8^�1�I���5�Mu:�F���{   ���]���|�"��eY�f���X�~��]���䓭p��)*�I�����b��l��|��C1��?��r�\���~�������/o�zB���FW���X,�H$�l���qM&��}�z=��}���g��  �� �<����z���\��h4�h4R��V.�S�TR�PX�����'� {��������je˛���M��{T|�{�uW�����O�a���[��V�����ޛ�����.�+�<�d�%o�0o�����j�V?  ��Bv!��Gv�s���g5���h4�l6�H$trr���c��y��$�d�F XM(�q����p�?,˒m۲m{u[�뺲m[�|���J��:>>^MX��"
}�Bu��&=?������ղ,�z=�j5����4MV�   �;d���-��������/x�I�HD�LF�JE���J&�2�ݨ7�_���뗫W_�?[��&���@y+[��~�k~gY�&��j������á��/n�   ��م��W���V|�˥&��noo�a��P(��C�C������}b۶F���ݮ�ݮ���g�w�   �+�.�#� O�"|��3�\.5�4��v��d�N��N���d�H$�����b��i���G���xL�   �<��� �`Pă��f3�f3���)�V�r�ܪ������� �o%��%����[�Z.��Z  `o�]v����x�Y�a(�J�T*���@�\N�Xl�P���	��be۶f�����:��Z�����.   �R�]����"v�7�yMe�٬�Ţ
�����"����x�k��b�P��S����ݝ���ɫ7A    �<'��E<�`0(�0�F�D�D�J���dVG<gb| �q4�N5W�x<�b��b��|>�eYL~   ��@v�.��=�7�Օ�b��Z,S<W"�X�x|u�b1V��	�qV�<f������0MS�i�vg   ����]�P��^�.�^O��(���ˆ�a�!�0V�)���²,Y���Yk>�k2�h2�h<k<�4MzD    [Bv�sd�"^˲������W_���߽#�J���������g����������d��B}8j2�pk9   ���.d�K����dw��B��bJ&�J$J&���b��[��d躮����q�L&��o6�ɶ��&G�q�J   �)��/w��j�ƶ�Ͼ�ݚ
�d�j7)�0cՈ��[ڿ<�s�o!��r<ބ�����[ȿ<�[ʽ��e���v]���
   `w�]���"�'�	���� �O��'>���������[��(ݟ�O�^O�/oB�,�U)   �� � ��"���V�    ���.�����k      �=@      �9�x      ��Q�      |�"      �s�       ���      �E<      ��(�      >G      �9�x      ��Q�      |�"      �s�       ���      �E<      ��(�      >G      �9�x      ��Q�      |�"      �s�       ���      �E<      ��(�      >G      �9�x      ��Q�      |�"      �s�       ���      �E<      ��(�      >G      �9�x      ��Q�      |�"      �s�       ���      �E<      ��(�      >G      �9�x      ��Q�      |�"      �s�       ���      �E<      ��(�      >G      �9�x      ��Q�      |�"      �s�       ���      �E<      ��(�      >G      �9�x      ���S%�A�"��    IEND�B`�     [remap]

importer="texture"
type="StreamTexture"
path="res://.import/preview_1.png-06ff17d6641b7514728403d9e51242f6.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://joystick/preview_1.png"
dest_files=[ "res://.import/preview_1.png-06ff17d6641b7514728403d9e51242f6.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST*  �          Yk  PNG �PNG

   IHDR  *  �   ��̺   sRGB ���    IDATx���wxTם����������:�{����`c��8v���8ɦ���n�o6q;6��l��&�h��6j��?�F]BB���聹��9g.�O�[~/�1ZA�t�; ��yKs�p��gbj6�]�'�`���ݏ�����061��֖��� ��� �O*A�T� <�A0x��� O{{"#BHL�EEee��ňJ�G.2"{��ۏ����@�����d���pwCU��~��̛=c��س��uCٷ{����`G��k=n{\��hO|B"�M��N�MjZ�U���;Ax4�n1&2�VKbҭ^��9P��e���³��e�7�����������m����}HJ�=�]�aQQYI̩�}.�Ћ�ᡁDG�ceeAcS3))������u�H�y?/\]�hmi��dn$�ѽ_&�2c�xF��rr�9s�2MM-,�?�� ? &DG���Kk��ӶCߟD&�1}�8�|111����3�PRZ��˹ث�{��Մ$._I���RXT���3�N����w[N*���=
'gG�2�
22����@.�����*����b4Zm�����C�v6̞9���SQY���5��&ze�L����NPRZ�(OwV.�GEE�% L�<gGv�;�J�bά�,�;����p��9��M)-�Л�u�mڔqx������iP4ȳ����=��3{�Dr�ٳ�(
E���ZMFf6~�^TVU�R��,��=�#�};��V%n��D�s��u�J%�~�XX�q��M�j5^�<�������u�px�g�dr ��EISS�%�d��IMˢ���rrI��!,4 �\Fd�hΜ�Bee�u�]����'��F}�G[=���p���jj�8O]}�����Wp��eJJ�ihh���K*�P\RF��o�n�H��JFf65�u455���CsKn���d2����ʥ���Ʀ&��3�>0��A.�=��P#���*�߸ź����)�z�m�������O1*��u_Nk+�r9��ϧ��%���immIEE��ml��ɤ���G�Ҳ
���t�s���7H��_[#ii�D�������T����DBC�Bo{C�sL��?�V�R�ini�s��x�5��q��H�Ø�`V��Ob�����o@&�+/�>0����E��]��ƾ?~F&�u�O����*u�����@557���G`�/	ד�r4$��<�m�\�z����A.�=�7(���������C'��Lv�Z��ze���������Z�����
��Z�F�E"����q[uM-*�
g'{�r.NTV�t�ﾴ?�

��G�����o���	�F����^y++K�hnnF��b���H*���V� ���~'O��u}
2P���苕���&��9��؄��/���(������ "<�Q#�y+ �J����̜>?�Q�X[���Ș�`��kk��鎥��n��q�R�"�f
3�M���kkK�M���%I7S��_�jZ���f0����O�FMaQ	~�^��;I��=

�JP�Ք�W��녥�%f����y�X{�C2+��{y��Z0�ߛE�g ��		�'3+�T´)�<q,QcB16��CL,��iTD�hn�N��ۃ��'���@���st���`njʄ�Ə���ۃ��r� �����ϋ������$=#��my�E���1m�8���d;q���Z]_��+u�+�����dg �!��m�����ZMuM�n[�R�L&��~�e�455m#Eccc|�G���T*�nJM�.������_�Q8�8QUU�J������{kW����Z����=�'���ۋ���N?w$q���>_^����)$&�������115O��~�;{��# ������s=���V	��	� �@��KL�EUU5��U�{�� �`y����d���e�� <%��O�'� O*A�T� <q�O�UK��/Pz&�f���ed?��<i�<�����+�K�q���	�`�D����@%���J�'� O*A�T� <�A0x"P	�`�t����v�3���ٕ��w�Ā;e�lm����굛̛=Y�=��E�r�fO&3+�������\&c�˫���gρ�R�����F��g��v���d�{�^X����`��+�W���@zF_�<HJڣ�����>����D���\��6kV/d�ܩ�Ą'�6V��ۢR�����z{2{�������  3;��k79}�ʐ�7d7%�{n	0���V�k�Q�����V������>�v~�m��E�|�<X�l*��]{�Z�Yy�����ӝ��J���VwG6�V��'�	��>n��Ƅ2e�>�x'�u����>=a�sK�j5�����R I�RY�pF��h����Z����S���\&㧛�!��8p(�������7��W���HBF�s%>iȦ��A����Ͽ������LP������� ~������cP��@�������nJ@��Y��Qn���ԃ���qt���9�^��͘�R���?�hlb�Wm3�5/����i����9�A̘͹��Ak{�UW�C���g�4!��2��$����z���+ޣ�Y�|.j����5J�j���h��I� :*�QmS�������
`��ߡh���2Ecۿ��zs��;P=J�f�)�с>����g��'֯D.�q��SC��][�@n^^��	���Z��A���������N��GV����^���XO�<F���\^A��D�'��]��R���-���)�d�2����Ν�{��o����x����Ak�7C6�Z�* �N�6TM�1ҵO�
�J�� �յ�e� �煝�͐�'<^��y�?��;�\6����d��I;�Vxy���hu�×;����� ��ɶ=@��ԃ&�o����Z�0�W�?���G����޷U~Aɐ�#-#��zu��A�"<2�����i�3�M*�2��TBN^!u��V�J�惿l����Ve+��/�ӪTv*gan���V p%>y�ڇ!Q���:�����>��!T�	~B/Ҟ��(7�]�����:* o/,-�ihh$+{�Gle�U|�eff��f(�6V�{��U؏�#�V*g.\����tCY�
��қ�	BGJ���>����mV-�˕�$�sgzdei��(w�Z-w�f�5T�㓺ܾ�o���{�>�x�׮=P����j$���CDh 2��}X�}7�E㠵_[[��;;&DG��AH�����gY�l/�Y���??϶)_n!��8��������k��r��˯�ʋ����kٔ�,���������C��7�֖}*_[[/֭����bnnJuMݠ�Y[�@sK���>��~����G�V�a8����T<�J�'� O*A�T� <�A0x"P	�`�D����@%���J�'� O*A�T� <�A0x"P	�`�D����@%B�x��_
��۾t�.�>��	��s}�聳� Jӫȼ�ϭ���9C��~ʹ�x���C�%Hx�����
G"���|EzfΠ�!�a�3�u�������~�R?�ƗVclĺ�b��*s[S�;��nz�-�-��A�t/��)�ƚ����(*.c߷�ڕ>76w7g>����[�r�j"�\��_}y��/v���{C�������%U�5]�UѴ�Q��M�<�pU{��+o�ܖk�-�=ؙ鯏�k�ߝߞ��>���@*�j���H�C�0gQvuq���D�]�U�۞��`��΃�����3�0xY��(P������<B��U�/-.���b^���ƺ<ۇ;����!����0~\8ff����g�r�
���� �f
���֕��
g����˯��I��0�4F��Pߠ�j|�;�Ɨ�eBt[��f��|����d�������^���Qa���RZV·��Sf�T�O7��R��������d<�j��E�E��;����E#�=���S�12���_�'��MT*u�}��v7-K�O���~�R~��7���*�I ��v]/H�kQ�r~�u��b:~�<��V-�Ohp �l�MmmS'���77��Wⓘ:y�^�Bb�]�G��������_RT\��������W���� 7������������a��K��^Z�
3S���k���P[�l�<���?o����uk����U|��N��?B]]=!���nս�/}Cp��J%���
�Ͽ�����z;:���۶p^x���2�������\����s�(�9�UTq�TU�0mJ4�גqv�g�[[�Qc##B�����������L�����n�M�s��FF̘6�=�r�N�%e�_Z�e�ҹ�x{��Ovt�ֺ����G).)������$"l4�&&}� ���}(�pD%���7�jp3�:8�@.�uZ7��/��ՉںzRҲFAQ	!���*���f��h8u&�����ܺ�Ʃ3�H���s���v��2rz�^�Odx0}��OIM��062���/���XI%�{��RX�}�����*,Ǜ��BZ\n�e�C�(Ϯ�{gd�n�I�}���'�l�,~Ø�n$�F�� p��=��3&��O^����8�C��n =�pw%�Z2�������*U������G_P[��-�n2�
�@�'~��C�h��M��/�ed���XL,�;�7�0f��c���s��e�*���п�a��E�mgo$����
�������^٪�Z���~����&낟F�A*���WT��h:����'/�}�H��Y����S^Q�J���a�5uz?j������WAx���p�d&y7��v�䥿-��'v�Xؙ�?ٓ���k'K�ns�T�/�lU*9�*Ϯ^���(�Gزr�<F���.�lii%1�K�B�T�w�.NDG�cgk���~����W�R����ft�/�6��X[u�v��֬^LP�/Ύ����Y�r۶�c��hB�t���Lqwu����8�T�8u�kV/"2|4�#l�5�Y�'�xz� <m|ձ?Ų��ڮ�Z��Η��\/�����]�C?�T����caaF^~~��ޚЕ�$���˜>{Iw�M��2g�$^za% ��|��i�'/�i����wIL��g_�����o���Elzu-&������9���r��Y6�������>���Ѻ2�����[���u�-��Ҝ�zW�z<}� <J--����~�$�AZ7���Kv#t���G��Bs��['2���w�z���\�?��C�����?��?��S2���oA��7��L�����������]�*�K��Ԭ��}�߭}J�$	�FF��Z3�ӝ3�/��������"+���_� �ǟ}æ��26"��I����>��	7ni�=�k+K���p��->���^/���0��ƚ7~�"'N^��+C�UA�!QD]}��W��F����H����..N\�|�s�)� �aQ	� <����XG�'� O*A�T� <�A0x"P	�`�D���uy�ge��N��c��ٯ��^�nlb�НA訵��w��S?A�T� <�A0x"P	�`���1/� <~���Y�t�^mg�s�8t8��~��(�����l�66)j�ɍ��U+� �J)��|躞f2���K���LN�x����-[<�7�
n.Θ��bfj���33�OD٪$-�����j%�6z��k+��s�=��9}
~�^z۔*_~���%##����;��=�v�$\�9�����c�QW�H�Vs��̛��(��G��כ�k��T��{�q��:9�gW/a�e��f��9t#�M�rrH���{����|*�j�}���;��4����t��1jii��S���T�£�t��){|Ǒc������ukW�t�����Y�Z�����v��@eUU�}3�O����ȈPr�
�9u�U+�p5�:�ޣ���")�67�n��`ϸ�88�#�H(**�B�Z[�Nӳj���剓���J��os�n�^��ڒ�dDGE��녱�1�U\�����>L���T*eB�X�|��E\��@sKK�Ǩ��B��wۚT�H�A��Y�v���Pyd����_��Ԕ���NS�I�QXX̑c1466�lU��������e2�ΙAX�h��0m�1g)/���݅�sfR]]CqIi�m��ȑn�:}�Ʀ&�X�`{���������H�9|�*��ɓ��6u"1��u{�r,a��gW��ݖ16z�5��0�7�����7?@vN>��^p'\��������ں:��ܼ|F���XOVV.�� ���O`��^0�ؖL&#88����SRږ6>>�#�
�'1�ր��H&�<:���NR]�6"�v=���bdd�R���}9�0X�s����~ S&G�5��5���
:���E%��99:����c**:O)TWߠ����O��=�eme�L*��R�*l�H�YYY"��X0o���$�{�,-���z-k �B��� 2<��V/�O�L��m;}���a@������n�T�V�)-��Y�p׮'s�l,���18:��X�L���T��z֎mI��n� y��������46�O����|�@�� ��lv����[���+Y�ve�2kV/&%5��М,{�W�k�Z$I��F �H�u;�F���U�ﳳ՟9:�S����+�uu��jFt�Cu��`<��;���G��`ee�BѨ���9;��AL�=����_�'ޤ��Ec#I7������"<F��ｅ��Ő��H�L��o��ݕ;w��j��F���e2<=�)++��s$��n�5��xz���כ��2<F�1�ݍ#�bz|�J����4&�����EcA�~XZX��r?U�@��H�Vs�N
�G��h������{�Ď�h��B[zF6���N�S�2��/���Ý_��M������#T7o��q�T�<����Μ���\UU5	ד�>m"2����B.�^"(п���o���כiS&���¥����'$�Vk�3{&�&TTVq��i�[�O�ZwG	ד�S&EcjbJSs3�\(��1ȱ�G����������~���H~��7��7Xu�)��,�{pުKHMM�NJ�cU� <)��,���~���9�������r�-�����[��'��>�d݂���o����SSS�yi��
T� ����N���<*A�3���БǲnAz'FT� <�A0x�N��{Ka(t����Ta(��� O*A�T� �.ר��R��,�0(:�_ܛn��Yو�	�0��k���SL�A0x"P	�`��t�����P�C��HQqωL�����j�3;'�����jO��At^^XYY`ee����C�'� O*A��<��eʤh�.��ᣧ���G�ÒY�8����Aoc}m%&���;XYY>�~=F�L�4�7~�23�M���+K�Ƅ1a�����/(B����;��J���>T���z~ܰ��#&&�@[��=��4�Ȗˍ��O���-@-[<W' �K�8|� K���ŉ���e����ѓ\��@w��Ɂ����5��LFUU5q��r�ʵ�p�6p�z�	�}~OdD�.���t�����~BR�mN�:����ֆ_���x9�������A����DGE ����	h�m�/^N`��qzkLD���NuI$���),*a�;�j���:���u�־�y�.EE=�F�(xt ��5��~�&��Ft
T��aTU�8H���+<D��� �N��VK��I��zxO;kk��l��󝔖���:LU�rK�cLD&�&��W�����7��;�9|�ᡌƙ3�Ĝ:Ǆ�c(������\��@xX0��#inn�̹8b� ���U����ӹu;�/����Gb�M/������^�1��\����H7.��ȑnH%R�3�ػ�M�-�~�����`nnƦ�^��ǋFE#���w�j�ǹ�8.]2����hђ����P��R�8~,3gN�������7�9r�d��	��T�����Л�������|M�    IDATƎ	���S]�Y�h���f�A��kpuq�KK�r�b�22���ϩ���⺅f��������/P\\BfV.���KK

����U�Ԓ��Gdd�.�8;9����W;������ٳ�r#9_~�ӧp���:��߾�3}�D���������׋�]Aqq)Yٹ�|�9x�t���؆�U��UKx�ٕ|��.�Y�b1[�~EIi��#07�>)���@��~���ҝ�kX��Vk��oX��3�q��5�'&���
����ɓ�پcwS�t#�v�5�<t�׶�o�Fk�i�ܼu��Ƒ����+�o$3g�t��A��1���Q^�v�iyE%��o<�u;�A�/��K=7o�%�� �]O&xt 'Du����L��?>�Rw���8�;o�c��r$	��-(M(b�P�@��$�]J �R<S&E���TKNn>��?2�)�ǳp�l�ڹ���F��C&��_��'==�O�TUV�.--'xt@����|�U+���IVvc"C��[���̚1''�R)�ff���}��=8�+.)%8���3��###^۸-mSs��#�l)*.���K����II��B�e23sz��0�D�4mk��
�FVIɷIJ�����x��U��������*U�ڐ���ɥ��_�����ݔt"#�P*U���r#�& 66Vl޴��'ΰs�>T*5����ý_��k=t86�.i?�[�}E}�������G��$��U�L��k�w�*G����Wa�+���IQ@�󇕕����	TUU��h������8;���NEe��F�E"�����Ʉ��&4$��,���sC"�r!�*� G��?۬��89�_�����yTYU�J��~�5�uz?j�FW����#Gc���N�O��\.�w���%� %\k;���W����^�V���.���:3k�|�=qvv$(Џ�fs�nZ-��*�r�:˗.���G{"#B073�w�C�����5�&�#(Џ�Wt����	�����
k��/��������G������#��ѣ��0#z\$�~��g_�	MdD66V��� $8P��<H�Tq!�
˗.$4$�v�xz�3e�x��"�1����Xcnn���'
]���������E�E�e��vY��:��n�Q�T�3k�TLL�������~�9�+���X�t/�_���1�%e�gd���g��1vL8k�Y�B��������\/�_�{?�۷S����.�Q*Uܼu���Pn�N�m/*.���Ӭ}v%FFr��McϾ�L�0�_��k=��9���x��U466q���z����?����+�`aaNC�B7m�j�L�2�gW/�ׇ��jw�u	����#H����Ey�z�"ϣ�D�ޅ��-@=jﾳ�+W��x�� �Eoϣ
��ޭwu��3��v�LW1�Ĵ�KAĈ�!i�w)Aw%��i8w��W���ǙT��=`�]�z}D���� <1�z������.�� �O#��V���GkK�pwA0 �&�DbD%���J�'� O*A�T� <�A0xO\����:ƍ�n����:Ə�:��08>���,Z0o��!�>_���+)+��ĩC�B�pr����K�m֯&�f
��wzxg��^����@;C�������f�����8��j�O����̴����5����˛��oɹs��97���'���B��MMm�޶����tHf0Xjj���,-,��I}����?��_c��{u��ڶ'g^��@vn�ω��8P�e2�ΞBXH &&���q<�<�E����HM���+��a!�,Y8�������L����%��M$�J��8V-�OxX�sj�O�&%-��{362@�:�]QY͎]�hP(��(�JY�v9*��o��2�^jz�Ɔ�`?B���A�g����,��>7���)����ϫ�ɜ	I���O���d̟3���@�@Ff.�O���������&
��:m�3g 99��ɿ��&��/�����������V����\��/������j!1)�m���=����?z��c"hnn����ʾ=3^�o��e8:س��=46��B633c��稩�a��C�����F5g�d�|�س�(}��ܼ"^za%�ff$�J!$X?�� _R�2���fт|w�$�p{%'� �o�;AFV�c���|��l{��)��p�p�l�E�ńNA
`��9�����.���K��&2|���1���H�����{�� �M��ўm���m�^��:=�|��I��9�m�>>ݺ33SV,���O��7�t9�͛^`�hF�ɖ/ X�����z��~���aii�?y]��W_Y��Hw~����߾�HwW��<��<�l�������W_����-1fff���%|�Gaei5�=�o@�J.�3~\?�<On~!U�5�<Gm]=QcC�u;��8�{𾑑��^ܺ���=wZK+�MM������rFr9�Q��9OzF�U�׏�0{�$<F��k��=f<�H$$&�%",���px�t��؈��<�$'�}nccc�B�9KqI�U59v�F�WG{��+�����̹Kxcbl���`�fL�]_�~�}�]����F�tg钅���E�~����Z���X�`._|�5������D�������L�2��v�&+;��>���1�f��C�������k_���333^}�E��\(+�`�����M`�S?;[kd2)%%��FE�e89���AAvn����U��3
�JEVv>��KWn��+ϑ�����Drr�ܶ�����K�-��;��@v�9ܧ�TzfR�_O�3sBb��N���>���R���2ݾ��V���v���Y�v�.D{'[[kJ�*z��!K�v�]��?g]����W(|�����;$\���؋ 8;9bll̯�{���/��G'�j��dde���jjn�6��=�B��Ͽ��W_��Յ�6��F���ݕ��
>۶�����+z�d�����%�La�	�:{��A��M����;y&��kɌ���˹��D��>�ݗw.Ύܼ���ٓ���C�K9�FC�"�G��WH�h>��u�r�}���u�e>�F�^f��C���OW���J�h$/�o�x�Q�����"��Pk�H�j���TW�蕯������立c�k
��϶mg�kp������-['H� �~�U5(��N��\�)�h��v75KKs\]�����m��Ym]=1�����wL?F����U�ԡ�h:����K	|w�$$̟3�O�)1�.�>D�	�������~:4-���c�e2l��u���kQ�����PWߠ���<=i����X��������+W.����R���#�UUz?j���
4�<=tuɍptp�)�
��-[�$?����"�R0��R�$��M̛Fssu�D�	���Jw�������LfL��J�&'�-���\���+D�R��ᆢ�I7ꨮ�����K�Z�.��m_O�͂y�P�T��5���HfVM���˩T���mXCzF齤�.-���������ݑS��-��ܾ���9S�VCKK+S&E�%�T�T\�Od��i�TjJJ˱�4��ՙ�	]��{�H����׸x�*�o$�Р����%�	�����ȱ��a*���<lm������1457q��U^~�y��QM�M�X�##���汢P(�����ݍn�_7�t*��5�,��Ԅ�rv�>H�kɷRY��r��'��{�Z�ɲų��K��w��^ܥk�Y��������L�<ީ�'c�?wϮ^���e�de�w*WT\��ث�X6��?���zI�Iw�3s2wR2����8ǲųym�Z[�\�O�nj�^��^F��%�fanf������R{�ۓd��9�����> -=�����������]���6��kk+jk�{�ୟ��m������9r�W�^��#<}��mW���q���>Wnfj�/��Gl�r/�Ń�aax�'|
��>;�_�kT�c##��psu���g��|�����@<�X���q�ganƿ��v�ݝ���e�T\���+KfL�@ܥkh;��A�U������Vo��7�[���7��p��;� ���bz���k�}�̀:#�Е'�yT� <yD����@%����
��3�
�� ��A0x"P	�`����/�^?�Z�Q	�`�D����@%���J�'� O*A�T�d���?.b��������h��������:��lZ���霏�����ڊw��ȶ��L��� ��9}�R��i����r��]����f�����x��B����f�M�@ss3�e�Ĝ<��Nsτ�]���[�D�u
Ta!����=t� ?ojj��������)PYZX��5��q�`�r5��v~���)��ٸa=--��9{~��&<���n�2g�d\�))���<4$��[)@[��s����������r��������1����u�ys�֖�b��hRҲؽ�p���%e�9OaQ[*�ͯ�#�T,!����{1�si���,ƍ��~�^��� �3rpws�?(��mfjʲų���Uɕ�$�l�}9O���fJJڎSNN.�~����*�\��/������j!1)�m���^�K_o^x�Y|}��J�$߼�ǟl��Q�2l�V.����_��t|���X��9jjjط��0��>�Q��Փ�_DXH�n[["Qn�n�G7g�$�ݜٶ}�nݍ��)+��Օ�;{
��><�'[w{1���o�;AFV�c���|��m9��̚���{��Ow��W�K/����~J�E�g�T��b�~n$�O��Qssi�D����>&<�Iw���S�����y�qt�g��}l۾{;\�����x<-�J�^��u�?���7������������u����8y�,���_��_�wwW�/]4]��X[����믾����[b���xm�K�x����j{x_�ӓo��	�6�+*.����\NtT8�cη�6���̹Kxcbl����3r(���q=H.�3~\?�<On~!U�5�<Gm]=QcCu�j��9v��E���w��Z"���t��� �����1�cc#2��H�޶��1a�Ĝ�����ʪ�;�F�ѫ����4�J����0ib4�qm� ���X�`._|�5������D��ٽ�nE�%\�Ouu5���\�z�Q�<zjJ���QRR����m|sss���x��qss������w7�~ܔ|�n����Í��BBC������5FFr֯]�K�%������F�� �I)*.�S[v���dRJJ������0B�:3;���'=3�T���'�9��!1��.�s_۶��B*�R\R����ڪ({;�e�ˏ�8�6u'FcldDsK[�n'�b[�rvr��ؘ_��.�]"m;.�N��������KpwsC*�biiAVV�0}�'�B�`��_���/����k_D�����Jyy�m�NCC��G�ρ�����BCP�T��Xs�޴��K�c�!��z�S(�����W�d2Y�;��T���u��hH��Bd�hr�
	��'[��w�ퟵC|�[���x<���૝����������O>+�7�}�P]]�����:F���w�}�������*����=����#�O�B�g۶������Ֆ�W�e��)��uTɷR�KP�Y9��TZUյ�Tj�lm��o��Qk�T�ԡ�hpuq�^�F���QYU�R��T��ՙ򊪎o����5&��2��k;��횚:4-���S��e2l��u�{;O������ns��	����ɍ ()-E�T���HeU�ޏZ��-�9�*�
 7W����B�`��/��/�������3P�e�`d$'jL(7��P�T\�Od��i�bkc�Hw��J��뉷Y0o>^؏�#48 3SS �k�������+K�J%	�o�`�4<G�akc͜�������Z��*-��������t���[�-��ܾ���9Sqqv��ֆ��g `A����س�[�M�Y��J���9v�W6�c|t�������.�,/���Ȉ��H�,-�5s:�a���
���?��G��������y*��;)�p75Ko�鳗�jaɢY����hl��T��'c�?wϮ^���e�de�w�kV/�gol %5�}�s:�J͚gcfjBqI9;v�W���H�Ü������m���>v����khmUr9>������{;O���>�����?q��U�srٵ{?ha�k��������m���������166�ڵ���Ϙ?o�0a�I\=��n��z��R�����-��L<�S�ޟ����% u�$߼?�������cbjFwĽ~� <�A0x"P	�`�D����@%���J�'� OdJ��Qg�#*A"P	�`�D����5*�_Ľ~<��J1����@%���J�'֨�A����.C`���. bD%�c@*A�S�6��n�,<�6�i��5��+���㖖V��kI�v�k����s���ԔiS�	
���ʒ��V�K�8s��ʁ��a����~'%�'c155��Ǔ%�f�R�H������fflڸ�Ve+��\���s3��<�7�B���W�jmURS[�PRZ���A�$�La���9KH�?a!��^L�\�Ud2��L%<4-������iljK=ʔ�QX[Y���D�TN���u_o�����l�l���hmUr%!I/�qW�̚�L.c�g�hmm�m��ɿ�d2�ΞBXH &&��F[�),�:]}o�;n� ��P�'��j���t�͟Afv_�دKe>g�$�ݜٶ}J��%�f�b�\v��{;-���])+�b�LMM z��[� �M��ўm�ۂΌipqv�v�'�H����+zA��9�&���Ş�G�oP062��^Xɇm������	�p߀Ӎ��	 d�?))�o���s��9
�J��o@.����m��k�8s��ޘ#�ˑH$4�����DAa	�� ���^ccc�B�9KqI�U59v�F��g�07��ĘҲ�n���rƏ�������/�����g⨭�'jl��w<n� ��׈*",���@d2)u�
bN�r=�nfv�^y;[k���_���m� [[kJJ˹t������\�O$'� ��}�ի�j�J���������c�J��l���2v���dRJJ������0b��;7A��+P��es�L��&���;�W��׀ڃǎ݇:Mi��i��3q�_Kf��p֯]�Մ$bN�����z��1��5�E#J�
G�d���d�n�Ͻ>�|��&��~M��[Z����2Hu����J���u�z?j��/gm]=1�����wL?F��վ�ꭩ�C����|?-�\&��ں۾j422s�8ary�񻲪�R�����v7Wg�+:_���� tmH��S�T\�Od��i�TjJJ˱�4��ՙ�	I8:���ّܼB�*�n(�P��=�z������wә?g*�*bhiieʤ(��F8���6m\ˏ^}�q�TTVa$7��ɞk��Q*�$\�ɂy�hnn�����1��X[�p�f���[^���Mɧ�^F��%�fanf������R���ل�H�-���K}��p��z��؉s,[<��6���U���D��_��JeU[>����'�p�t��Limm����k�mkq1��P�Ԭyf1f�&���c�A;��HyA:��zi�<�6�bec��[��YwO�OOx2u��ޞ����% u�$߼��W_[IW1��Ԭ����{�Ax<�@%���J�'��)
Cy��d#*A�T� <�A0xb�J�G�!W@��Ax�@%���J�'֨�~��^?����*ňJ�'� O*A�T� <�A0x⬟ <�,�����d�v��}6W���)can��om��{>ޣx��MX���Q}Q�^���ж�k4Z�M��p!.���J]��W�t3���;�U��B�pr����K��]ap�����D��V�!��>�|J�r����kRn�.� �����om�/�b�#�~���d��}��[vr��i��Lٴq-^�F���Mͤ����Z^��w�m��]aplzm�Fy���o�����K�w��x������A�ÿ}ƇL_j    IDAT�����\]��O_7ؑU�֨Z[����P^QEjzϭ^��%s�����j�����ͯ�#�T,!����{1�s�W��d̟3���@�@Ff.�O����-��\&c��)��bbbLEe5;vbޜ)�����O�&%-��{wj����K�8s�¢R]��&$2ڟ��.��*�v�g/\�}ި�P�L���ʒ��&�o�r�L�@�� ���2e�~��?��і��m_�����;����2�=|r���Z��\(.)�ÿ}F��-�������ڄ��+��������a�ig��~.�*?ٴgG�Kʺ,�h�2���b�~]
�93'���̶��P*U,Y4�K�k�� ̝=�@����g'
������M�:�3k2~�^����c#Cx酕|��v]0�?g*��&/�^���y�d��`oǢ3ر� e�U�a����������H�R)�ٺm����9R����R�IM���/w�@�B�_�����G�V�P��y�@UYY�V���ֺ�@U[Wϱ��7*�Η;�R��9w���<&��h4���ٳ�(�9 �J�.��?.�����_�eA��E��P.��p�n:�ym��K�)(,��͙���r9���V��h,	C��e��T�V�)UJ������ƞ=�>ٲ��}
�h�#�M�<t�Rk4@�{w2���^��Zcd$g��崿K"� `kk�F�A&�RT\:�>��Z#�I))�_�**.����y\�׽���,,;�)�	�&��.���M����I�\oo�>O��fk�ޛ.�>io��fU�����D#�E�M@Ae�``��dtd�2����5�W��;�����/�ߙ�2���������F�����B���b��OP\RJ��s\)����#ܬ��O@r�z!-��|�y#�Hhhl곌Ng>��J���6M������r��>�d��OJn|n�׭J���&��g��Ŝ��&��X��--*���drӨ�Nn�B��E�b����V,��|�{�7�����VRSSǧ[wX��}��}T$̘6���zjk-��546����pw�E�j���46�`0���k}���T�w����ju=���j
	]��ԃil���&��?
*�z�NGXX��XDDz���ק����T��o�{�BHp��i�m͠����n�x{y��˖2��{`�wHoN�ӑq���L'*"w7W��1a� �Z-g��3�tB�G���Alt
GG �Z�����s���Z-�gs�?w:A�pws%e��\�d�͵��>ޞ��D�tA�p$hD m�j�6��8Th4>���%<<��Q�^���i�;�:�ݴi�禭����}U�6n�n�jPS��p������Tm\�Rƞ�ihl�<�����I�H[��ܼ"����3o�t~����쨩���� ��<��-��������_���~��4t:=���a�TVղyۗ��[�a0a��=�t�Ym߹g��)��q�g<��
^��H�p�t&�7|j�n��Z��x���x�'�M���H��U�|7ЖH�GD�"�V��t�R�[&~�s�sqv�g?]���/ �U��흏������h\�O#[T�����ƈ����b�������w��ӽo��2._)t����	�� jmk��}��ݰ�Q	�`�D���@%���J�'� 6O���^g�#*A� �A�y"P	�`���0(�~���J1���@%���J�'� 6O*Al���' g''�e�3 �f��5bD5�]�̔�BnWwB�А��f��E����<��2�����d465s*3�3Yy �\�ٹ���9?@K�Vlt�|��M�~;F��|�b�o���k�w�5�7>��<��r���0�>z�-[w���)
֬Z��q�������7��i����֬3�)+�����fGV��$HX�ԣ�n�'�|A��l��;Le
�J���������'&��Ԥ"1!殾��B*��ү�/Z���_����[$&�a��O�ʬY���#G�o�o��-��"y��������ċ?Yc�u����3��z��V���ʢ�R錻��-�v�x�WT�����v�����y6���H��|Pwtr�H:���YSP�8QS���=���7~�:2��y)ӈ������o�Q��j~�x�q]�.fLO�Kl۱�������qb�G���DE�Qt���e��).&���歿~���|~.�ND����}�`�\��?J�Fc:�v�2Nef3z���h����3{{-H&2"�N���S���򤼲�S�ٽ�{�wͶn������4����_�Ο��;�l݁D*aꔉ����X\��y�_�e��tj:���!��g��GeU�Yj�������t���<��R������Ӟ,
T�m�����w�OX�x��l�l7��5L����ɔWT�ɧ�P�;x��y̟;�-�v�:)�&�ˆM;�ju,\0�G��g;��_���ى���S��fRr��O6�B�jC�Ւ�kDFG�Qx��� 0&~4�5u3�m*�1��p�y)��l���*���f��'(-+�r�5 �ϙ����lޅF�e�	DE�Q^Y�����5�:gg'�:7F������
D*�"�J).�l:_TT���AA�M�K<�^Oхb>޸�,�LwV��V>�����f���`0�}����F�/��b��8�����"��1r.� �T�Ɍ,Z�������������r�'ų/�(�u45�p��I"#B�_s�����P^QM�����xy��;� ;;;F��w�B�m$&Đ�[@Nna�ӿ������c�HeU-�ʫ�ʧfogǘ�(R�;NyE5�u�s�A�ƾ�N��5ۂҲ��z���J�P(xv�r$	
G...���M�U Z��Z������}_��M����^Sc����λ���MV���,^L�z��������0&�C�����7��Ao�ndP�j���kjV�8��aoo���x��bg'g��Ŧ��� wwW�k���[��2���6.�^#6:��:�CG���Lٙo52(w7r�YN^�fL�w�����74���h������L&����t��Scv����k�mmm����ya�J�Y�Z���;� ���}�`$�7�lΠ�Q�.�_p����X�x��Ά>��t=������L����m�Q���J����^�����2k�D�;|��Qa��ډ	1H�~�U=�����׹�����t:]o���|�k��gΒy�,NNNttt<2��HEE�''2��4���ۡP(hQ�X��Cۊe?b��w������X��Jjj��t�+��o�{UiY9�N
$V�+��،N���ݍU��Co�
F��Բ�,(*���	?F�����������p��{���m5=�;E|l$r�̢�kjj�`0��� 2�w��G�\�P��ގ�``Μ�����PSv�Z����`S���0�z=W�ʭ�����R�뾩�-!�A(��a�5}��|}�:9��#���$<l$ɳ&s��e����r��t:2N�c���DE������@?�͑�M-����U��Ź��4�E%̜6�Nϕ>>q����;8��OMm��q2#�L��p��ߩѐ��9�S�ㅛ��ys�aog�gK���yyz���J��Ϭx��&���@׿����xa�����1*�իVr<-�t�P�~6m�ܴ�;Xݺ�j��ϭ��^Y4���t�
f��$���Q��QXT¡��w�:x8�.����v5�yE��i'���cx��+),*a���m/'���O.&�tv��ډ	1d���`4�vtv�}}Q=7��׺�ڛz�E'�湥h�:2Ng�m�k�u͟ã��]�����W�&�e7�7n���[���	N��d��O����Ck[o�}/�d�i��پ���m��D�1 (��`EYJ7/+uɺ����/Xu���_XN���[l���ϡ��ٙ��t�~]w�+����;*H���qѸ^�F��Z�ɽ�Us=��GE�����"*"����]���]�`o���������ѽo��2._)t����	�99)P�83s�D�N��gko�'���EEUu`$e������c�.jmk��}��ݰ�T�-{b1>�de�'�L�={ݎ�NfϜ�����@Ee[��F��AxЈ@uݺO�[�u��ϓ�m[�8!�F�Q	�`�D���@%��kT ���� bD%� � 6O*Al�X�E|�O�{�V)FT� �<�A�y"P	�`�D���@%���J�7$���ˆT�A�,��Q=��|�c�~��`0�֮�J�5��������up �!,[���s��������G�@
kV�d��D�F�Od��Ǜ�괽��0�ǖ<BXX�j5��Yl����J� Ԇ����?p;;9��LϚ疲e�W\�'c��TZVλn1;�46���>�]	ֵf�JF����_H$~�v5O?�$>�i��ё'�x���������O~���W,��u����V1�@��hij��V[[�@��K<���,^��;�m�h4"�ɘ�2���H�@qI)���]���/�ߗ�Y�	��T"���|��wttv]Y`=�̨�`4-����}'���h�Ft�n$&����������r��9�S�������ʪ������Z���&f�(����h9����c�v�.�2���L�2�����K X�a#����l��NM�Y���~��o͎}�z���3�Y���5�#�O��ᆟ� )�&�ˆM;�p�6
G}d��|g���Yy���V>ܰoo�LJ4�h�||�ذi'6�������@$	Kͥ��������S��]���[(-��駖स��g^�4����Oo}��Ͽbڔq��~���K�LЈ�H�R�K.��cggGP��~j����Amm���`�n;P��7b4�pwE.�3>)�}�G��k����CGN���}W��F��jm����¢K֕C��ޞ��R�;NeU�M|�����.�L�����;��?b:&�˙0n�8J��r�8p(��I���r�)-+ǈ�ʪZ��W�kjc��,���B{���F�
�N�Z��ͭ�T��<==��<�={�O$+�_n�K���A�`�
Vvvr�/]lJ6%�H pww�����~L�����'R���#U5]eܔH�R*�?���]��u�~xyz�<s2;�؋Z�a:���L&���<�pEeü=M�����k�ZS��K���L�oMg'g^���9p���"!ƃ���0o$	�M���m�Q�����qU��̲p�H:;�܇^�g��I�7>��fR�o���ޒEs�/�H���f�d2YM�����]�`��NN
d2�iTe'�C�PТj鳞��3���+.\,��O�ݫ�
6ⶦ~$̘6���zjkhhlF�����F����7�ХR�O�3//S{MM-F|}o����d���?%�2)77%�R��8W�ЄV���o��� _j�,�΁�K�\��khu:�M�""����\��.��Ņ7~�E.�����,9�`;5�����ݭk-��˃	��	�c��`ĈN�#��9�ϙ�N����'�}9��MS�
�\FĨ`�^�"rT�A\�~��S�!��"�R��E[*���NNB.�{T������8x�$�JS�{�ֶv���d��e���tttҢj%il,n�J2�Z�ht��,��h8|�/�~��?܀T"e���OK7����� 77���v�T*y�7/���ȑ�i����ڪ��B-�>����
G�7�R�q�J{�����T���t�FX�`6N
G�����PU]��#�<��\�r.^f��$%ƙ����E'�j��h4Z�O�3��w�ȈP���R���;p��Od�z0�N��?|���U�l���i��%��.ap6n���[���	N��d��{�d2�i��ȑ#9rc���y�oq.;��]����(c@P�����"�n^}Td�>�>��M��U+9�7n~����-�88*�ː��� 6�A�y"P	�`�D���n�P��˿4{��߲ROlǥK�.dbD%��#*Ꮀտ��y~ͿY���ĈJ�'FT ���� bD%� � 6O*Al�X�E|�O�{�V)FT� �<�A�y"P	�`�D���@%���J�wG���˘0n̝lRap����L�:���P\�.tvj���a_�1��-K=u�E���l�^�}�����	 �}�y&M�S+VY�;���8P9)�yn)�������g'!�#P����ZJ��y��-fǒ����>��	wW@�?������h��C�Ł*e�dr���D�ј�_�r��:��$ϚܕxT"���|��wttv]S�̳���D��烺��CG��h4$Ϛ��ŉ��v�I����F�3�D�gx���Nd��G~�N����z�sO7b���oM��2s�������Q�Qʯ�\�z�2��=��~h4Z�d�q�X��]��+eW|l$F����}���.���ͷ�))���񊵻#*�DBl�(�0R���p6+������NƓ�?I�<r�T&y�d6����&ML`��d�+����]��<��<�ϝ��m���l��Մ����Q]S7��;�{aQ�Y����S��]ߠjm#1!���Z���n2�y)��l���*���f��'(-+�r鵮6fM&0���v���X�`6�>2��v�����A���� a�C�E���N
쩮�T����/,F��JCc3�E�6�<_`���TTVc�ȹ��R)'3�hmkCoГ�W����Y���(����Ke��46v��L�����;��?b:&�˙0n�8J��r�8p(��I�7��/�HiY9F�TV�r���� _S��ٗz�ں��[8t�$�!8���=�'�FTR��xf4���~L�����'R���#U5fe�ndY�ju 45�n�鰷��@mm=�B�틗��3'�󋽨�����dR��j��WT�0���������F�5!wW���,_���w�;ӯ���� �,
T�m�h�:|�=MS���*]xf�8t$��_�C��3{�$����t�uC����̞�i��|�)�h��޲[ں�b����}���v�R���kkkT�p�,���KJ�4q,r�e���ÐJ���:�^��!�����=������10���[F<7�2)77%�R��8W�ЄV���o��� _j�,�r��،N���ݍU��Co�;�	�`�7|8�����t�.hx ��z�45���eD�
�I�`l|4�Aw�ӑ�B�����Uɸ�8��Fr&+�ײ>ޞ̞1��SY�*]��ez89)�j�d��e�����͕�YSpsU�y6ע��t:2N�c���DE������@?��U���'�74���ۙ5c͝�B�F�����3��{�������t}d.r��/�{���n��i�g���b��������W{���\޵u`^�4�s����LR����y���pt�����۾4m_�������p�l�������+������D�1 (��`EYJ7�>�X����8��ǩ39���I�§ ��g|\4�J ZT���7�S5��[�qpT�����R�M�܂ ���f��"� 6o�e�y�VkwA�Ehh���Ы�^����7����z24\�ty�BV FT� ؼ!7�l���%~~ͿY�� FT� �<1��^g�#*A� �A�y"P	�`���0(�~���J1���@%���J�'� 6O*Al�T� �<�TkW/t"��S��/�a����M̟k�nC�E��_�,gƴ	=���*��+/2b�?+�?FB|�E/:���ֹ�|lt�3'�5n�أ�y���G2��_���Hl�HK~�ıcع}�����>aQ���+".��2.&����^��������^j��k��0����#�o��ܚ�T�GggB���j�{��<���:�̲vW���E;�s�H�=?_�`AN^! �	1 ��I	�L����҅�v59yE8��kY �B����H����'29��m:�[���|���ו�bƴ�^�������8|,�T'.&��Y�h�  
�IDAT�歿~�N�3Qh��K�K���˓���H��Gq��
��Y��2s�����=�U5�K=JyEu�5::���dF���h���6%g�&�u���������o�Q��C#㲛�����/?�ɿ���ͨ;z���/����k|�e �y�W�������X�l)#G���3a�!<��A*�����{����������T�Yv��������ya�JV��)3gNe��xyy�Ң���l޺��!6�K����歟��n�GW�P�|�455�s�n+���FT�-*ʮV���|�=���&7�g�:o/̟�W{�7��?��JY���'ML�lVo�����1�tF�r�|��~�/�q��i����l۱���Bbn����
��BI�A
����ŗI�mv|l|4Y�������̞BxX0����w?�BiYO?�'EW������ǋ�v�a���<���1oc�d|ٰi'�߆B�ȣ���^�5̚9�+W��8�IScӦN�l^�y�G�H���8����L�b����+ @�Vs�����_�W/���@?� ���Ҙ:y�Y��&������f�sO���ya��x�/_p'/{HrsU�������Wb
��{�А�(]�V��/������TUq1�TT�PW�أ�\.G"��ѩ�]��Zy�%���_PX���bZT�d�RXTB���A^N���/����0o ���L��}֑H$��.`L\RI�[5b�?��v�\.3��%�˙0n�8J��r�8p(��I�����A�wǩ���������`0��1>)�}�G��k����CGN����{/�=v���N��2�ϲ������� t�m�s�^�t�:::LnnW�ۊ�*�3N���Huu5�N�a�� OK' ���A]ٸ��0��i����!�HhkW�jm�bq	�E^��vSUU���0V=�'''
�?��� ?jj�ر�Kkwė�����Y���j9�1���������Y�~�	�KJI?}�+������^um�Yg�jm�r�5b�#���#<t$Z��K���[�b��R)a�A\,���11��)�x˚���+2���*�iEeü=qwS"�J���1���hhQ���ag'g���t�.���]�����w�����0������<��
AYY�����R�DE��Y���ё��y�<777�j5W��0*<�%�.$0  �L���3�.]����ܼ�L�:�Ҳ2��h4���7����������:�����'��Q������OY��3�����F����c݆M�����=`q�Rwtp��
�1hu:��\��e�����4N��a¸x�/]̩�lR��Y�{�v�����[Ȭ����	FG�QPXl6���` '����є��3z��	G&��R�:��pn�gp�Uw���v�R���kk��5���H�R>��m��sRf���O{�7�?_��ёh�Z�e��j���'!!�������෯�Ķ�������N�c�?dTx�����N�ď����L�8����]�������<4�W^�{�Me�{�
��պ�X�j%��]k���u|��v�rUN^!�#È��ҕ����׫�EE��4�l��I���a���0{�;̛�Ʀ�tό�`@*5����\\����aTx0y�}O�nv.��ȈP���RYUCCcs�2�Mh�:��������5�`0���2���d�����746����pw�E�j�����*'''&O�G�6��_�fz���%3�M�Nn�k�ܼ�DEE3��3Y ���&.6�ȈQ��u��^@���o��t �����8����;!�#;vi'�����׳y�v��?�h�C���W��+X}�~#W��s�Z��)d��P|;;9Iccɽ~��7>ޞ��D�tA�p$hD m��w�n6:*���\�.��MdD(g���{f�Z�����3 ��¢fN��N��JY�EmU��Q[����de�﵌V�%�l.��N'hx �n��̚����̳�tj4�\d^�4�|}�pw�y3�ߴ ����8}��s����+���Ć���&Ӣj%��C�]�fz���}���8q\����
"$4��s]K	g��FHp�)P���aogGRRJfϚaZ��������gx�GK�j����ȴ�������Ņ����[LO�
V�}��w�_gsA
��y:�����FGPPt��rF#L�������5��;����?v�g��1,Y4���}�]���W��3<��^��J
�J���> r�X��b2Ng�Xg�OV�yRfM�|aq�eR����y���pt�����۾���kڶw�=�̪����hI?}����6N�h��f�p��]Mn^�Sl[1'y�S��J���s��q��2�]���k�t:*+�L���FjjjQ*]����Ji�m�ŏ�u5����9������ysg��w��	^}�|�w?FcW_�#�c��p�J������[ �E�Qƀ�H��eE(ݼ��2�)��/^`��\�Vi��9������l�����?)�p��ݹo���qѸ*] hQ���{c&�j�������=���߽Jcc׮UY�+�]0a|��5\����Wz��D''JgfΘH��3�|�'�>�R���O�h	_~������<0�j����� +�<�gr���{��?'px �c�����p�=0�j�'b������~g�.w��F%��#� 6O*Al�EkT�~UA�[E���#FT� �<�A�y�*.��Ƨ    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/preview_2.png-28e0b947f651cb4e3bd8fb4aec3b5a36.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://joystick/preview_2.png"
dest_files=[ "res://.import/preview_2.png-28e0b947f651cb4e3bd8fb4aec3b5a36.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
        GDST              �&  PNG �PNG

   IHDR         �x��   sRGB ���    IDATx���y����OU� 3�*���	J�$*4�����EQ�"h�G�FFc�zI�Q As�_ĸ!��rcDs%Q\↢�%
��a�����m�L�LwOwUu߯s�^������y>��Ҏ�y  ��A   ��   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   �]��b���.  �8����-#   �   �,��z�u��N   ��ڵ+�yϞ=;5�� ��R�;���tiޫJz�UR�  ᷵����555mv����: Zv��444�;١J�����UWW�۰aÀM�6i��ݪ���l�  �X,����O�hT���ӨQ��ܧO���H�FIA ���>8�t��i���=�� P�y^׵k��`ѢE���ʴ{� ����?���ԭ[7�1B'�tҢ�={��źJ�5 ����<O �s: ��C��μ�����O<Q�v�Z544d4j  �e�HDeee�ݻ�&O��Hҹ��lO�: 455�*��6�T__?஻��~,Kt�MMM����h���� J��y�<O��0~��L:m�q亮ƌ��N;�z%"H��, H�pӲe�~�r�J�ٳG�z�R$�'�|���竺�:�� P�z���������v�ڥ���v;�X,�<PS�L�^��\�����/^<�w��~��������?_��0� �RG�=�Syy��N���������N�q�����s���!C�tkA��4eʔ����/ T�q��\��ҥK��K/%
J� @����뺺�kԣG���t\����/���}/��z���e�9O�>]�~xJ �!৑H���;u�V�~��t�  �(އ�9R��~�����6��֭�n�ᆔs2ZNG��	4r�HI��.I�A��駟��a���Ԓ%K�� ȃx�8�fΜ�]�v��<O������j3$���C��N8A�{���V!`ҤI���;��ι���� (�x��;�gϞ6���ٳ�����V�ںSo�`۶m����-Im��{/����[�  ��u]�b1͙3G555i��D"�馛#�������B��w�}��a���׃. ����ѷ�]���ƴ��WHw�u��oߞv4�w�޺�ꫯ�4;� ���X����?�ZR�Hj|�����   ����V錳g'����8���맪�*��ֶz���\ӧO��uݽ�n�&Y�Λ7/�x�ҥ�ԥ�����g��O� @N<��֭[u�m�������{��ќ9snrg��8iG
R@�	�B@��K����+�$n_  �USS��n�M����ޫ��Ճ>8K�~}��D 8餓��|޼y�۷o�o߾��v�  �<��Ν;5{��'��_�^}��O?��V﹒�ꫯJ�N<�D͘1C3f�H��%I��X  ��Ŵu�����-�[�xq�#F�p<�K�n�A��|����I�A���N �%ȓ ے�A�q4d�Ir�N��x�]�re��̙3%5�h_�/)4_  ����k�g{���7j�ԩ)� ��H
��?�  ��qE�Ѵ;�K�,��dɒ�sWj�!�nݺ%^�9s��˗���_  ^���[nQ�>}Z��f��y�U��RF �u�c�=V�{�"��
  ���k�Uyyy�kuuu�7o�,��n�$7���������  �u�֥���K�7��߈�b��{$i�� @�rGO=����������!�8���+���ѣGw���   �<�ӦM��a�<X�'�oܸ�2I����|f˖-i�&T�  �/a�@:��~���ݛx>|�pIr܉'j˖-ڲeK��;  ��u]����)W�mٲE_|q�+I�_~�$1� @	��bZ�hQʥ���������/�;{�  ���_ljj��͛ω�{�R�m��`  �0"���q�r�)��O|�7�Y�F����4  (JMMMz��S^��㏛��f͚�R*  ���+������#�^�F�jll�d  �`\���{�'��{���;�p�  %��o����I��~�ob   r纮�t��ڎ;���   ��;v��t!  @a���w=ϋ�1-  (QnǓ  �RC   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �AѠ �s���[?X8^�v�ey�����'�E_\���  (R������\�qT޽�*�����-u}t���u��O����e� �  �����Fԭ{/����-Sy�>zk���2��  E�7G��W__;�87UY�
���Xߗ ?  rR֭RO�yP�� �# `Ĵ��M�.���~{g��^��zu�M;��2���8���("P� @��գR�=0S/V��is�k�5�i�����RM��W�6g�^��[�=0S�zTXb ~ �%nܑ�꺅oiKM�$���Q�zpb$���^���E����N�-|K�<T�������� @���'[5d�(m�ޓx��{W�9��>���?��Q4 � Pb^���ž!�W���o�F�����ħ5u���kTޭ�ؿ�~qô�� (n�  %��3O�#/�әcF��~[��?Z�X����x�U��_^���ӫu��j�I���N�y�X�RA  JĠ~}t��t�co��t���zx������u��>��x�����{����}���|@�8 ����}��{���?�٩�}�}O���{KK���N�@x   0�  ������n������։_�YW��`��/ P"6lު��wKy�kYD�L=FGл�yq@o-�z�.<��-~�8��6l��@�T �R޵K������ר�Ϝ���F��xoP�԰p����5:��	:�_���;������@I!  %�𡽴r�;����$I��;_��1��ӎ��cH<�6����|Iҥ�^��F��� |E  J�֝{խkה׶�sC���Pz @��tG�Fr��X����3�Ь?����g���9�4HO,~\�<�����7n����l���o^����;�_Z�'��8�ܓt�_wk�7����W�YL    l���V����>�i� PB\��O��{h���+6W�є_�����!�t��>)�{{�v��xG�����h��咤m���ѧ;庎� �_ @	ill�-K�M<�ꛇ�߿28e�����w�r�k]z\�p�$�߻\��⅔i�\9.� PB^{�Ô��_\6�$��7����������O�.�:�w��S��.���~gua
  ���t�C�o�&���͍z�͍~���~Kw�7Z�Uݚ�"	.JH��z}i��r���wG_ڿ����6O �#  %櫓���;QG�8�/���U����I��d C @	��k5e�)�}��ںs��zn��X�-�ώ9p?]󭑊z��������@ @�Z��OZ��O��c�2R?���;�v?�ڻꡧ���-� D  x���z5�g�{���.� Ŋ   'u����l�� ��q9���y���7 (Rg��~�NDݺ���*ǚ�PW���xb )\�U,��y�F����W;�y���{����1��
 (R?9�my�&�ٹ]�F�.ы56h���:꠭�-(%g�}vb����^���ڱcGڿ�;w���A���w���<��h� �  E�K4���xT�o�,��[������w��S��/��ey@)y�'4q�D2D�6m���=�\" �G:�  �/���/� :�y�jkkx����o%�?�3��z _�  ��x�ݣGI���{����;U�N��q��!  �f�HD]t��>�hE"�N��9����;O����i4A�1 8���}�&:�H$�H$'�xbN ��455��ʕ+��Ԕ�y;���[��*r
 �hT?�����*I�e������(   �z�!=���jl,�M�6nܨSN9EeeeY6�� ԯ_?����)���Ԩ����'&  P��.�@Ç/���Ѩ~���i֬Y=zt֟�� ��Zw�� �����/IڰaCA�����{��#����:	� �����[��{��>��ߓ  @q#   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `P4��c�yI^�����:? �!�m�L� B$�}�ˡ�6����΄ ���;/(Mahkhg �0TĶPA��ֶ&�\�5�  �,��1*(P��������'�V�l*��_^���ٖ�

�B�5�3�� P`�TF?6��edSF*(Nٶ5~�3R�e����@�X3Yv6��	���@8 �,��ƍ:�0�9@p����vd� P�<ʴB�F�MZgD �O&u���c�m�L~ ��*cK��
�ҁ²�������  � F :���x:$t��ښlڙ��@�:����A.������P�,�5�^5�� r`�B&�r2 �v�s�5��9 Yj�R.��~�`Gߛ���vF���� �:�ܱ��u��a;�C �{�c$ �<:����� T��P9����d�v�� �B��	d��&{�:��t� �#*$ ?�֠P�����k����4k���~d������� ����#��\[[[��;������?�s p'�׊Q{��$�=���Kn¶�֮]+I6lXA�ﺮN=�T���[�}>�����g��ܹs���8����_]�X,���_�y	�&1�_a:)p���:��Ӵ~���� 766��{��q�'�;;�) 444�[nѡ�*��$I������ׄ	r�e�Q);�u4��/����H$�e˖IR����O>�dI�޽{s����9 ����ğ�8E}�JYxa�� PhMMM�D"�<y�ƌ�H$��y?����߿N{�RN�w��|������mM~�e}655���믿�����;�<�ӣ�>��>�,���y���;���fZ�b���~J�KaA)�5��δ%�v��O��y�ׯ��o�ީs�<���իu���w�L\؎0l��>I������0c>ۆ��3a:���/h�ȑ���ԣGI�'Ի���_4M>X�v�y�}�K_�t����oAVH?6Πo��( Ь�ۚ�������y����8��8�-]�4�y<��C:蠃�v� d��P�a��@P����w�5�{������ҥK�C��i���$5����s���F��Y��O�r ���:�r��� ˑ|�?����N{��m�WWW�����
�y��� ��qa�R������+ʑ*,��� �7@���*�;��塭i� Ђ�I�*d�߇ҭ����>���c��  �7:�:v4��(@*� ��A��3ښ�K9K�� ����6t���8�RD�9֕�L ��l �cG�mA�lXe2 �X+�T�e �F اЩ�:�B����{�a���   �A  �	ǟÁ�C3���F)}�ԔJ�,��v�@P���ܱ���Z=)��F� :����9 �   �  �g_'k�7��!g ~��	�����&�TۚR�^aA   �       0�   �AѠ4N2���u&7���1 
y)H)o��7 ;ԙܰ�
�C   D   �     
�[M�C��5�����| �~ �ք�  �{������   �A d��r��� ~�XR*�!бR�'��}��\ H��{���!��w �  P"J%����;  ��s\�C3�>�X��C��A)�7�Զ[�u������y+� Z3 �� ŏ��bm��(7���3 �B�lm��V)�m]-�[�a]��l `c��;��l @�h����k�X�_�d�?�?+f�+��ec�(�0�5a([�� `a������������]ښ�L��6@�3LeJEX��H�r�t �³=�򓅥@>�e��A/?.,��� 6A�ZaP�!9XT���քO4����+�o��L��%��%e�6ܠ�o[�+�r~+�&��οm� �#N!*P*%`QX�;J'��B�v4���>�F�"�ƚIYú�S)�p*���# t ����UQ�XV �kkg#���e��ZΖ���� ��yx�TP)������13��Au�hF��=�6�����q,F3G H���I�����%7��� 9��������m0���1��C�A[�=@;��:2�a�Ρ�����ܴ�n��@k�5�k/ ��t� �*fv������d�v�s�! d���I��x=P)��:F;�y#F���8NS�)lX�c��#��ο�����E�6���yA�+���Ѡ��6#K��'ښT�5��8�$)������֭�΀�Tt��  Ū��L�C��`�С�d��pN �(��n�M[ӌ��c�XLMM�G����#���_?����+�X�����T��tTF�_ۚL�M)}_?�ڵK�4a�I�����+Mg�q�����@V�2� K)���w�����ο0�# �G��^j���H�
�LE/�!f�Г�/�6*����b�M[S������"�H����%�\"I��v���{�V�R��0]\�T�l�&��]�R�I[SL;�d��8����8�,��JRtʔ)�i�̟?@pE,�$��0VP:}�8s[����0���y����:J;v��9眳Hҭ�� $ip$i�#@�dS9[N��ƞ�qC*$��5A�a:~�9���:H���:��TYY�*~ϟ�$�w�}���ezX ��_^�ˆ��	CTJ |�mk��d�q�;V�XL�s̓ڷ�/I�����G)��r.#�ͯ3����lG:������b1�7N�v�R�^�V$�����Ӟ1z���1?�׃.Af��R*#P�hk
��k�t�ٳ�nh�3e�6LW\qŊ�����^�Ŵ�ӥK����X<{Zn�a���X�涆v��F�Ґ!CԿ�'[�� �^~��o}��K�a ��2lW�r (Mahkhg�s�e����^�&M�^���G�t��C���*F�++�͏��v&8���k_��F����������@�F@+V�8oܸq����	�hkJC,�\�iӦ]��t������O<Q�  P,����s]xᅳռ�v�_� Z���%)�M�  (�HDӦM[�Fk:�2!:z�h���ˉn��F=��#��$��aÆ�
��  �Y4��ٳ��tV��X,&�M���:0lذx����>  ��.�#�����N�+I�w\|�?�СC�Hr$U仠  ����'  NIDAT"��ƍ'I+W��$͝;7e�t! �k��/��1t�����>�l϶m��F[�7  %�hԨQ����%I�Б�c�ɝ��m��7��'�^L  JG��u��5�2|��ǇH�Z[[�$I�!`�ܹ�;w�\�M{(�iy��q��:���A�~�zE"�j�  �����<�ܹs��ݻ�%՟z꩒����#��r�$��� )�i�۷oO<N>v����Kҭ�s�v�+  �lUTT���6�s��&Iڽ{�$�ex饗ڝO������%�'[�l�b֥  9IƏVTT$��+++%I˖-�$���v��K� Hҿ������__���%I�Hj�G  ��s]Wcƌ���������^���~��&>0p�����ޛ}��U߾}�v��4I����ߔR�   ��8���	'� I�رc�����*++3���$K�� IZ�jU��?Ir֭[7�o߾�8 �E"9���~���|���j��S^^.I;v���0p�@8PݻwW��ݳZNF=��I�Z��K�V�Z�x�~�zIzK�s��7���0*  @��;�C���ի���UҊ>� 1M���zy�Nؿ���_ЀR:�=z$_y啒t���}�.�1cƊ.]�Hj�h�`  0�u]���ޏ~������J��y���7ߜx�W��U�qr���wY��{����'����ߒ޳|��&I�Qs p$u}�g��>}�;Çϡ�  �#�8BW]u՚}{�j�GK�RSS�r���v������k�u�9������$mذ��iZ�ZX��-[V/��}  ��z�j�92�U�V�O>i5m| ~��������&I�1cF��.]��3� �$�^�Z���o�|?>
p���u�y�u�� ��%� ��A�IJ=�.����~�ǏOy�����c���b  (]t�6oޜ���L�{'@  P��c     0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A   "   `   �   D   �       0�   �A����g2$F�    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/preview_icon.png-b6f91254769c8365b597f57b76deea52.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://joystick/preview_icon.png"
dest_files=[ "res://.import/preview_icon.png-b6f91254769c8365b597f57b76deea52.stex" ]

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
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
               GDSC                  ������������τ�   �涶   �������   ����򶶶   �����������   �����ض�   ���������������Ŷ���   �����׶�   ϶��   ����¶��   ����������������Ҷ��   ζ��   ����������Ķ   �������������Ӷ�                      �      &        ui_right      ui_left       ui_up                                              %      &   	   -   
   .      4      5      >      D      M      T      W      ]      ^      d      m      s      t      }      3YY:�  �  PR�  QY:�  �  Y:�  �  Y:�  �  Y;�  �  PQYY0�  P�  QV�  �  �  T�  �  �  �  &�	  T�
  P�  QV�  �  T�  �  �  '�	  T�
  P�  QV�  �  T�  �  �  (V�  �  T�  �  �  &�  PQV�  &�	  T�
  P�  QV�  �  T�  �  �  �  �  �  P�  R�  QY`     [remap]

path="res://joystick/Joystick/Joystick.gdc"
           [remap]

path="res://joystick/Test/Player.gdc"
 [remap]

path="res://scripts/Player.gdc"
       �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG
      _global_script_classesD                    class         Joystick      language      GDScript      path   #   res://joystick/Joystick/Joystick.gd       base      Control             class         Player        language      GDScript      path      res://joystick/Test/Player.gd         base      KinematicBody2D    _global_script_class_icons8               Player               Joystick          application/config/name         meujogo    application/run/main_scene          res://cenas/Mundo.tscn     application/config/icon         res://icon.png     input/ui_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script         input/ui_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       �?   script         input/ui_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script            InputEventJoypadButton        resource_local_to_scene           resource_name             device            button_index         pressure          pressed           script            InputEventJoypadMotion        resource_local_to_scene           resource_name             device            axis      
   axis_value       ��   script         rendering/threads/thread_model         )   rendering/environment/default_environment          res://default_env.tres                 