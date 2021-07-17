from .models import *
from rest_framework import serializers


# 1단계 기준정보 CRUD API


class BcoSerializer(serializers.ModelSerializer):
    class Meta:
        model = BCo
        fields = ('co_cd', 'co_nm', 'co_shnm', 'co_rpr', 'co_type', 'co_div', 'unitcur', 'unitcn')


class BBizareaSerializer(serializers.ModelSerializer):
    class Meta:
        model = BBizarea
        fields = ('bizarea_cd', 'co', 'bizarea_nm', 'bizarea_shnm', 'biz_no', 'biz_rpr', 'unitcur', 'unitcn')


class BBizunitSerializer(serializers.ModelSerializer):
    class Meta:
        model = BBizunit
        fields = ('bizunit_cd', 'bizunit_nm', 'bizunit_rmrk')


class BFactorySerializer(serializers.ModelSerializer):
    class Meta:
        model = BFactory
        fields = ('factory_cd', 'factory_nm', 'factory_rmrk')


class BWorkcenterSerializer(serializers.ModelSerializer):
    class Meta:
        model = BWorkcenter
        fields = ('workcenter_cd', 'workcenter_nm', 'cstctr_id')


class BBizpartnerSerializer(serializers.ModelSerializer):
    class Meta:
        model = BBizpartner
        fields = (
            'co_id', 'bizpartner_cd', 'bizpartner_type', 'biz_nm', 'bizpartner_nm', 'unitcur', 'unitcn',
            'bizpartner_stat')


class BItemaccntSerializer(serializers.ModelSerializer):
    class Meta:
        model = BItemaccnt
        fields = ('itemaccnt_cd', 'itemaccnt_nm')


class BItemgrpSerializer(serializers.ModelSerializer):
    class Meta:
        model = BItemgrp
        fields = ('itemgrp_cd', 'itemgrp_nm')


class CbCodeHdrSerializer(serializers.ModelSerializer):
    class Meta:
        model = CbCodeHdr
        fields = ('type_cd', 'type_nm')


class CbCodeDtlSerializer(serializers.ModelSerializer):
    class Meta:
        model = CbCodeDtl
        fields = ('type_cd', 'code_cd', 'cd_nm')


class CbCostCenterSerializer(serializers.ModelSerializer):
    class Meta:
        model = CbCostCenter
        fields = ('cstctr_cd', 'cstctr_nm', 'bizarea_id', 'bizunit_id', 'factory_id', 'cstctr_type', 'cstctr_dir_div')


class BItemSerializer(serializers.ModelSerializer):
    class Meta:
        model = BItem
        fields = ('factory', 'item_cd', 'item_nm', 'item_spec', 'unit_id', 'itemgrp', 'itemaccnt')


class BCosteleaccntSerializer(serializers.ModelSerializer):
    class Meta:
        model = BCosteleaccnt
        fields = ('pl_cd', 'pl_nm', 'accnt_cd', 'accnt_nm', 'fv_div', 'costeleaccnt_rmrk')


class CcCostBillSerializer(serializers.ModelSerializer):
    class Meta:
        model = CcCostBill
        fields = ('id', 'version_cd', 'periodym_cd', 'item_cd', 'bi_brm',
                  'ra_rm', 'ei_erm', 'ei_elc', 'ei_eoh', 'ic_dlfc',
                  'ic_ohdfe', 'ic_ohdfd', 'ic_dlvc', 'ic_ohdvc', 'ic_idlc',
                  'ic_idohc', 'proq', 'proamt_unit', 'ic_arm', 'uc_srw',
                  'uc_dlc', 'uc_idlc', 'uc_idohc', 'uc_dohc')


# 2단계 Excel Upload, Download API
class CcManucostIfSerializer(serializers.ModelSerializer):
    class Meta:
        model = CcManucostIf
        #fields = ('co', 'costeleaccnt', 'periodym_cd', 'cstctr', 'manucost_price', 'mngmt_1', 'version')
        fields = ('id', 'co', 'cstctr', 'version', 'costeleaccnt', 'periodym_cd', 'manucost_price', 'mngmt_1')


# 3단계 분석 결과 data API

class CaPredictionSerializer(serializers.ModelSerializer):
    class Meta:
        model = CaPrediction
        fields = ('prediction1_cost', 'prediction2_cost', 'prediction3_cost', 'prediction4_cost',
                  'periodym1_cd', 'periodym2_cd', 'periodym3_cd', 'periodym4_cd', 'variableperc_cost',
                  'fixedperc_cost', 'materialperc_cost', 'prediction1_max', 'prediction2_max',
                  'prediction3_max', 'prediction4_max', 'prediction1_min', 'prediction2_min',
                  'prediction3_min', 'prediction4_min')
