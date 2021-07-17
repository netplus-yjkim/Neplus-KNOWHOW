CREATE TABLE `cc_itempermanucost_if` (
	`id`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`version_cd2`	varchar(50)	NOT NULL,
	`accnt_cd2`	varchar(50)	NOT NULL	DEFAULT 'a',
	`bom_cd`	int(11)	NOT NULL,
	`co_cd2`	varchar(50)	NOT NULL,
	`ipmc_ym`	int(6)	NULL	DEFAULT 0	COMMENT '년월 ex) 200001',
	`ipmc_cost`	int(255)	NULL	DEFAULT NULL	COMMENT '금액'
);

CREATE TABLE `cc_manucost_if` (
	`id`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`version_cd2`	varchar(50)	NOT NULL,
	`accnt_cd2`	varchar(50)	NOT NULL	DEFAULT 'a',
	`co_cd2`	varchar(50)	NOT NULL,
	`cstctr_cd2`	varchar(50)	NOT NULL,
	`periodym_cd`	varchar(6)	NOT NULL	DEFAULT '0'	COMMENT '년월 ex) 200001',
	`manucost_price`	int(255)	NOT NULL	DEFAULT 0	COMMENT '금액',
	`mngmt_1`	varchar(50)	NOT NULL	DEFAULT '0'	COMMENT '관리항목'
);

CREATE TABLE `cc_materialcost_if` (
	`id`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`version_cd2`	varchar(50)	NOT NULL,
	`accnt_cd2`	varchar(50)	NOT NULL	DEFAULT 'a',
	`co_cd2`	varchar(50)	NOT NULL,
	`factory_cd2`	varchar(20)	NOT NULL,
	`bom_cd`	int(11)	NOT NULL,
	`workcenter_cd2`	varchar(50)	NOT NULL,
	`periodym_cd`	varchar(6)	NULL	DEFAULT NULL	COMMENT '년월 ex) 200001',
	`mc_amount`	int(255)	NULL	DEFAULT NULL	COMMENT '수량',
	`mc_price`	int(255)	NULL	DEFAULT NULL	COMMENT '금액'
);

CREATE TABLE `cc_productcostpayment_if` (
	`id`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`bom_cd`	int(11)	NOT NULL,
	`version_cd2`	varchar(50)	NOT NULL,
	`item_cd`	int(11)	NOT NULL,
	`factory_cd2`	varchar(20)	NOT NULL,
	`accnt_cd2`	varchar(50)	NOT NULL	DEFAULT 'a',
	`basisicstoc_amt`	int(255)	NULL	DEFAULT NULL	COMMENT '기초재고수량',
	`basisicstoc_price`	int(255)	NULL	DEFAULT NULL	COMMENT '기초재고금액',
	`productionreceipt_amt`	int(255)	NULL	DEFAULT NULL	COMMENT '생산입고수량',
	`productionreceipt_price`	int(255)	NULL	DEFAULT NULL	COMMENT '생산입고금액',
	`sell_amt`	int(255)	NULL	DEFAULT NULL	COMMENT '판매출고수량',
	`sell_cost`	int(255)	NULL	DEFAULT NULL	COMMENT '판매출고금액',
	`loss_amt`	int(255)	NULL	DEFAULT NULL	COMMENT 'LOSS출고수량',
	`loss_cost`	int(255)	NULL	DEFAULT NULL	COMMENT 'LOSS출고금액',
	`development_amt`	int(255)	NULL	DEFAULT NULL	COMMENT '개발출고수량',
	`development_cost`	int(255)	NULL	DEFAULT NULL	COMMENT '개발출고금액',
	`endingstock_amt`	int(255)	NULL	DEFAULT NULL	COMMENT '기말재고수량',
	`endingstock_cost`	int(255)	NULL	DEFAULT NULL	COMMENT '기말재고금액',
	`pcp_dt`	varchar(6)	NULL	DEFAULT NULL	COMMENT '년월 ex) 200001'
);

