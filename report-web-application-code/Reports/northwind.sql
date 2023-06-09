PGDMP     3    4    	            {         	   northwind    15.1    15.1 5    W           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            X           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            Y           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            Z           1262    25253 	   northwind    DATABASE     |   CREATE DATABASE northwind WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Kenya.1252';
    DROP DATABASE northwind;
                postgres    false            �            1259    25254 
   categories    TABLE     �   CREATE TABLE public.categories (
    category_id smallint NOT NULL,
    category_name character varying(15) NOT NULL,
    description text,
    picture bytea
);
    DROP TABLE public.categories;
       public         heap    postgres    false            �            1259    25259    customer_customer_demo    TABLE     �   CREATE TABLE public.customer_customer_demo (
    customer_id character varying(5) NOT NULL,
    customer_type_id character varying(5) NOT NULL
);
 *   DROP TABLE public.customer_customer_demo;
       public         heap    postgres    false            �            1259    25262    customer_demographics    TABLE     z   CREATE TABLE public.customer_demographics (
    customer_type_id character varying(5) NOT NULL,
    customer_desc text
);
 )   DROP TABLE public.customer_demographics;
       public         heap    postgres    false            �            1259    25267 	   customers    TABLE     �  CREATE TABLE public.customers (
    customer_id character varying(5) NOT NULL,
    company_name character varying(40) NOT NULL,
    contact_name character varying(30),
    contact_title character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24)
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    25275    employee_territories    TABLE     �   CREATE TABLE public.employee_territories (
    employee_id smallint NOT NULL,
    territory_id character varying(20) NOT NULL
);
 (   DROP TABLE public.employee_territories;
       public         heap    postgres    false            �            1259    25270 	   employees    TABLE     s  CREATE TABLE public.employees (
    employee_id smallint NOT NULL,
    last_name character varying(20) NOT NULL,
    first_name character varying(10) NOT NULL,
    title character varying(30),
    title_of_courtesy character varying(25),
    birth_date date,
    hire_date date,
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    home_phone character varying(24),
    extension character varying(4),
    photo bytea,
    notes text,
    reports_to smallint,
    photo_path character varying(255)
);
    DROP TABLE public.employees;
       public         heap    postgres    false            �            1259    25278    order_details    TABLE     �   CREATE TABLE public.order_details (
    order_id smallint NOT NULL,
    product_id smallint NOT NULL,
    unit_price real NOT NULL,
    quantity smallint NOT NULL,
    discount real NOT NULL
);
 !   DROP TABLE public.order_details;
       public         heap    postgres    false            �            1259    25281    orders    TABLE     �  CREATE TABLE public.orders (
    order_id smallint NOT NULL,
    customer_id character varying(5),
    employee_id smallint,
    order_date date,
    required_date date,
    shipped_date date,
    ship_via smallint,
    freight real,
    ship_name character varying(40),
    ship_address character varying(60),
    ship_city character varying(15),
    ship_region character varying(15),
    ship_postal_code character varying(10),
    ship_country character varying(15)
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    25284    products    TABLE     c  CREATE TABLE public.products (
    product_id smallint NOT NULL,
    product_name character varying(40) NOT NULL,
    supplier_id smallint,
    category_id smallint,
    quantity_per_unit character varying(20),
    unit_price real,
    units_in_stock smallint,
    units_on_order smallint,
    reorder_level smallint,
    discontinued integer NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    25287    region    TABLE     w   CREATE TABLE public.region (
    region_id smallint NOT NULL,
    region_description character varying(60) NOT NULL
);
    DROP TABLE public.region;
       public         heap    postgres    false            �            1259    25290    shippers    TABLE     �   CREATE TABLE public.shippers (
    shipper_id smallint NOT NULL,
    company_name character varying(40) NOT NULL,
    phone character varying(24)
);
    DROP TABLE public.shippers;
       public         heap    postgres    false            �            1259    25293 	   suppliers    TABLE     �  CREATE TABLE public.suppliers (
    supplier_id smallint NOT NULL,
    company_name character varying(40) NOT NULL,
    contact_name character varying(30),
    contact_title character varying(30),
    address character varying(60),
    city character varying(15),
    region character varying(15),
    postal_code character varying(10),
    country character varying(15),
    phone character varying(24),
    fax character varying(24),
    homepage text
);
    DROP TABLE public.suppliers;
       public         heap    postgres    false            �            1259    25298    territories    TABLE     �   CREATE TABLE public.territories (
    territory_id character varying(20) NOT NULL,
    territory_description character varying(60) NOT NULL,
    region_id smallint NOT NULL
);
    DROP TABLE public.territories;
       public         heap    postgres    false            �            1259    25301 	   us_states    TABLE     �   CREATE TABLE public.us_states (
    state_id smallint NOT NULL,
    state_name character varying(100),
    state_abbr character varying(2),
    state_region character varying(50)
);
    DROP TABLE public.us_states;
       public         heap    postgres    false            G          0    25254 
   categories 
   TABLE DATA           V   COPY public.categories (category_id, category_name, description, picture) FROM stdin;
    public          postgres    false    214   �H       H          0    25259    customer_customer_demo 
   TABLE DATA           O   COPY public.customer_customer_demo (customer_id, customer_type_id) FROM stdin;
    public          postgres    false    215   �I       I          0    25262    customer_demographics 
   TABLE DATA           P   COPY public.customer_demographics (customer_type_id, customer_desc) FROM stdin;
    public          postgres    false    216   �I       J          0    25267 	   customers 
   TABLE DATA           �   COPY public.customers (customer_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax) FROM stdin;
    public          postgres    false    217   �I       L          0    25275    employee_territories 
   TABLE DATA           I   COPY public.employee_territories (employee_id, territory_id) FROM stdin;
    public          postgres    false    219   �O       K          0    25270 	   employees 
   TABLE DATA           �   COPY public.employees (employee_id, last_name, first_name, title, title_of_courtesy, birth_date, hire_date, address, city, region, postal_code, country, home_phone, extension, photo, notes, reports_to, photo_path) FROM stdin;
    public          postgres    false    218   wP       M          0    25278    order_details 
   TABLE DATA           ]   COPY public.order_details (order_id, product_id, unit_price, quantity, discount) FROM stdin;
    public          postgres    false    220   NW       N          0    25281    orders 
   TABLE DATA           �   COPY public.orders (order_id, customer_id, employee_id, order_date, required_date, shipped_date, ship_via, freight, ship_name, ship_address, ship_city, ship_region, ship_postal_code, ship_country) FROM stdin;
    public          postgres    false    221   �X       O          0    25284    products 
   TABLE DATA           �   COPY public.products (product_id, product_name, supplier_id, category_id, quantity_per_unit, unit_price, units_in_stock, units_on_order, reorder_level, discontinued) FROM stdin;
    public          postgres    false    222   c�       P          0    25287    region 
   TABLE DATA           ?   COPY public.region (region_id, region_description) FROM stdin;
    public          postgres    false    223   k�       Q          0    25290    shippers 
   TABLE DATA           C   COPY public.shippers (shipper_id, company_name, phone) FROM stdin;
    public          postgres    false    224   ��       R          0    25293 	   suppliers 
   TABLE DATA           �   COPY public.suppliers (supplier_id, company_name, contact_name, contact_title, address, city, region, postal_code, country, phone, fax, homepage) FROM stdin;
    public          postgres    false    225   I�       S          0    25298    territories 
   TABLE DATA           U   COPY public.territories (territory_id, territory_description, region_id) FROM stdin;
    public          postgres    false    226   ̰       T          0    25301 	   us_states 
   TABLE DATA           S   COPY public.us_states (state_id, state_name, state_abbr, state_region) FROM stdin;
    public          postgres    false    227   �       �           2606    25315    categories pk_categories 
   CONSTRAINT     _   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT pk_categories PRIMARY KEY (category_id);
 B   ALTER TABLE ONLY public.categories DROP CONSTRAINT pk_categories;
       public            postgres    false    214            �           2606    25317 0   customer_customer_demo pk_customer_customer_demo 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_customer_demo
    ADD CONSTRAINT pk_customer_customer_demo PRIMARY KEY (customer_id, customer_type_id);
 Z   ALTER TABLE ONLY public.customer_customer_demo DROP CONSTRAINT pk_customer_customer_demo;
       public            postgres    false    215    215            �           2606    25319 .   customer_demographics pk_customer_demographics 
   CONSTRAINT     z   ALTER TABLE ONLY public.customer_demographics
    ADD CONSTRAINT pk_customer_demographics PRIMARY KEY (customer_type_id);
 X   ALTER TABLE ONLY public.customer_demographics DROP CONSTRAINT pk_customer_demographics;
       public            postgres    false    216            �           2606    25321    customers pk_customers 
   CONSTRAINT     ]   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT pk_customers PRIMARY KEY (customer_id);
 @   ALTER TABLE ONLY public.customers DROP CONSTRAINT pk_customers;
       public            postgres    false    217            �           2606    25325 ,   employee_territories pk_employee_territories 
   CONSTRAINT     �   ALTER TABLE ONLY public.employee_territories
    ADD CONSTRAINT pk_employee_territories PRIMARY KEY (employee_id, territory_id);
 V   ALTER TABLE ONLY public.employee_territories DROP CONSTRAINT pk_employee_territories;
       public            postgres    false    219    219            �           2606    25323    employees pk_employees 
   CONSTRAINT     ]   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT pk_employees PRIMARY KEY (employee_id);
 @   ALTER TABLE ONLY public.employees DROP CONSTRAINT pk_employees;
       public            postgres    false    218            �           2606    25327    order_details pk_order_details 
   CONSTRAINT     n   ALTER TABLE ONLY public.order_details
    ADD CONSTRAINT pk_order_details PRIMARY KEY (order_id, product_id);
 H   ALTER TABLE ONLY public.order_details DROP CONSTRAINT pk_order_details;
       public            postgres    false    220    220            �           2606    25331    products pk_products 
   CONSTRAINT     Z   ALTER TABLE ONLY public.products
    ADD CONSTRAINT pk_products PRIMARY KEY (product_id);
 >   ALTER TABLE ONLY public.products DROP CONSTRAINT pk_products;
       public            postgres    false    222            �           2606    25333    region pk_region 
   CONSTRAINT     U   ALTER TABLE ONLY public.region
    ADD CONSTRAINT pk_region PRIMARY KEY (region_id);
 :   ALTER TABLE ONLY public.region DROP CONSTRAINT pk_region;
       public            postgres    false    223            �           2606    25335    shippers pk_shippers 
   CONSTRAINT     Z   ALTER TABLE ONLY public.shippers
    ADD CONSTRAINT pk_shippers PRIMARY KEY (shipper_id);
 >   ALTER TABLE ONLY public.shippers DROP CONSTRAINT pk_shippers;
       public            postgres    false    224            �           2606    25337    suppliers pk_suppliers 
   CONSTRAINT     ]   ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT pk_suppliers PRIMARY KEY (supplier_id);
 @   ALTER TABLE ONLY public.suppliers DROP CONSTRAINT pk_suppliers;
       public            postgres    false    225            �           2606    25339    territories pk_territories 
   CONSTRAINT     b   ALTER TABLE ONLY public.territories
    ADD CONSTRAINT pk_territories PRIMARY KEY (territory_id);
 D   ALTER TABLE ONLY public.territories DROP CONSTRAINT pk_territories;
       public            postgres    false    226            �           2606    25401 F   customer_customer_demo fk_customer_customer_demo_customer_demographics    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_customer_demo
    ADD CONSTRAINT fk_customer_customer_demo_customer_demographics FOREIGN KEY (customer_type_id) REFERENCES public.customer_demographics(customer_type_id);
 p   ALTER TABLE ONLY public.customer_customer_demo DROP CONSTRAINT fk_customer_customer_demo_customer_demographics;
       public          postgres    false    215    3229    216            �           2606    25406 :   customer_customer_demo fk_customer_customer_demo_customers    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_customer_demo
    ADD CONSTRAINT fk_customer_customer_demo_customers FOREIGN KEY (customer_id) REFERENCES public.customers(customer_id);
 d   ALTER TABLE ONLY public.customer_customer_demo DROP CONSTRAINT fk_customer_customer_demo_customers;
       public          postgres    false    215    3231    217            �           2606    25396 6   employee_territories fk_employee_territories_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_territories
    ADD CONSTRAINT fk_employee_territories_employees FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
 `   ALTER TABLE ONLY public.employee_territories DROP CONSTRAINT fk_employee_territories_employees;
       public          postgres    false    219    3233    218            �           2606    25391 8   employee_territories fk_employee_territories_territories    FK CONSTRAINT     �   ALTER TABLE ONLY public.employee_territories
    ADD CONSTRAINT fk_employee_territories_territories FOREIGN KEY (territory_id) REFERENCES public.territories(territory_id);
 b   ALTER TABLE ONLY public.employee_territories DROP CONSTRAINT fk_employee_territories_territories;
       public          postgres    false    219    3247    226            �           2606    25411     employees fk_employees_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.employees
    ADD CONSTRAINT fk_employees_employees FOREIGN KEY (reports_to) REFERENCES public.employees(employee_id);
 J   ALTER TABLE ONLY public.employees DROP CONSTRAINT fk_employees_employees;
       public          postgres    false    3233    218    218            �           2606    25361    orders fk_orders_employees    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_employees FOREIGN KEY (employee_id) REFERENCES public.employees(employee_id);
 D   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_employees;
       public          postgres    false    221    3233    218            �           2606    25366    orders fk_orders_shippers    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT fk_orders_shippers FOREIGN KEY (ship_via) REFERENCES public.shippers(shipper_id);
 C   ALTER TABLE ONLY public.orders DROP CONSTRAINT fk_orders_shippers;
       public          postgres    false    221    3243    224            �           2606    25376    products fk_products_categories    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT fk_products_categories FOREIGN KEY (category_id) REFERENCES public.categories(category_id);
 I   ALTER TABLE ONLY public.products DROP CONSTRAINT fk_products_categories;
       public          postgres    false    222    3225    214            �           2606    25386 !   territories fk_territories_region    FK CONSTRAINT     �   ALTER TABLE ONLY public.territories
    ADD CONSTRAINT fk_territories_region FOREIGN KEY (region_id) REFERENCES public.region(region_id);
 K   ALTER TABLE ONLY public.territories DROP CONSTRAINT fk_territories_region;
       public          postgres    false    226    223    3241            G   �   x�5P;n�0��S� E��;�:0�5#=%B� 崹}i9]D�|?ꉶ�B��]���YZ�C �)`{�X��[���6�������(u�|�r�2��/���N'����lN1W��E+����RUHYb6�S=U��^��h^�d?;Kѝ,�=�}	Ǥ����w{'��������*���\6C��"7|{��*�A�#��h� s\�?�S�f��I;p��/����	�u�l��|���      H      x������ � �      I      x������ � �      J   �  x�uV�n7|���5"u���q���Ժ���@^(-c��H�˕k?�;
�H�)�#��W�#;�a���9�33G����5��{+ʊ�j焽��l­��R؊͹����Ў;�l�V����=6VI��MYEAƎ��p}Â8hA/���~�M���O��9�5�����Jm�u��TtCk����6��²|W�������IW���M~���ǿ��+C��Q�W��'����H_R����e��ה��M�猖�&�
mh�?���}�O|+e�E���8�	v�;��[���b�rkj]�[:1V���lxE'ܖ7�SFk���:llti���!��3vq�^��p�����n/Z�����w�R��J��������X[H@����lfqI�ˍ�xd�3���zW��~��Rh�>�J|����1ogi�`�kQ
͂,
�aDqB��Ѯ�����x��#��W܉
7f�'*��������Bn|�~t�+�Р�t��e% �M� EU������k��T;��h����	^���q%��%�_B	Q򊶊��*�9������eSM/���`�~�t´��5��_�����7��paX�c���gMs�� b���W�-�*�+�3���ǌ�^}�-�5_d���+ԏ�o�����<M|����y��2c��k����+��\��ԫ�O�T	�S4��,�DI'I;Ip��XL �ٴ�F)ni�h�FJ��pkK�2J�|��A�Ӣ���+�jWv�Þ
����?IX��%g/�Ar���m���|0z���J�@���4��Z_��?Ga
���2쪮�8*"J���V��q~����ru����1����;+W����l+�q���j��Z��q�5�$�j�"ş�����8m<}�$�~�M^��5�2P�Jr�����7|�DY!�
(����%
A��c�P)e��)���q=lЗ�U������mW� �k��6����װ��	���q<��j����Ǎt�E�$i�ޏ����d�kof��/�ְ3Q���=&��������w�4�w\W��+���x��4?��0��A�^X~+h��n��CO�'̏*_�%�^���P�k���:���#�
BW���yq-��a��Rw�DrQ�����B�}x�C6��KU�Ǚ;��V3��g��-W����0X��-?���A�F	R6�B�_�Y�[Ë	�찦�]�BEO���1_�Z�o�����M!���k'PY�ѩ�4�O��hM�N��A�b�}[g�m��9�>�~Zh��A��� .���=�X�ҩ���00�#�c��}Lre��m�����w}d��O�R(vn�2i"����L�����0�P��7n���䬇�ݎ�(}Xu[G��u��H���b,�*" ��ַ����B���kN3{�r�	��9����9g����N�����       L   �   x�%���E!е3'@xB/��:&��
G�h_�ٶ����˲�Ɗ����~%��;V �]������l.G�_c���=�Z��p��#�~F]�p�db����d���\M�Y�����,8|l�~�ȫ�<��	�3���J�D/I�r�,�G�j^/�ci^/N>�c̾T��󿿽�?��@      K   �  x��W�r�:]#_��Se)"Ej�<��J�,���&!P��}�����*�e.�t/v%�M��.t�c+QK����J'�^=K�tC�̳� I�>��;����|�ӑ���Y����Q/�~��[I�}-�Â�gI���;KG��<���|�OY�M�����.��͕.�D�_,�ߺ]Q��lv|mM�/�ي�����F��)����|:r��$�3�0Ͷ�^��_-��f�=>b��_����pw���F6O�Ң{#�o����W�_:(�!KY���_�>��x�O�d�S�NJ���x��퇔��ֵ�l�K+_�T!�-�U%�=�mve	����d���36���Un�5;v/p#1���L�Y��Y1��r+	�J^��+¤��P�2"�q�K\��^�;ux]��Sz�7B� t@u���� �E���5�뿬�EN���(��g+E��gi��S�5J�R:��z���.�.���o����M�
��8Ĺ߄n��q�4��E�D¶'�ʏ�a�RXT��cTӡ�FTY4�2��w�եO5j
���e%��.#�X���[Q��*��j��fkl��9f�!{�~Zg렬 �1��`�C7��O6��I\�Q���l<MS�4�;~Q?�C���?k��6��(m�%P�8σ�©�
T]�x)7VJB��d����u/��8�Wˍ�g�K���kx�ز��zB���7V4���R��.�1NT`�XI�R�6��Gt��(�y��]A�:�O�UI��S��ح�c����{��O�y㐱c�%Ɉ�au'�Ơ�;��}����fk��<�N;��)Z�s�Zoj�*^+(O���>_ual��!O��c	�d�ρDv4�y�[@Kbo ���u��dҳL����p��7�*�zM���� ��;�|k��Wִ��7�ы�H�6h��E[TP�f+�4;���!�	oX"���ɔ%�,,�����kk%g�>�v�~��ΦI�=�e3��q�=���9�[���Zcȸ�<EW(�'�!�+9���R��	���d�d�w�e'���c��RpM8T�~(�Xc��m�EZGRb�L�ڎK�/���^�}#b1��1������x�'C�pk_�E!�C �{Y�}�
�樓�M��z�j
Қ�U�h�K�oe}��}�����.!hM�ŴNb|Z��`�֮/S>}���t�pHg����حz��W�s��a�>[.ι,�6�*�9����׮t��1���Y ��'��t����y�:lL�� ɽ�	�r�lk������u�3u�y�Tq�A���f����;k����N�G4Z�?^,�c��ߢͶ�+c#^�1d�����h��wt2��#��4$9�Xb���HL`����~��[I�0�l����s���#��|>c�$6�X �b����;��~CӭݺH��`���ڡB�����mB��gL�:�����6B���줰,�Op4K��ǉN�)O��R��[k�2�n��ZZ{�c��{��1����n����0vz�4��v�S>4��R{f�4��(I������,;n�I2��t�e��p�~F?���;�U ̇l==@E���S����.��Cq5�{O��8gW�t/�U��-�8zN�tL�A��)�.1`x�z��z7���X��'��h�O���#��6{#^�Z��h�˟zG��Hޫ����g�o      M   �  x�U�A�$!D��a|�
�]������u�B����|��x�0�vИ@+�>'���/Y��mҌc��d�f�"�,���
��X��2��T{����K��N��Kv9Y����"�$֤t��ܰ{��<�C��RXx�� l�r�/�I�A�{A<I5t7ģ�S��QUhm��ǔ�K���<�V�E�b��q�dנ^r�eѓ2�'*� �<�"�%"�l���'|��>�h��9��W�u��U����	9�=3R|#�c�"y�{0�P�1�e�P�뇂�;��l���u���֝ɏ�ə��A"�Mңt�ץ������u,���(�[�h�8֫�o>�V�i�;:=�
�\���Mi=3�,��h���&�:7��������������      N      x��}�nI��9�)X`�R�	�w?�%�Ŀ!Y���^Bd���T�&T�:�i�a��.�{� Z�iޢ�d��#2̓IfW�K�Xl��pws��~]T������樰��>���J�TU�[[�"�Q���z��4�i��)����ٴ|9��6�υ�g��~�|>*&oW��j�����Y�U����?�V�?�pr��P=�i�+��?��r�?xv��},n���}3_,����kS��{��6?ד���o�E%�����|!���Ǔ���R���!������tQ6˲���f�Eyt�|�'�f^�P�WMyה�?�}[n��f�a���X/����!`S��<8��u�z`��6��vTqV���e<���f�����j����c���<]��>�og�xR���R�Ⱉ��?����o8Y֓�v[�\\��P���Q���xj�uq3�/W���Y,��f����Qy�˲��K!�;���?���ň��T
~��/	�gW/_2Yf���,�BdiF�_����b��A���jz�~�X�:�����e�� �p!9i__��f�����A���ڻ	 -J��o������H�\}Z|�����S��8]M��~��^?��\���5S���X��E��Z�����w������K���]<�����]�H��������h�me���U��� ׸���@�G��Y�������ĊI�@�]\�>4 ������x2�/ay�_�ZW
X��||G�+����qD��L�,�$�H���399=�.R��A���(�^�`�?xv��G��o�YqT��ͼ.�,oA|jF��l�察�y�_�y|y:���򴞿��5�����rV���B��?6��U3���t+^l��$��$A���46�x�VQ�
LV=���b�^Q�޶p��tp�o�:�B�0�z�+�N���-1�;L�*j��j|[��f����v�� �8*�f���m=����m�����g���E%��|�;�C��������#v��Wl��Hn��w��5���zьߎ�kX�]]^��.Lo���CrV�׸~-��A�]�X$ǸW��D�|��Ey�|�~�,��j
|`>�\�緫Eq:��ͦv|$Ks~S���`�Ggg'|�{K(��B��G�`b淰��q�E�h�p0���w��Z�����Wpͯ/�
i%��*��A��??.�.pRlG S`�7pga7��U]��¦�D'>G5"=b�pY�\<ů�����7R�������_a]�ƽf��v2��[ .��r>��Ԡx7��*��E��+zL���e�CP�������2�~�F�5�xf0-�|���g��{�%���$i���U�o�(�Hӷ1$�����ea��wƭ�P2]N�N7�����˼���i<Y ����8�o���D�-l�����jN�̺*�_�������o��[ga�T�����sy�������������E���g��g?O˫Y}c����~�o8�ò�wZU�n���gRH�BnU�`3�/���� n�7�>�/�@���?��룟�����<7��C ��׫�� (`��L�� p�\-����1�fdܸ�.������0����@�T\���ۇ���d|��p�$����]^��S��s�?cD>|fQ��ɻ��AÇ\<��.\r�z�t�+����M���.o���#}q�e$�ߕ�ݮ�O@+�M���SH���ٞ�����-�j�C=��2]�>s�W�*']6������|3��?���:��b�L����x���^����������P�D��Ev���_+�ev�K�#���@q_����OD���D;R�M�������>�^����v�ru7*.�PWWEp�_�B_��\�ݢ1%9�#+`�@p�����Xϛ;���{PHQ����-�A�@������M���v����i�V�2��_e�1H�
0�*�.U �7��O����F�[U�tߔ��whO�E�'�}��O ��M���^��M)7�$�=���?�]�3Ic�L�} ���>_��x��:ф[�]k�ႏ���»V^,�̞㿐5�:1]
npԛ���z���Bۡ+d0����d���U�#y	v�+�DG��H\�8��#���)��'ק7Er�kh���M����$�<}W���L�W��>e>�y	kG���xS�~*ߠ��J�����(\����b$��@S!O̵�N��zD�R-����э,jni�tf{A�!=o=�&랇�N�]�Ͷ���G&��������U�{��S�a+ v����r������+����z�*�/.V�
��x��H�
q�6%�e�F:���z�<�����H"9i�����`�o'��,�k]�N��e�`��,e0�w�yޗ��ݻ�������Į��yh4S#�׿��?��w�F��cb#g��m3��odԠQ�o[7FPL����>�����ޮ!Mz���D8�Oͳ��d��hY�\�;0J?�4��/O�#��c�['���,u��C\�CZ��M
��{;|��8�8=y�6uM�E���	�ڍ8_�6�+���y�C(Hm�5x���J�f�ѕ���2z����a��Z�&\"Z�E/Vs�R�]��׫�)_�WK B�%���� ��%~(-��trU����$v-�3�����������Y7��&�18ݏ�񲼪�I:l��W @Mq9�@�ϥG�Lu�揅��?^PDID�1>\3#>�g��o��+� ���L�ٗq�Eaq�YDxZ�?�>��A�WQ���/���� bO��TΎ��Nmѕ��)���HL#�Q��FW	TY>��C�\́�g��rJ�����0�m�J|_�#�6�$p�@g��JFS)3�R�
ӄG7�E��5��-�Ə���
	���������6���8���h���jZ��K��L���#�f�x�������I�j,��5�T�(.�)w�.O5��������E�A��-�/������*;�/~��(�a�g�޳b�c���B+�2��h�I�Y�O�u���-D�)/�MkGx�����瓳�C~�����H;r���Ǵ(ߎ1���з����'�fY��x={�L��O�x�����LBSi����w�nܽ�r9�TJ��ͫ�>��	��+��T#�՛{t7�&�O`�&���|<ry�����n��*�ǬJ+Hڤ��3��"�;�è���IQ|9��Qv@U����ppvr�7��k�)���EMI' `��¢f�E�������f�F�4a��o}n������"�{\�P���E��kP�A1�n� na�[�����,�?"����.?�c�����`1n
A*�`��o�g����Z�v�\�i0t�����:�l��������lJ�
2)^����jм����/�+�����t��-[��U�m���,1�
\Ѩ����肝暱�~�"�e+<�����l2+W��}h�� ��u��&�t��T2]�n=.�Lz��׎�k�F��\ pW?���vߑ�w����3\/8��nΧpg���z��Ĥ��������P]X�S��������n]O0���&g�������VGd���G��ĺ�B���zp5�SGD��$[�}����?�:�=]v���5���Hx (�1q�|6oQ�|�wi4N��~��"J}��⟅)��a{�jS���^�8ɗL' ��L�EeeK���kh�[tӂ����@�_=�+���d4 �~	�y���d�$����o�ɢ�����9�?D�EV6��A*���(���Il#�R�kWױ��h6�6��1��2�k��/�+�4���*�7�a�R8��8�;�C�ͥ�8�)0	,՘!��75��/�a'�5�kP��H���W`�����L�F��_jEI{�lu�Z���
#�_��XG�������z���5Ռ�Žm@��h�����sX�H��{P�ҥ��4��7�߫��u�@4�    �	�H�	�8��}|�X5�1�;�4ʫz�qIq#��ITK���_�y�ꁎ�JH�B�T��M�$��&���(�u �O��A��^ZhбĜl=����=πC� �H��$ҩֽfW����v�(3�{,���_;pL.N�t�7}+<�dI��M������+V�Q�8�|�s]�\���K�s=�gxΗ�5Z�%�B�X#�J7[Vl�G��3p���Cw�8/� �H������@ �Sr��'��ӘU� �-�u�u�7e��^�c���!�{�\k��p�g�;��Ж�%r���OP9��XX�|�
7�z�~h��������I��~��(�oD��lշN���Ƽ04V5�~��U˲7�mDa�Ҧ�@�fe�^���j�����T@ r�~+oZ'��I�#��N!x`?��mc�o�BN�P(hãT	�|�=*�$r��(PO���ʗ�RA@A�&�|_����l��Sk��v�8���?�����dJ,Q����d)M,:���9c�3��qL�x��n?[.g�=���XG�*o`�E���O�����𨸑/J���U�,���y(�"�Ҏ��C7 3�����u�Z����|ט��d:r�������kr��h����G�;�
�(����ىP�W`�����/կ�GZ�qurq���-�$����If��w�׳��I����/��2x�ˣ�x���7�`�͗��ޏ���U�~^��0��c&H8K�I��8�������3��>`�о����`>0� l��x��t{���jV�Z[�cD����:�ӣ7��,��h��VTd�Q%�&ЏJ�g�Xu���B��1��[��+L˟_<�Gi���>�	Y9I���u����M����Y������8���|����U�.��9��@���ՔB��]�.3��K*��|^�0��'������A� K#틋�(0��@XĊe+`3�8�؛�l�ږI4Q�S�7Sc����%�i����j��@=�bF��ݠȡ��ߕ���j� �C�7�N�1h�6^gB�� �G�m0+u�'��e�*��[�7��8XN��e�DQ;]�գ�d�nT���?a�kz��o����zvP��)��x+J�	lm]��$�jyЦo��j�͎t.��E;�%��4��e[ɑ
y'�_5VŹ���4��1ڥ���`z%ۀ)�?<܅�X�W��`]l���5�W�"��0_!���҆��G}��O�׮�ZI�6���յ�z:ݮ�D���q��k~nk4��+V��	~-�A��'�k�<��V;�Ʒ�xT1��%���*�0��O��_>��Ş�5�����k��CD�)M��7�=L$1Qp(lCY�c`'F��h��&��N�g�7��VvM��!��V��Cɜ�3������5���1�^7"AM�.����}���``����@�Og��gDb'�W���Ar.B]$�[��<E�ٴY6��ְ�ZM��Y?|���MKo�9���*u�u�`eB�A��"[@��7����3$A�2Y�2� �e�R�O��9�,�Ϙ�� O�XU���}� Zv���{J'{+T��hW��u-���)S��#N#c1^�- �U��yRL_����s[��{R��˞���M�y�\lM�6һ�]���Dl�����J�a�t�zie���Q ���l��w��#�zS�.5`����=���|5�`��}��ͤ�\���Hr	*��C <� J{�NG�ʶ�l��_0cs���l3�Nh�6�ۣ�2����8�����\�0f�	�#���]�A*�Q֧�ߧX�mGF��Ң�k���(����!j1���@�F���)auVze�U��}"5nt�VF���:Iy=�N��
�#ߥ�y�k#�P*��R������0��w`����+���	� &�1fvE\�|GLq\h��1�!r��owpD��p��mL��(��<��T�$�T� �dl`�6b��L �.�ax�dQM#[e����S��Pc;����t�r���Mp4��0g�\ݺ[��1��rT_j�9�Vu��ub��O�S��>fxLl@�»5��MK D��q-�|���1&��v0�o���D<;��Gb�8E��LcD�	�R�\��]�� �pA�j+x=s���1=W�`?��h�����29��G�h��q�X���+c�I��g�xB��1�ԔI��-�O`��!{O�#�i������^P��il�T�߅.�!�>�T[�����ABcC�Cu�m;ߪ�t��)�r?��L��WP�M}��[Q�	v@I�v��(w�ah]��s�v�-9����X)�)�C
�4��A"���[E�AX�J�8�A��/�<�׉g�wƫ�߯��A�D���>D$�
$��'\�X>Î���̙����+���΋g��0j�&g=_�	LS$�߯-��zth��P^��#M�ݧ����*O>|��_� �W�̹�����  ��s^�6Q�����Kc9��������yh~��r�>��\�._�+��nӳ@�.����E�i���~*�.�dF�Cu[�Zەln�ƾ�k�l�&�1Q;@��b�Ҿ��w�=�M�b���'���+��K.�zݽ֧�!�S�H�yז�'�LE�	�����pLJY�D��::$'�.��g��b�ZP�d�os
�U�}�>-�����J
����}-2���VlgJ(���}Y���Z�����
���p���H��s��xy�7����&4��V����=���o�W`�S��n?�����~�҃(N��ՋR�|�m;}z��d�.��Ŋ���up�l���3�����0D���w2���U�N�8�����w4���/�3����E��M�;��6
'�Sf��-�,H�����M8��r]�]�T�=�8��6i�ċ�����,&�N�N�D����^DL�Mʓ\��a}��N�@�~��T��N�2�oE'#���L��y
m�	#pb�E�MK].Ã�A�\9aSu�s�4�c+��$M�C#I�8vջ'1u,C���C��z���[pQZ�k�!�ʾM�k���A��~�l��Zt)�%w��/5hZ����r!6�u��Qj���?\g�c�����阛EGcp���O�]\"����9�n�!V����.3-m`����Mԋ·��1��J�"�YMԖ��C%3�Q�K~Xk�~��I���ȧ��
�_\�\�M݂���=%�!</����,��g�,�Y\�����7�W�κ�7Eh�/��{�&<*�,c\	6m#��L���h����6��-��D�up��Q��r�[y֤uO�=*�Xv�ķ�U�cp&l9��nq�������;K6>��O�K+����^��[�o��dB��n�~*�wQ��N0�+B;�ȡ�Zc�\�� W�M�L'�l6�̀01�k���Z��}�L�:��9u��V�[���\C�W6D��\�u���J�	���_΁���K�b6�k�A!��࠿���+8�&v�`oe�@&�����̚����Ŋ��K=o~n>��n@�/����1Kn�9����` �[��<�b@b��Y0�c2�I�HP�r3�c�ۅhl"�~��:ܢ�)����?��P�����w
��돩�b�a�d�����OuS����276�6�:��ʶ�V|}kt���4��˱j�vJ�����!qs)�(e@ńF�Zo�R��<����=�g�_���Z��
X/�/���3���`7`1[9��Ӻ�W�|д��px,9��@��>����_�:�y�[pF��;�e��s�Seo�CJ�VQ�1����s�>����G	���B�o�Ӻ}uD��2Eo$�QY^1�}�<([|�(�,P5(�/�<�P�=����5S�����&Ձ�v���d�IP�1�38�n����� ��
'�=�jL�XK���;��4�N�<�f��(�cxn�Y�x�s    gЌ�mRA&���\�|��G�o�T0�{(a�_`�$Īc��h�ntJԻ��:UV�5�!�h�FT�y��K#q�{G�ph��o�r��(��0=ߘ.Cb1Ւ�`Q=� S�o��3���ͥI3x�\��|c�^���t��M���d��0`b7[z葙��h��Y��0�k��-�ЙU����4�I26y�w��G�V(̍�)3���0�C3JH�(̖��]�eHη���y�\/�8����)	����Z�6��7�CO���L֩��vu����^'_��b��|�q�F����T�j����&oNl��J�%S8:>�
��g/��M���;���:?aQ�d	K:���d<�q�E�H�Ɨ��� �����W\�mE���[��_5�]l��{1�R����yڃ3xOe�+��`�N<��z�������rnD�a����1���Y�	��-�ū�%AKo����7		/3�Q�+���*Y3�3��ɢ`q�vx��7VK�P�����.�C�^u�^��f�0�?8{~z|s}ʹ��y	�p+�&4����Ty^^߃C<�I&���m��dƋ[��a���tÔ��6�5s)_-e������ڋ6��v��8'�#?�˶6��:~��>P��T2�M?��.�(�h�����iA55ٸ�7�h'��e�Չ�+��\����-��Դ?�-�b�v�g�ձ��y�y�Jls�7W�x�QF�Ϩ��g�����ǄV*M�J��8NyhB+t|�)�CjI=x.�(�Fҁ�*�{�4�]�Q�BR�F+sS|�O�vJ8�Z˂�7��l�u���`8o�,��3W���9'�?���)��`#l[p�h��Q�3�sg,�����'�u��~��ʽӢ��$󃙟��{*�nfry�f��9>1�"�w���v��N�^U~�{���F�G��S��]~��[��a���<?������1j[u���I�h���,{�]���ܻo���!9�zmյ;lq
<�i�>����`+�����pYU���?�P<��9����~�];8���W���%L ����:O�u��ay�$Mp��BeZ'$ӊ�Q�'+��%S�W|_vx����U��`����,���*Y!�c)u�������W�>M�ZM��ۺ����у��D��oB����a��q�CW͂�zsrz����Ɉt\���oPGo�������.^7���yj����b<}OM�h��,�Ȥ�k��d��QC���?��]�e�Y0���f~B�CҾȯ��'��a#�\��M�ĭ�����^<�OsΔ�&i�:�\�xTq�D�w���N5���7��N'�1"�^�����r�93N��ͫ��\��#7 ��7������z������_~�|./��=UC�@�g70n��V�%���\q9�=��G�T��D5���_@�0��7w���sy�A5Z<�La�����ru;��)([�H�Z�Tz2-f�@�^��S�i>p�8��n��&��j�9(�ý�h�4��{��KY|�'�@SV)֤�]���:��X�Gim�zw�I��Ģ⁵eV���{�2p��^*��"1�R�� ډb����*�U�35.Y�C{�h�F{<S,�N�w������Ⲍ'� �X-�(��q'h��y�jY�Y�������43�{Dĭ��PؿFV4�<� 
�|;.Dq-��g�(L��J~�y!V��.��_�cM��'�v	Y ��o��P�����j���0G-�2���O����rl�l��ܓ�b-(5?�U�Uqp���	��W3��l2�]?��L�>��{ R�pt��b���uY�d���#�"�״s%�,�\Tﭓ��a�t�B�ܯ��Vwݕ�_"�QT	��v-�-[���]J?�� �BL��3&�,&Ԉ��6w�g"�t$M^��7{��/�hM,6�C;�����u�w��Ɓ;���g���(p_�}A�骑͠L�l���7'�U[>�s<&cM����i}T&�%\�Fgq]��������,�M������؍���SEp����P����q�Qͧ0�4#�K��W3�]��1�).N8�G�Đ���	�>�G%�8G �jFh���OV������;	A$4w�
�(�	��ǏX����OV�@j���(��?��0�צ�\�K�X�ٻ���͌X��ҀX�9��ɞ�y^�׉��b�u�ۑ��le�A�d�){�f�Nn����FI!u���Z3�}\u�ؐ����Qz���u4�`��E�t�<�*cӜ�'8A��]�5�D3�K�>z徜��B�F�;s5��d޺�8l���}3��y_�k���P\�Me_����x�ވ�?E��j����u�2��y���Xb��l׺n���x�p��园Bۺ�pǯ�\��� U���e\�M�B�'��N�Lqg,ܥR-���Z�]�l8P���Z�Qd�L��J�yش^�z������8=����a�"�<yՖ;�ڡ�De�3����w=��)����ਙ��֛ޞ칚`�M/:R�Vw�%��=��p��1�Xh�.���m�kÊ���W��aq˳r��!|��_�<��S��K�X�� �)>DZ��/ѿZ��,��0?���{�xպ�!ʳ,��i�1���=㞡�|�.�����Blr��ж�[J�D-h�Z����]y��2�>GFnt��ŧ��#O��́B���M��G�o�K36)*��4��r����f�����7�9�N�$�����RS����J���-e��e*~-ֈ��@�b�H�M�\%�9��������W�g���z��D��8c1�Wz�&r�N����vG$�\ЃU��]�ƶ���7v�.���Q��hX�9�|���_��vTБO$�G�Ҽ�5��4_I
���sށ�O�yu|xR�ڢ��D�������w��}�S(}(�o~�	$�|϶�PnF�ֵP�(�؆Ʉ�Jb�M��B:L�_�s^%{���4SU��G|�~&���`D�Xڇ��u7�J�鬛�և�\������+r���Vcps���9Xby��8�6#cuB�E���L���v�!�����nG�B��L]q��s��xh��05�"�.��-�!O�S�R�c�y^�u§uc������Ӯ�zǜ�ښ�����1�
`��5��ƌ8�e�Q����%ĝ�\,��	�ƫX܅s��g�Nn<������q�x;�F��}��#�ånA.�@Z��d����8J��v������ܶ�P��3�?w %q�(�#�ev����/l0R���Ŝ�|�&��D���%_��I�2V�H�!1��t*'e�����6xN�c�4��k9}Nu/q.W��H�&X�!$��8����k�'�}��[kL*wXY�X����9�7�ܠթ�H�.e�������\"K��k��]���::9(0�D��Z��5l/����6��9��(��FV�pB�գ�>�rŏ'��7�����r�^�t���zr;�M��|�'�7���r򇃷o����"UF�w
�����s,{�Qq`����A�8ƺ����lA!Mn�M�ς���A��T��lh׫v��pQ��y�ռ���9'v��>y�r���)��S��]��tm^Zo�a�?@n�4��V�L��9���S��b+�k㒙W߽T�ܣ-�Q�9p�?�ն�Gl���:�\U(����H������A8��杜�qO�(d���+�����L����4��@'(ch���#��������i�pF�uG[ª�ȶWU���9����|R�מ��}���J�b��y!Y�5#7(�et�#dw����椼-BΘ�+�8�$h��������w/OO�� {5��N����'#�?�/���,��
+o����L�s��O��x���K�_�uŭ݁F5���[��~�w_&�[Q�pC�GH�a���W�̯��lն	0�WH!�Bz�b`���"�D�=ZɣT=/��(���q�S�C�u�Zph��*s���l����{��xE�񈚳&}Qb�B∁$j�!M-1�2��    ��$�׎\��凪����8��˫�;qc�6>��v����`���&�[8HP�����1��JiЗ��8wi���9r���u+~dk�DQak�ř�Y��jV|���0]��� ~������J��� =!�(.vnc��6����X?|қs]�3cd��M�*b��3��٣�;�6�bg��30��`M�=�.r�F�w�E�6�����!�GF�Ks�vp-���v���������sn�<dn�Q��,N�V4>e#7 7m&�@��m��q^��\�Nb��*�����85^��+n:��82�E���Wi��W��&�HBR=����ױ�V�*����v`������!�?AG[+������y��G�;�ݾ��v��<*ؤ��~�v*0��B�|��< *�4k#c2'wФ��q���5���փl?����Q���|h��hUŞ@l��ÌC��9��<�� �)v"���RU|Ŋa�;��({f.��= &3k��X��o��˘��!g�z����.aw��0�`�b;��=��r�c�7���x~up��،jl~%��|���}3};Y-�~o�ɢ�#���;�?DWKV6)6;����@�t����-�	�e�t�4�
l��������ؽd�8,�����CМ���r=��C}��o�1��57�7HO�Gzu0��vM�&��w���e�}8��+����	����z���n���j���p���$��l;{@ec�1�Fg�Iy���L�􊟯L["��z��4У"C�D=||�gk.2kԞs��&l\��`gb�/S=.������տ�.�,�S���W6)��ɧ��D�o�����0�>Qh�,��zm^t�m��6?�F����ي���^c����?����������ǧHՎ��M�Ɛ|���G���#+��p��(]�e�W�?��*�Nx`[�w<Z{��#�]�NeGpц�{��Krb��(+l�ѹ�r\����>����rr�&<lkL��]�*��er�q�1�G	��(i�fqFCckp���	BG�������٬�^yٽ$m������G,=�M�o�G�_!v}Z[S ��^Z�f(&G����7K�?��Ip�Ylx�ph��Ip/}۝�?`������t'x��l�NR"1�e���ޛ��r����{��m�+<���h�t&q��>��@.���q�P�{4�:W�c~T~̧�Dyv�rc���N�J�'-v�R_[�'m���]�A�n�zTu�ze��$P���#�<e*���Q)�f|��S0� S�92U>�����ї��y sQ�v~��o?鯢Ot��~��'�2��%���m	�?R�V��R)c���\�^�v�؍�A�ce���\���% �$��+ԭC�/�۪V��@J����E�~]��qr
�H!1_����;$E�_��D��[n�a�\R����ؒ{��O�S���lypގ.R}-%����<��uq�	�Y������5��f�|.#EZ������ �&J{ھ��u�~�_f���M���RqzO������%�wӋ7�5[q�m+����A'��Z��X�S�:��ՙ�Z �%v�=ϗ=�qOF!���В7]��V���6��s,���|
���B38�7��,�I@�%�d9�c�3�,��_~:9�� ��3[��GW\5��G�19�� w����|
w��[�Dx-ifh�iחt���>6�&�xө-ʧ��j���)iͰ�V�n��� {9�Q�Bc���n(o��A�Tq��2apa1�3�`��䥸�B�B$�;qw�I��[��Þ�2?�FU�+~]�,����A���	���|0��>u�U)��B��V-��]W=��!��(_����z>�;啪�Q�@�4Y9_Q��Y���5;�c�7H������j�]�4�(5�j�j��3fd�L��m�+xrH[�w�}3����F8���h�_O�ege{Ĕm�V�έ�N?\�V$f V���K3�:xzi��)G���X�IR�����C

�� 4n#��(!xC���4�%t�a��*�^pN,��0@�c��0�&�*�hߗH�mFoK�W�?ʮ���|	=/7�ǰ�05`��%Z/��T�%S�
�Y��W�ɠw�R:-T�f2x`�1Pbw�z���2�I��f��= ����$�����{�B����on�Z�_�GG��V�(�:�� Qx;�c�uYOV_�Յ�<�m3�M��p�N�t����h��h�~���C:�Z�TXT�c�3�@9�����&��h�~���Hڢ��Xۈh�� )��	
�w������v�z`�i��pU������a�jh .h>��iLA�S��}5�\Z�B�䯕8�����mO/9�5����R��s���8��(��m4���8:>8g+{�~�� ׋[��6Ҵ�|�\��Yy���G���ݨ|	�Y�8�������bV�����a�Cب.��I2>!����Ԗ`�B�����Gǒ�\՚��+,����4Yb��7����k�R���US4�!�-����En�+j�0|x �3JAص^���|�lb`[�_s����8�DZ|*l�?���W�mp,RL;Lٖ�\�X����`m�Ŋ�g+�U��؁��*��Va�_�3�4�"�!��ܹ �e�j��~2��֣������pZ6�x��Oo��V#|Z"[l0�d�zw[����]�����t����4<�[���SXO2��C,Mt�&�Osqv��B'���ȳ!T��J2
r��\�>�����Gp�@-�mG�h{>��i$��~�K�%��`G:F_��)`�G�bay�����-�9�9� �$������Ҥ�<,�gT�"�LR�P��yj#��|��Z���Nݎ�Yy��4�o;r���
ȴӶ��%ӑ�迀S���Ԩ ]���\�֟%�I�7b�t��v���ē��K�mrZ�=ԑ���;���(X�'�T7�ov��`��ac��z8�߶X�o�+Jc�t��F��c�yߒ�I�(Xi�!�%�Ai>{���k|F�d����E���ڧpi8�ÁV�\,�5��\����vp�XP�Ͱ��R%��m���"�R,Ay>$-�}���� ��
m���GE�O�]=��"1�,�[Ԇd����ѧ�С�U���+��f;ТFv��<k�������}=>*�������Q��KT��ˣ��v�`E�G�4�m�iк�މ��VR��D:��{c��f^�ؚ���ե��a3��v��nIW�$�K�i��;�7"�Bņ�_;(B�C{�r ƙ��!���T�>|��I�%���F���a��e�9��T7����Y���1�
3uӍ�ٲ��W�,G�!����Y6\��KNt�����^�K0�����?�C�&GMu��=&���t�\�ڀye�[�6Y����O�X�{��Q�>�k�dH5���0�+؊m���c������Y�G�m~��}�����h�P���D��GM�z��*�G����ؒ�M�,�8�f5�X�֓�zU6��
��<�߃36�P"]�����������̢��P���]����J�C�Zb���p�۵El�\z�]���a��"���v�O�v��0T����z>�����fN���c�l��'^���� Q]���n�n~����P8��j��8��2�7Fa0�e]��
\P�Z�{�����h-�6X)�2�*��C:-NIވ�mCT��������j��.pj�0��dD����"LrS�x��[�=w$`111u���Yv%2T����n��l���.�}#��|[8���wE�)a�>�p(�mc#$�TqО�<��/6*5wI�6������{��+|��l���\����|�G�i�
�����l�f5�R0�M���G3��G�0#(ژ/\72}�=�W%��}��]������G㿰�48k��4��c���+�!,OQn��-��� G  V�Ѱ(7����Vk17��7<�Sŧ�f���
�O�Na��9ָ1�S����N�,E���1�8��W'GEB��ٕ��;Ѷ�
~�M����������\d�[߃g"vWy�����W��0|�t�>��44a5k��H���������¼-_��.����bHa^����`�G�,�O<�*�ޒ�B�`{�����qg�[ ���(4ih-З��D�j�%Q;����P��}�DฉH��Fc���Zh�FӴ�r&�uUaA�^�����P}��a3Xo8(�
����:9?�����6U��8�r>�jQ�'��m3)O��c8^�T�ߢ���`㦣'�a|��L����6�1"����)����ܵ�*ΫŊ���3Ė���>Iq�$�@��c�w��"��6[�v�S��IV �j�w-��ˏ��(�Q�ǲ]�;��r�������o1m��oI\����y�=:�y�Gׯb��ϙ|���ZKQG(D�fg4�U����,�;`(w�59ZK8�E�[2�L�Hы�9joF�#3aR�{D�.U���AL�بay�&��Fb��1Q��MÓxD���U)0�� �C��}����q�^u  �[�Xs=��Y#^�4��u�ʹOg�]h:�����Og��<����uP���, xn#d�rG&9��z��N�}�*waS�A�J�a���J���y����y�fqN�L�������}����ގ��aާ���I�D� M�nrՖW���7�~,Hٹ���5��)H8Z<�}r�G��R\,H���mP�1'���$ӯ)g{��r�m;�|�zShz�O̤S���¾F�.�Ѡ�: ���;�(�uO��zc�F*^ ��Zl|���	�3x�ļ�G�7��բո�,f�$v!��:@�b���68'�d��\9m��K"����j��Q�z����-Z����}�{�f6J[7�H|]���rQm��?�uҖ���	�mx>n�7�(Ƒ�W��0,TÀrC.��|p�4K�VA�u��/[�k&+j���u�O1u׮�4��e-Rc�2��v�dj�J5I����d��	�I{˱̟��mSҰ�4@��a�h�5��
[�Ȩv��|�U�k{ϑ� ��~�U���{4���M0M[���R����ĕֻ���4��=M>M$��<֠���+�/�ns���ةG���g�g���?�
�����RUUR����||�`^�q���S��7� ob�@
ej���^h��ɇxcdd�e}LT�\[V=3e���+,z�[�&���w�X�1�&Y�1Vbsm���^,��ƹ�ɀ�Gw��wc��Vm蛕%��ۙ���b���*�i���#��%h�&-+���۽|��G�6��n�*�1d�]{���`�n=�?�$:����l%� 6^�؄M�*��&�x	Q���Me���Ȳ�5�w��h%[<�V�@�o"� �1q�� L�z��?a:(�<��	2V��+���{�����T� p���=���F���O{��p�G�꧀����)���>C<�qri����6�����	���      O   �  x�uWKr#�]���nV� P_.5�Hn��rSG8���"�"@�G-����Þh_e�A�$~	T�=��BUHd�˗/���*�
&�X�{��1�Tu�D��[�IGmM'�L���O���F�슉�%K&S�ٹ5��_��ÁLΟ�4]�}s���1˽�r���~��w���_����V���%���d��I����1"��"���j�o�5/�.�BvL�(N����U�l�W0�ѽv�nt۾���ժb�vq��$��s�'[6��𾭕5%�]k������.\!x��]�E,��4�\�ε���sRF4cj(�1� �� gc�+vk����n����,�3A��%�G���՘1|�����"\-��$��X�w�\��Awuش����H�6�?r��i9��U�������U�;���VL����nD_0I.P-|�	�"a����d�SY��J[�l��J620V~G�8��ߟ�{�ܸg�����y��E_5p��1��C��^|\|ol�A/؅j�j����ր:'���LF@IN)�؃V��k~�u�kT���L��0>mWT�`t�(W����)��k������U�^5���=^��~L�D��u��n]:��S����d�	8b2�.%��^=���~��K�ӛ���Ul����$;��L2f��'���	�Y&��	�)4̯_�����_�ޔ�kJ��Ӕ�]*T#�r���B��?�>�sC����V�5��P��;��u�g�r��g��p@_�aKB�7�O��{b����XDHOL�9[�[W׆���u91� N�hŒ��` Q�Ax �ݵj�28%SR+��Ǵ���Ƽa����w=��?�n�[�V�B:T.O��iT�<�}��Õkkg?!b��c!��*5��#J���b�%�U]��Ȅrm�kL��y*uN�*�1�����)��y�0�\�p{�֪�۠�r�� ��1��s6)[�Z7�@��0|ˮ�	f{gUc�����W���AIi��ӠyVo�K���fȈ �7$�����+t~�^51;Oyy�1��G>Ƿ�Q���:͟uۏ�9�+K~��hK��&	�?f(�І�B(�1����&���OtL��*wh�;���d�[�F�I�>V�ל�1O�U����� �o*������n�3��K?Ko�& � ��h(���$f�n�/��c8/Ha'�}�IF@�i� 	�o��%�&2�~�A~	Zy��Ň�֨Jg��$�킈�P��8Nfl}е>�K~�*��$
I������;�w���+�@���@a��	X��c:>"#�<�@��
ۂz1���œ	�+��у�?�f�M�n�5J��N�x�g4}�t�C*��>��p7�����

~�0��>����]�f\�� �\�}NkØ,�A�_3Lp�ц8�f,�b�)-Cۛ�~i5�gt����hs)����������-��t�8��&����$�z<�L������Z���@MOb���Q���L���֍{�J��N��j���+r�]m51ַ�4����͊����k���Qu��a� �y-���,����{,�=�7XS�x^�sQ[7�
�'����_(܁W? Th���<�'K�,���S���Ls5��e�M����U��b����>������L�e~"�����Wf	���ﱐ�z���Ƈfgi��'�^	N��أ��+���7n0�Q��%�y��%} �˼��&�E�L�j�/�N.�+�P���1������t������F5h[�*�i�*^�
�=S9�?+����+���������9���߹<�+j��w��RM7�m�N��ǅ�@����d>�8.os�^˦n��l\���߸�~���o6��>}R�n����+�m��7���!��:�;WůѤ�=��7g�(Ff�	#��u��7��L�0�p#e��������$�ۍ���	�e��#�Ww��7Q�F�v�1;܄�֐\��&}�O���h�X�����      P   ,   x�3�tM,.I-��2�O���9��J2@L���R3F��� _�!      Q   �   x�M��
�0F�{�"����j3
*���%��6XJH��-(��[�w8|b����J�K�)�D$]m5h���^4�{��W��Ρ����$�S��.��P�q�b�;�*�hY+%�1RU���m�j�����z��$�V��"~ �{+�      R   s  x��W�r�]C_�UZȪ�yrf�#%��M=�hK�7�D���D���dy��J�%�l���)����]-(b���>�4Cv���,i$���ʲ�7�vNб�Ka�Uc��RM�+>ť����'�8�.iUi�>_��㐒�	����
���4�D��7?_�E�B�ӥ�W����Fщ��t�,�D]�53��T�P�ZH%�3�i�ҽ��@?P�q���Y�a�>�����I������{��|/fC�U�������BX'xŮ�T*N�Y��l�ka�Z,��B9��J LF�w�Tt]uY_)�	�;˒<�M
qoRH�8�Y�qRx(�A�ך>��Z�gmg�.��[��9 p�����b.\";���|n��gġ�;�䊽
,n��-�)�ԟ�S%�FXm�`�})&����i%5n�t�Qs���蓥F���q���Z[^S�.WRT���k���qdl��y9@(r�z�&ۼz8��Y���B�3�w �	�"�6sMǳFw���|��vi�~��wHIv�<���� �J+r3A����J q+&��3�z���������V߹n��yY
k+�zm�b�v[.��E�]w��{��Z���Z�-�]���������̡s�]�@8��'�1J�Y\�Y�9�7�˶�I�t�8��W�4�=�9`����-��6�+���[Y[�Ŷ�
z�4�-_#mU�<'L�]����ֽ-�9ߖ�`Wz��}�G9����+�؈Km���)"���ּB�;@��x�	�h�ww�$���^TB� e,�z)*��*|o�h{������BYjK�'}4(��҉�/Ԣ��R�x+��y [MW��������5 ؜��^l�F�n�# ��Pv!!�����kT�r���\x����Z�7;�MM�4`������j~�����$.�P�Wk���!E�����������n�.G�. z�K�:o�]3:����N�Eu����br��+��uG��:������6BN���֟l�0��R�g���zӚI�%Y�s�$� }����"i�0l��ө�1 �$�5ݺ�Nk�g��}�:�(�e)���U�&^����ڇGR/���y�%�sy}��n�%L=Lv.�\Ht�l 8�#k!�����Z�*N)rT�Jn�,���ov�}�èS�q~o���֎F��P޽�Y��uu�nֶW�,u��?{��IP�r7�>��@���"l=�b�׬�� �Yl��(�'/���"�9����w���S�\����������
�𧎰���r>��b# a��I ��/
��.>���'ʲ���W�q�c İY����t�+_�M"O�GA|D׍w.K�^����S����|"N����� �)��y��n/�i�I�Lr��5���(OsU
ea�z2AW�q
x��
��:m�>WF{B�>9KX���4W�ԫ�+��c��>�0���0� �Y�y;{��Fb���Ûf>�'�]�+?�e!��ɧ�(ar8ڶ�~Dl��8��a
�p�����v�f����j:Y[YW�BB1���ǲ<?GPX	�����͝Vrp�D�xĒ8O�0ȷ_´�O3!�Zi���h#Ŝ�H3�QSΜ`[�wYx#���k�E݋)mw�xۑ���'��j|u- 6��1p��E�&���|�if�gDAgB��Z�ШmՔ�94�k�6Ls�By�i��z#��	*àH{O�&lxP�����nA�5�գ/0��JF��鴺�d��C���'bY�l���X���-�D��p[@z���<�7ٴ��A.4�~l���(��b{�g�w��;�:�x��i�q��^�2ݏ[x�x��k�0���k�K��Q�����1���&[������q�Dq�3�4��P6�,�?^`4�<h��4ndT;f�ɮ��0�^�d�^��*k3�ة-��jg!q�J����$~Pq�C��y� q֥-�G0�x���s����i7ͼ��I#�/������y[孺>���s�=�x��l�^B�=ʖ�l�{�8�f�n�w������j��{�����V(�ᓺu:ϐ�����{��a���񤵢�8�9[�R*4�s��Ec���o+�v�Q;o~���������      S   C  x�U�ˎ�0E��W�
�l��&�Z4m0`P��Vad1���ӯ/e��.���%o�w7�=&^1�%����Y)��a:���B�-�p�);X�q��pt1
V����[H�$l^��b?#�T/��@�4��S�F��SA��4��p�����S�T�6#c����Osg�w���Ꟙ> ��k�a�B��P��J5��Og*]@�����;�p>yK��NsY����L#���2�Z�|�4l��>
�pN���":��1\�=eT�dR��5�b-����hO�t�#Q��E˖ix�㹄+&��ox�ӿ��V����@]���b�|��,�0����{�.�M�%\�i%�
���^�P겛F*zx����HL���[j����������tHe���hc�8e���8����{{D�Z�rM.Җ�|�ҍ�
lv*�h���e�>�4������%J`XǺ�-&;`�;'���iW�Jt����h8�z�y,U�#K��F�@r��#�뭥�)�/q�S���S_Z��L���.j���[����l�,]�dX1�����-��F�ì9��yn�ח���A��      T   ]  x����n�@��O�"O�
?��D�mhTI6����4�Bf��4��5a(�+!!}6���vT썝�5�����m�9YA*M�C��?%	����z�91i�A��ߍ�J�+-C����R�
aڢ)!)y^��R#܁3�3,xŮLs,Z4�B�Z����!չ�ߨ�"l���TZ��v��W�HiOA�\,��XF��CT�R!Z�,�����JH%�u�ǈd!�%=� RWBi��X�Ym{8Ê����nX:=s��E�{�u��!fBr�v�CD�*&ċ�g�%f�ˋ�um]��X�82�8�O�fmT�'5�y>>�m'ar��	��"V�n�ƻv|�	��I~�u�?ّ��DoD�:\��)9�,�6<�x����gK�;�����������	��f�H�V�!ӊL�_ڥ��6�`���w؛ -�B���驢M��OW=�!���$ҍ1���ܪO֬�K���aS��#s�iY�`ی���qm�J���};��h8Ǯ�C�'�E;��m�r�ך�x�V��>����C������}��#�䱦�3{����?�پ;�2ar%����G��AvSg������k0|t�\�     