CREATE TABLE `b_bizarea` (
	`id`	int(11)	NOT NULL,
	`co_cd`	int(11)	NOT NULL,
	`bizarea_cd`	varchar(50)	NULL,
	`co_id`	int(11)	NULL,
	`bizarea_nm`	varchar(50)	NULL,
	`bizarea_shnm`	varchar(20)	NULL,
	`biz_no`	varchar(50)	NULL,
	`biz_rpr`	varchar(50)	NULL,
	`str_dt`	timestamp	NULL,
	`insrt_dt`	timestamp	NULL,
	`updt_dt`	timestamp	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`unitcur_id`	int(11)	NULL	DEFAULT NULL	COMMENT 'cur, cn',
	`unitcn_id`	int(11)	NULL	DEFAULT NULL	COMMENT 'cur, cn',
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `b_bom` (
	`id`	int(11)	NOT NULL,
	`item_cd`	int(11)	NOT NULL,
	`factory_cd2`	varchar(20)	NOT NULL,
	`item_id`	int(11)	NULL,
	`bom_type`	varchar(20)	NULL	DEFAULT 'MBOM',
	`top_id`	int(11)	NULL,
	`parent_id`	int(11)	NULL,
	`bom_order`	int(11)	NULL,
	`bom_level`	int(11)	NULL,
	`leaf_fg`	varchar(10)	NULL	DEFAULT '1',
	`moitem_base`	float	NULL,
	`jaitem_base`	float	NULL,
	`unit_product`	varchar(20)	NULL,
	`free_fg`	varchar(10)	NULL	DEFAULT '0',
	`loss_product`	float	NULL,
	`demand_amt`	float	NULL,
	`start_dt`	varchar(8)	NULL,
	`end_dt`	varchar(8)	NULL,
	`register_dt`	datetime	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`updt_id`	int(11)	NULL,
	`insrt_id`	int(11)	NULL
);

CREATE TABLE `b_co` (
	`id`	int(11)	NOT NULL,
	`co_cd`	varchar(50)	NOT NULL,
	`co_nm`	varchar(50)	NULL,
	`co_shnm`	varchar(50)	NULL,
	`co_rpr`	varchar(20)	NULL,
	`co_type`	varchar(20)	NULL,
	`co_div`	varchar(20)	NULL,
	`co_estdt`	timestamp	NULL,
	`co_strdt`	timestamp	NULL,
	`unitcn_id`	int(11)	NULL,
	`unitcur_id`	int(11)	NULL,
	`insrt_dt`	timestamp	NULL,
	`updt_dt`	timestamp	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `b_factory` (
	`id`	int(11)	NOT NULL,
	`factory_cd`	varchar(20)	NOT NULL,
	`factory_nm`	varchar(50)	NULL,
	`factory_rmrk`	varchar(50)	NULL,
	`insrt_dt`	timestamp	NULL,
	`updt_dt`	timestamp	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `b_item` (
	`id`	int(11)	NOT NULL,
	`item_cd`	varchar(50)	NOT NULL,
	`factory_cd2`	varchar(20)	NOT NULL,
	`itemaccnt_id`	int(11)	NOT NULL,
	`id2itemgrp_id`	int(11)	NOT NULL,
	`unit_id`	int(11)	NULL,
	`item_nm`	varchar(50)	NULL,
	`item_spec`	varchar(50)	NULL,
	`phantom_div`	char(1)	NULL	DEFAULT '1'	COMMENT '1 or 0 활성화',
	`insrt_dt`	timestamp	NULL,
	`updt_dt`	timestamp	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`bom_fg`	varchar(8)	NULL,
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `b_itemaccnt` (
	`id`	int(11)	NOT NULL,
	`itemaccnt_cd`	varchar(50)	NOT NULL	DEFAULT '',
	`itemaccnt_nm`	varchar(50)	NULL,
	`insrt_dt`	timestamp	NULL,
	`updt_dt`	timestamp	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `b_version` (
	`id`	int(11)	NOT NULL,
	`version_cd`	varchar(50)	NOT NULL,
	`version_dt`	varchar(8)	NULL,
	`insrt_id`	int(11)	NULL
);

CREATE TABLE `b_bizpartner` (
	`id`	int(11)	NOT NULL,
	`co_cd`	varchar(50)	NOT NULL,
	`unitcn_id`	int(11)	NOT NULL,
	`bizpartner_cd`	varchar(50)	NULL,
	`bizpartner_type`	varchar(20)	NULL,
	`biz_nm`	varchar(50)	NULL,
	`bizpartner_nm`	varchar(50)	NULL,
	`unitcur_id`	int(11)	NULL,
	`bizpartner_stat`	varchar(20)	NULL,
	`insrt_dt`	timestamp	NULL,
	`updt_dt`	timestamp	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`unit_id`	int(11)	NULL,
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `b_bizunit` (
	`id`	int(11)	NOT NULL,
	`bizunit_cd`	varchar(50)	NOT NULL,
	`bizunit_nm`	varchar(50)	NULL,
	`bizunit_rmrk`	varchar(50)	NULL,
	`insrt_dt`	timestamp	NULL,
	`updt_dt`	timestamp	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `b_itemgrp` (
	`id`	int(11)	NOT NULL,
	`itemgrp_cd`	varchar(50)	NULL,
	`itemgrp_nm`	varchar(50)	NULL,
	`insrt_dt`	timestamp	NULL,
	`updt_dt`	timestamp	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `b_workcenter` (
	`id`	int(11)	NOT NULL,
	`workcenter_cd`	varchar(50)	NOT NULL,
	`cstctr_id`	int(11)	NOT NULL,
	`workcenter_nm`	varchar(50)	NULL,
	`insrt_dt`	timestamp	NULL,
	`updt_dt`	timestamp	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `cb_cost_center` (
	`id`	int(11)	NOT NULL,
	`cstctr_cd`	varchar(50)	NOT NULL,
	`bizunit_id`	int(11)	NOT NULL,
	`bizarea_id`	int(11)	NOT NULL,
	`co_cd`	int(11)	NOT NULL,
	`factory_cd`	varchar(20)	NOT NULL,
	`cstctr_nm`	varchar(50)	NULL,
	`cstctr_type`	varchar(50)	NULL,
	`cstctr_dir_div`	varchar(50)	NULL,
	`updt_dt`	timestamp	NULL,
	`insrt_dt`	datetime	NULL,
	`usage_fg`	char(1)	NULL	DEFAULT 'Y',
	`insrt_id`	int(11)	NULL,
	`updt_id`	int(11)	NULL
);

CREATE TABLE `ca_prediction` (
	`id`	int(11)	NOT NULL	COMMENT '모델생성시 자동생성',
	`costbill_id`	int(11)	NOT NULL,
	`id2`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`id22`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`id23`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`id24`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`prediction1_cost`	int(255)	NULL	DEFAULT 0	COMMENT '첫째 달 예측 매출액',
	`prediction2_cost`	int(255)	NULL	DEFAULT 0	COMMENT '둘째 달 예측 매출액',
	`prediction3_cost`	int(255)	NULL	DEFAULT 0	COMMENT '셋째 달 예측 매출액',
	`prediction4_cost`	int(255)	NULL,
	`periodym1_cd`	int(6)	NULL	DEFAULT 0	COMMENT '첫째달',
	`periodym2_cd`	int(6)	NULL	DEFAULT 0	COMMENT '둘째달',
	`periodym3_cd`	int(6)	NULL	DEFAULT 0	COMMENT '셋째달',
	`periodym4_cd`	int(6)	NULL,
	`variableperc_cost`	float	NULL	DEFAULT 0	COMMENT '변동비%',
	`fixedperc_cost`	float	NULL	DEFAULT 0	COMMENT '고정비%',
	`materialperc_cost`	float	NULL	DEFAULT 0	COMMENT '재료비%',
	`prediction1_max`	int(255)	NULL,
	`prediction2_max`	int(255)	NULL,
	`prediction3_max`	int(255)	NULL,
	`prediction4_max`	int(255)	NULL,
	`prediction1_min`	int(255)	NULL,
	`prediction2_min`	int(255)	NULL,
	`prediction3_min`	int(255)	NULL,
	`prediction4_min`	int(255)	NULL
);

CREATE TABLE `b_costeleaccnt` (
	`id`	int(11)	NOT NULL,
	`placcnt_cd`	varchar(50)	NOT NULL	COMMENT '손익원가코드',
	`accnt_cd`	varchar(50)	NOT NULL	DEFAULT 'a',
	`placcnt_nm`	varchar(50)	NULL	DEFAULT NULL	COMMENT '손익원가명',
	`fv_div`	varchar(1)	NULL	DEFAULT NULL	COMMENT '고정변동유무',
	`accnt_nm`	varchar(50)	NULL	DEFAULT NULL	COMMENT '계정이름',
	`costeleaccnt_rmrk`	varchar(255)	NULL	DEFAULT NULL	COMMENT '비고',
	`usage_fg`	char(1)	NULL	DEFAULT 'Y'
);

CREATE TABLE `cc_costbill` (
	`id`	int(11)	NOT NULL,
	`ipm_id`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`mc_id`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`materialcost_id`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`pcp_id`	int(11)	NOT NULL	COMMENT 'ID (입력x)',
	`bi_brm`	int(255)	NULL,
	`ra_rm`	int(255)	NULL,
	`ei_erm`	int(255)	NULL,
	`ei_elc`	int(255)	NULL,
	`ei_eoh`	int(255)	NULL,
	`ic_dlfc`	int(255)	NULL,
	`ic_ohdfe`	int(255)	NULL,
	`ic_ohdfd`	int(255)	NULL,
	`ic_dlvc`	int(255)	NULL,
	`ic_ohdvc`	int(255)	NULL,
	`ic_idlc`	int(255)	NULL,
	`ic_idohc`	int(255)	NULL,
	`proq`	int(255)	NULL,
	`proamt_unit`	int(255)	NULL,
	`ic_arm`	int(255)	NULL,
	`uc_srw`	int(255)	NULL,
	`uc_dlc`	int(255)	NULL,
	`uc_idlc`	int(255)	NULL,
	`uc_idohc`	int(255)	NULL,
	`uc_dohc`	int(255)	NULL,
	`currency_usd`	float	NULL,
	`interest_rate`	float	NULL
);

ALTER TABLE `cc_itempermanucost_if` ADD CONSTRAINT `PK_CC_ITEMPERMANUCOST_IF` PRIMARY KEY (
	`id`,
	`version_cd2`,
	`accnt_cd2`,
	`bom_cd`,
	`co_cd2`
);

ALTER TABLE `cc_manucost_if` ADD CONSTRAINT `PK_CC_MANUCOST_IF` PRIMARY KEY (
	`id`,
	`version_cd2`,
	`accnt_cd2`,
	`co_cd2`,
	`cstctr_cd2`
);

ALTER TABLE `cc_materialcost_if` ADD CONSTRAINT `PK_CC_MATERIALCOST_IF` PRIMARY KEY (
	`id`,
	`version_cd2`,
	`accnt_cd2`,
	`co_cd2`,
	`factory_cd2`,
	`bom_cd`,
	`workcenter_cd2`
);

ALTER TABLE `cc_productcostpayment_if` ADD CONSTRAINT `PK_CC_PRODUCTCOSTPAYMENT_IF` PRIMARY KEY (
	`id`,
	`bom_cd`,
	`version_cd2`,
	`item_cd`,
	`factory_cd2`,
	`accnt_cd2`
);

ALTER TABLE `b_bizarea` ADD CONSTRAINT `PK_B_BIZAREA` PRIMARY KEY (
	`id`,
	`co_cd`
);

ALTER TABLE `b_bom` ADD CONSTRAINT `PK_B_BOM` PRIMARY KEY (
	`id`,
	`item_cd`,
	`factory_cd2`
);

ALTER TABLE `b_co` ADD CONSTRAINT `PK_B_CO` PRIMARY KEY (
	`id`,
	`co_cd`
);

ALTER TABLE `b_factory` ADD CONSTRAINT `PK_B_FACTORY` PRIMARY KEY (
	`id`,
	`factory_cd`
);

ALTER TABLE `b_item` ADD CONSTRAINT `PK_B_ITEM` PRIMARY KEY (
	`id`,
	`item_cd`,
	`factory_cd2`,
	`itemaccnt_id`,
	`id2itemgrp_id`
);

ALTER TABLE `b_itemaccnt` ADD CONSTRAINT `PK_B_ITEMACCNT` PRIMARY KEY (
	`id`
);

ALTER TABLE `b_version` ADD CONSTRAINT `PK_B_VERSION` PRIMARY KEY (
	`id`,
	`version_cd`
);

ALTER TABLE `b_bizpartner` ADD CONSTRAINT `PK_B_BIZPARTNER` PRIMARY KEY (
	`id`,
	`co_cd`,
	`unitcn_id`
);

ALTER TABLE `b_bizunit` ADD CONSTRAINT `PK_B_BIZUNIT` PRIMARY KEY (
	`id`
);

ALTER TABLE `b_itemgrp` ADD CONSTRAINT `PK_B_ITEMGRP` PRIMARY KEY (
	`id`
);

ALTER TABLE `b_workcenter` ADD CONSTRAINT `PK_B_WORKCENTER` PRIMARY KEY (
	`id`,
	`workcenter_cd`,
	`cstctr_id`
);

ALTER TABLE `cb_cost_center` ADD CONSTRAINT `PK_CB_COST_CENTER` PRIMARY KEY (
	`id`,
	`cstctr_cd`,
	`bizunit_id`,
	`bizarea_id`,
	`co_cd`,
	`factory_cd`
);

ALTER TABLE `ca_prediction` ADD CONSTRAINT `PK_CA_PREDICTION` PRIMARY KEY (
	`id`,
	`costbill_id`,
	`id2`,
	`id22`,
	`id23`,
	`id24`
);

ALTER TABLE `b_costeleaccnt` ADD CONSTRAINT `PK_B_COSTELEACCNT` PRIMARY KEY (
	`id`,
	`placcnt_cd`,
	`accnt_cd`
);

ALTER TABLE `cc_costbill` ADD CONSTRAINT `PK_CC_COSTBILL` PRIMARY KEY (
	`id`,
	`ipm_id`,
	`mc_id`,
	`materialcost_id`,
	`pcp_id`
);

ALTER TABLE `cc_itempermanucost_if` ADD CONSTRAINT `FK_b_version_TO_cc_itempermanucost_if_1` FOREIGN KEY (
	`version_cd2`
)
REFERENCES `b_version` (
	`version_cd`
);

ALTER TABLE `cc_itempermanucost_if` ADD CONSTRAINT `FK_b_costeleaccnt_TO_cc_itempermanucost_if_1` FOREIGN KEY (
	`accnt_cd2`
)
REFERENCES `b_costeleaccnt` (
	`accnt_cd`
);

ALTER TABLE `cc_itempermanucost_if` ADD CONSTRAINT `FK_b_bom_TO_cc_itempermanucost_if_1` FOREIGN KEY (
	`bom_cd`
)
REFERENCES `b_bom` (
	`id`
);

ALTER TABLE `cc_itempermanucost_if` ADD CONSTRAINT `FK_b_co_TO_cc_itempermanucost_if_1` FOREIGN KEY (
	`co_cd2`
)
REFERENCES `b_co` (
	`co_cd`
);

ALTER TABLE `cc_manucost_if` ADD CONSTRAINT `FK_b_version_TO_cc_manucost_if_1` FOREIGN KEY (
	`version_cd2`
)
REFERENCES `b_version` (
	`version_cd`
);

ALTER TABLE `cc_manucost_if` ADD CONSTRAINT `FK_b_costeleaccnt_TO_cc_manucost_if_1` FOREIGN KEY (
	`accnt_cd2`
)
REFERENCES `b_costeleaccnt` (
	`accnt_cd`
);

ALTER TABLE `cc_manucost_if` ADD CONSTRAINT `FK_b_co_TO_cc_manucost_if_1` FOREIGN KEY (
	`co_cd2`
)
REFERENCES `b_co` (
	`co_cd`
);

ALTER TABLE `cc_manucost_if` ADD CONSTRAINT `FK_cb_cost_center_TO_cc_manucost_if_1` FOREIGN KEY (
	`cstctr_cd2`
)
REFERENCES `cb_cost_center` (
	`cstctr_cd`
);

ALTER TABLE `cc_materialcost_if` ADD CONSTRAINT `FK_b_version_TO_cc_materialcost_if_1` FOREIGN KEY (
	`version_cd2`
)
REFERENCES `b_version` (
	`version_cd`
);

ALTER TABLE `cc_materialcost_if` ADD CONSTRAINT `FK_b_costeleaccnt_TO_cc_materialcost_if_1` FOREIGN KEY (
	`accnt_cd2`
)
REFERENCES `b_costeleaccnt` (
	`accnt_cd`
);

ALTER TABLE `cc_materialcost_if` ADD CONSTRAINT `FK_b_co_TO_cc_materialcost_if_1` FOREIGN KEY (
	`co_cd2`
)
REFERENCES `b_co` (
	`co_cd`
);

ALTER TABLE `cc_materialcost_if` ADD CONSTRAINT `FK_b_factory_TO_cc_materialcost_if_1` FOREIGN KEY (
	`factory_cd2`
)
REFERENCES `b_factory` (
	`factory_cd`
);

ALTER TABLE `cc_materialcost_if` ADD CONSTRAINT `FK_b_bom_TO_cc_materialcost_if_1` FOREIGN KEY (
	`bom_cd`
)
REFERENCES `b_bom` (
	`id`
);

ALTER TABLE `cc_materialcost_if` ADD CONSTRAINT `FK_b_workcenter_TO_cc_materialcost_if_1` FOREIGN KEY (
	`workcenter_cd2`
)
REFERENCES `b_workcenter` (
	`workcenter_cd`
);

ALTER TABLE `cc_productcostpayment_if` ADD CONSTRAINT `FK_b_version_TO_cc_productcostpayment_if_1` FOREIGN KEY (
	`bom_cd`
)
REFERENCES `b_version` (
	`id`
);

ALTER TABLE `cc_productcostpayment_if` ADD CONSTRAINT `FK_b_version_TO_cc_productcostpayment_if_2` FOREIGN KEY (
	`version_cd2`
)
REFERENCES `b_version` (
	`version_cd`
);

ALTER TABLE `cc_productcostpayment_if` ADD CONSTRAINT `FK_b_bom_TO_cc_productcostpayment_if_1` FOREIGN KEY (
	`item_cd`
)
REFERENCES `b_bom` (
	`item_cd`
);

ALTER TABLE `cc_productcostpayment_if` ADD CONSTRAINT `FK_b_bom_TO_cc_productcostpayment_if_2` FOREIGN KEY (
	`factory_cd2`
)
REFERENCES `b_bom` (
	`factory_cd2`
);

ALTER TABLE `cc_productcostpayment_if` ADD CONSTRAINT `FK_b_costeleaccnt_TO_cc_productcostpayment_if_1` FOREIGN KEY (
	`accnt_cd2`
)
REFERENCES `b_costeleaccnt` (
	`accnt_cd`
);

ALTER TABLE `b_bizarea` ADD CONSTRAINT `FK_b_co_TO_b_bizarea_1` FOREIGN KEY (
	`co_cd`
)
REFERENCES `b_co` (
	`id`
);

ALTER TABLE `b_bom` ADD CONSTRAINT `FK_b_item_TO_b_bom_1` FOREIGN KEY (
	`item_cd`
)
REFERENCES `b_item` (
	`id`
);

ALTER TABLE `b_bom` ADD CONSTRAINT `FK_b_item_TO_b_bom_2` FOREIGN KEY (
	`factory_cd2`
)
REFERENCES `b_item` (
	`factory_cd2`
);

ALTER TABLE `b_item` ADD CONSTRAINT `FK_b_factory_TO_b_item_1` FOREIGN KEY (
	`factory_cd2`
)
REFERENCES `b_factory` (
	`factory_cd`
);

ALTER TABLE `b_item` ADD CONSTRAINT `FK_b_itemaccnt_TO_b_item_1` FOREIGN KEY (
	`itemaccnt_id`
)
REFERENCES `b_itemaccnt` (
	`id`
);

ALTER TABLE `b_item` ADD CONSTRAINT `FK_b_itemgrp_TO_b_item_1` FOREIGN KEY (
	`id2itemgrp_id`
)
REFERENCES `b_itemgrp` (
	`id`
);

ALTER TABLE `b_bizpartner` ADD CONSTRAINT `FK_b_co_TO_b_bizpartner_1` FOREIGN KEY (
	`co_cd`
)
REFERENCES `b_co` (
	`co_cd`
);

ALTER TABLE `b_bizpartner` ADD CONSTRAINT `FK_b_bizunit_TO_b_bizpartner_1` FOREIGN KEY (
	`unitcn_id`
)
REFERENCES `b_bizunit` (
	`id`
);

ALTER TABLE `b_workcenter` ADD CONSTRAINT `FK_cb_cost_center_TO_b_workcenter_1` FOREIGN KEY (
	`cstctr_id`
)
REFERENCES `cb_cost_center` (
	`id`
);

ALTER TABLE `cb_cost_center` ADD CONSTRAINT `FK_b_bizunit_TO_cb_cost_center_1` FOREIGN KEY (
	`bizunit_id`
)
REFERENCES `b_bizunit` (
	`id`
);

ALTER TABLE `cb_cost_center` ADD CONSTRAINT `FK_b_bizarea_TO_cb_cost_center_1` FOREIGN KEY (
	`bizarea_id`
)
REFERENCES `b_bizarea` (
	`id`
);

ALTER TABLE `cb_cost_center` ADD CONSTRAINT `FK_b_bizarea_TO_cb_cost_center_2` FOREIGN KEY (
	`co_cd`
)
REFERENCES `b_bizarea` (
	`co_cd`
);

ALTER TABLE `cb_cost_center` ADD CONSTRAINT `FK_b_factory_TO_cb_cost_center_1` FOREIGN KEY (
	`factory_cd`
)
REFERENCES `b_factory` (
	`factory_cd`
);

ALTER TABLE `ca_prediction` ADD CONSTRAINT `FK_cc_costbill_TO_ca_prediction_1` FOREIGN KEY (
	`costbill_id`
)
REFERENCES `cc_costbill` (
	`id`
);

ALTER TABLE `ca_prediction` ADD CONSTRAINT `FK_cc_costbill_TO_ca_prediction_2` FOREIGN KEY (
	`id2`
)
REFERENCES `cc_costbill` (
	`ipm_id`
);

ALTER TABLE `ca_prediction` ADD CONSTRAINT `FK_cc_costbill_TO_ca_prediction_3` FOREIGN KEY (
	`id22`
)
REFERENCES `cc_costbill` (
	`mc_id`
);

ALTER TABLE `ca_prediction` ADD CONSTRAINT `FK_cc_costbill_TO_ca_prediction_4` FOREIGN KEY (
	`id23`
)
REFERENCES `cc_costbill` (
	`materialcost_id`
);

ALTER TABLE `ca_prediction` ADD CONSTRAINT `FK_cc_costbill_TO_ca_prediction_5` FOREIGN KEY (
	`id24`
)
REFERENCES `cc_costbill` (
	`pcp_id`
);

ALTER TABLE `cc_costbill` ADD CONSTRAINT `FK_cc_itempermanucost_if_TO_cc_costbill_1` FOREIGN KEY (
	`ipm_id`
)
REFERENCES `cc_itempermanucost_if` (
	`id`
);

ALTER TABLE `cc_costbill` ADD CONSTRAINT `FK_cc_manucost_if_TO_cc_costbill_1` FOREIGN KEY (
	`mc_id`
)
REFERENCES `cc_manucost_if` (
	`id`
);

ALTER TABLE `cc_costbill` ADD CONSTRAINT `FK_cc_materialcost_if_TO_cc_costbill_1` FOREIGN KEY (
	`materialcost_id`
)
REFERENCES `cc_materialcost_if` (
	`id`
);

ALTER TABLE `cc_costbill` ADD CONSTRAINT `FK_cc_productcostpayment_if_TO_cc_costbill_1` FOREIGN KEY (
	`pcp_id`
)
REFERENCES `cc_productcostpayment_if` (
	`id`
);

