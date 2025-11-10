CREATE TABLE `assay` (
  `aid` int NOT NULL AUTO_INCREMENT,
  `asid` int NOT NULL,
  `assay_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `timepoint_hr` double DEFAULT NULL,
  `ncbi_taxon_id` int DEFAULT NULL,
  `organism` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tissue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_format` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_free_component_source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_short_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_growth_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_footprint` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_format_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_format_type_sub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_readout_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dilution_solvent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dilution_solvent_percent_max` double DEFAULT NULL,
  PRIMARY KEY (`aid`),
  UNIQUE KEY `assay_name` (`assay_name`),
  KEY `assay_footprint` (`assay_footprint`),
  KEY `assay_format_type` (`assay_format_type`),
  KEY `assay_format_type_sub` (`assay_format_type_sub`),
  KEY `assay_source_id` (`asid`),
  KEY `cell_format` (`cell_format`),
  KEY `cell_free_component_source` (`cell_free_component_source`),
  KEY `cell_growth_mode` (`cell_growth_mode`),
  KEY `cell_short_name` (`cell_short_name`),
  KEY `content_readout_type` (`content_readout_type`),
  KEY `dilution_solvent` (`dilution_solvent`),
  KEY `organism_id` (`ncbi_taxon_id`),
  KEY `timepoint_hr` (`timepoint_hr`),
  KEY `tissue` (`tissue`)
) ENGINE=InnoDB AUTO_INCREMENT=1071 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `assay_component` (
  `acid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `assay_component_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_component_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `assay_component_target_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `parameter_readout_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_design_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_design_type_sub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `biological_process_target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detection_technology_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detection_technology_type_sub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detection_technology` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_assay_reagent_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key_assay_reagent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technological_target_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `technological_target_type_sub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`acid`),
  UNIQUE KEY `assay_component_name` (`assay_component_name`),
  KEY `assay_design_type` (`assay_design_type`),
  KEY `assay_design_type_sub` (`assay_design_type_sub`),
  KEY `assay_id` (`aid`),
  KEY `biological_process_target` (`biological_process_target`),
  KEY `detection_technology` (`detection_technology`),
  KEY `detection_technology_type` (`detection_technology_type`),
  KEY `detection_technology_type_sub` (`detection_technology_type_sub`),
  KEY `key_assay_reagent` (`key_assay_reagent`),
  KEY `key_assay_reagent_type` (`key_assay_reagent_type`),
  KEY `parameter_readout_type` (`parameter_readout_type`)
) ENGINE=InnoDB AUTO_INCREMENT=3063 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `assay_component_endpoint` (
  `aeid` int NOT NULL AUTO_INCREMENT,
  `acid` int NOT NULL,
  `assay_component_endpoint_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_ready` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '0 is “initiated but not ready for release” and 1 is “ready for export to dashboard or other media”',
  `internal_ready` tinyint(1) NOT NULL DEFAULT '0',
  `assay_component_endpoint_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `assay_function_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `normalized_data_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `burst_assay` tinyint unsigned NOT NULL DEFAULT '0',
  `key_positive_control` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signal_direction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intended_target_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intended_target_type_sub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intended_target_family` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intended_target_family_sub` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_viability_assay` tinyint(1) NOT NULL DEFAULT '0',
  `data_usability` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`aeid`),
  UNIQUE KEY `assay_component_endpoint_name` (`assay_component_endpoint_name`),
  KEY `assay_component_id` (`acid`),
  KEY `normalized_data_type` (`normalized_data_type`),
  KEY `assay_function_type` (`assay_function_type`),
  KEY `signal_direction` (`signal_direction`),
  KEY `internal_ready` (`internal_ready`),
  KEY `export_ready` (`export_ready`)
) ENGINE=InnoDB AUTO_INCREMENT=3341 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `assay_component_map` (
  `acid` int NOT NULL,
  `acsn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  UNIQUE KEY `unique_id_source_name` (`acid`,`acsn`),
  UNIQUE KEY `acsn` (`acsn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `assay_descriptions` (
  `aeid` int NOT NULL,
  `clowder_uid` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `assay_objectives` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `assay_throughput` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `scientific_principles` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `biological_responses` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `analytical_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `basic_procedures` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `experimental_system` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `xenobiotic_biotransformation` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `proprietary_elements` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`aeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `assay_list` (
  `assay_list_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`assay_list_id`)
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `assay_list_aeid` (
  `assay_list_aeid_id` int NOT NULL AUTO_INCREMENT,
  `aeid` int DEFAULT NULL,
  `assay_list_id` int DEFAULT NULL,
  PRIMARY KEY (`assay_list_aeid_id`)
) ENGINE=InnoDB AUTO_INCREMENT=488 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `assay_reagent` (
  `arid` int NOT NULL AUTO_INCREMENT,
  `aid` int NOT NULL,
  `reagent_name_value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reagent_name_value_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `culture_or_assay` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`arid`),
  KEY `assay_id` (`aid`),
  KEY `culture_or_assay` (`culture_or_assay`),
  KEY `reagent_name_value` (`reagent_name_value`),
  KEY `reagent_name_value_type` (`reagent_name_value_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9717 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `assay_reference` (
  `reference_id` int NOT NULL,
  `aid` int NOT NULL,
  `citation_id` int NOT NULL,
  PRIMARY KEY (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `assay_source` (
  `asid` int NOT NULL AUTO_INCREMENT,
  `assay_source_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_source_long_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assay_source_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`asid`),
  KEY `assay_source_long_name` (`assay_source_long_name`),
  KEY `assay_source_name` (`assay_source_name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `chemical` (
  `chid` int NOT NULL DEFAULT '0',
  `casn` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chnm` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `dsstox_substance_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`chid`),
  UNIQUE KEY `chnm` (`chnm`),
  UNIQUE KEY `casn` (`casn`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `chemical_analytical_qc` (
  `analytical_qc_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dsstox_substance_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `chnm` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `spid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qc_level` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pass_or_caution` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t0` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `t4` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stability_call` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `annotation` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `flags` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `average_mass` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `log10_vapor_pressure_OPERA_pred` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logKow_octanol_water_OPERA_pred` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`analytical_qc_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `chemical_lists` (
  `chemical_lists_id` int NOT NULL AUTO_INCREMENT,
  `chid` int DEFAULT NULL,
  `dsstox_substance_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_acronym` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `list_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`chemical_lists_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `citations` (
  `citation_id` int NOT NULL,
  `pmid` int DEFAULT NULL,
  `doi` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_source` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `other_id` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `citation` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `url` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`citation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `class` (
  `chaid` int NOT NULL AUTO_INCREMENT,
  `chid` int NOT NULL,
  `aclass` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avalue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`chaid`),
  KEY `fk_chemical_annotation_chemical1_idx` (`chid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `cytotox` (
  `chid` bigint DEFAULT NULL,
  `cytotox_median_raw` double DEFAULT NULL,
  `cytotox_mad` double DEFAULT NULL,
  `global_mad` double DEFAULT NULL,
  `cytotox_median_log` double DEFAULT NULL,
  `cytotox_median_um` double DEFAULT NULL,
  `cytotox_lower_bound_um` double DEFAULT NULL,
  `ntested` double DEFAULT NULL,
  `nhit` double DEFAULT NULL,
  `cytotox_lower_bound_log` double DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `etl_metadata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `src_tgt_table_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transformation_query` varchar(1048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `flyway_schema_history` (
  `installed_rank` int NOT NULL,
  `version` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `script` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `checksum` int DEFAULT NULL,
  `installed_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `installed_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `execution_time` int NOT NULL,
  `success` tinyint(1) NOT NULL,
  PRIMARY KEY (`installed_rank`),
  KEY `flyway_schema_history_s_idx` (`success`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `gene` (
  `entrez_gene_id` int NOT NULL,
  `official_full_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `official_symbol` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ncbi_taxon_id` int DEFAULT NULL,
  PRIMARY KEY (`entrez_gene_id`),
  UNIQUE KEY `entrez_gene_id` (`entrez_gene_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `intended_target` (
  `aeid` int NOT NULL,
  `target_id` int NOT NULL,
  `target_type` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  UNIQUE KEY `aeid_target_index` (`aeid`,`target_id`),
  UNIQUE KEY `aeid_target_source` (`aeid`,`target_id`,`target_type`),
  KEY `target_id_idx` (`target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `invitrodb_dd` (
  `invitrodb_dd_id` int NOT NULL AUTO_INCREMENT,
  `invitrodb_table` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invitrodb_field` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`invitrodb_dd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc0` (
  `m0id` bigint NOT NULL AUTO_INCREMENT,
  `acid` bigint unsigned DEFAULT '0',
  `spid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rowi` int DEFAULT NULL,
  `coli` int DEFAULT NULL,
  `wllt` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wllq` smallint NOT NULL,
  `conc` double DEFAULT NULL,
  `rval` double DEFAULT NULL,
  `srcf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clowder_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `git_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`m0id`),
  KEY `wllt` (`wllt`) USING BTREE,
  KEY `spid` (`spid`) USING BTREE,
  KEY `SPID/ACID` (`acid`,`spid`),
  KEY `srcf` (`srcf`),
  KEY `clowder_uid` (`clowder_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=818999611 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `mc1` (
  `m1id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `m0id` bigint unsigned DEFAULT NULL,
  `acid` bigint unsigned DEFAULT NULL,
  `cndx` int DEFAULT NULL,
  `repi` int DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`m1id`),
  KEY `acid` (`acid`) USING BTREE,
  KEY `m0id` (`m0id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=994841546 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `mc2` (
  `m2id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `m0id` bigint unsigned DEFAULT NULL,
  `acid` bigint unsigned DEFAULT NULL,
  `m1id` bigint unsigned DEFAULT NULL,
  `cval` double NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`m2id`),
  KEY `acid` (`acid`) USING BTREE,
  KEY `m0id` (`m0id`) USING BTREE,
  KEY `m1id` (`m1id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=927811467 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `mc2_acid` (
  `mc2_mthd_id` int NOT NULL,
  `acid` int NOT NULL,
  `exec_ordr` int NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mc2_mthd_id`,`acid`),
  UNIQUE KEY `acid` (`acid`,`exec_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc2_methods` (
  `mc2_mthd_id` int NOT NULL AUTO_INCREMENT,
  `mc2_mthd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mc2_mthd_id`),
  UNIQUE KEY `mc2_method` (`mc2_mthd`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc3` (
  `m3id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeid` bigint unsigned DEFAULT NULL,
  `m0id` bigint unsigned DEFAULT NULL,
  `acid` bigint unsigned DEFAULT NULL,
  `m1id` bigint unsigned DEFAULT NULL,
  `m2id` bigint unsigned DEFAULT NULL,
  `bval` double DEFAULT NULL,
  `pval` double DEFAULT NULL,
  `conc` double DEFAULT NULL,
  `resp` double NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`m3id`),
  KEY `aeid` (`aeid`) USING BTREE,
  KEY `acid` (`acid`) USING BTREE,
  KEY `m0id` (`m0id`) USING BTREE,
  KEY `m1id` (`m1id`) USING BTREE,
  KEY `m2id` (`m2id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1486506080 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `mc3_aeid` (
  `mc3_mthd_id` int NOT NULL,
  `aeid` int NOT NULL,
  `exec_ordr` int NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mc3_mthd_id`,`aeid`),
  UNIQUE KEY `aeid` (`aeid`,`exec_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc3_methods` (
  `mc3_mthd_id` int NOT NULL AUTO_INCREMENT,
  `mc3_mthd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mc3_mthd_id`),
  UNIQUE KEY `mc3_method` (`mc3_mthd`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc4` (
  `m4id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeid` bigint unsigned NOT NULL,
  `spid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bmad` double NOT NULL,
  `resp_max` double NOT NULL,
  `resp_min` double NOT NULL,
  `max_mean` double NOT NULL,
  `max_mean_conc` double NOT NULL,
  `min_mean` double NOT NULL,
  `min_mean_conc` double NOT NULL,
  `max_med` double NOT NULL,
  `max_med_conc` double NOT NULL,
  `min_med` double NOT NULL,
  `min_med_conc` double NOT NULL,
  `max_med_diff` double NOT NULL,
  `max_med_diff_conc` double NOT NULL,
  `conc_max` double DEFAULT NULL,
  `conc_min` double DEFAULT NULL,
  `nconc` int NOT NULL,
  `npts` int NOT NULL,
  `nrep` double NOT NULL,
  `nmed_gtbl_pos` int NOT NULL,
  `nmed_gtbl_neg` int NOT NULL,
  `tmpi` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`m4id`),
  KEY `aeid` (`aeid`) USING BTREE,
  KEY `idx_mc4_spid` (`spid`)
) ENGINE=InnoDB AUTO_INCREMENT=18737445 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc4_aeid` (
  `mc4_mthd_id` int NOT NULL,
  `aeid` int NOT NULL,
  `exec_ordr` int NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mc4_mthd_id`,`aeid`),
  UNIQUE KEY `aeid` (`aeid`,`exec_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc4_agg` (
  `aeid` bigint unsigned NOT NULL,
  `m0id` bigint unsigned NOT NULL,
  `m1id` bigint unsigned NOT NULL,
  `m2id` bigint unsigned NOT NULL,
  `m3id` bigint unsigned NOT NULL,
  `m4id` bigint unsigned NOT NULL,
  KEY `aeid` (`aeid`) USING BTREE,
  KEY `m4id` (`m4id`) USING BTREE,
  KEY `m3id` (`m3id`) USING BTREE,
  KEY `m2id` (`m2id`) USING BTREE,
  KEY `m1id` (`m1id`) USING BTREE,
  KEY `m0id` (`m0id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
CREATE TABLE `mc4_methods` (
  `mc4_mthd_id` int NOT NULL AUTO_INCREMENT,
  `mc4_mthd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`mc4_mthd_id`),
  UNIQUE KEY `mc4_method` (`mc4_mthd`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc4_param` (
  `m4id` bigint unsigned NOT NULL,
  `aeid` int NOT NULL,
  `model` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_param` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_val` double DEFAULT NULL,
  KEY `m4id` (`m4id`) USING BTREE,
  KEY `aeid` (`aeid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc5` (
  `m5id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `m4id` bigint unsigned NOT NULL,
  `aeid` bigint unsigned NOT NULL,
  `modl` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hitc` double DEFAULT NULL,
  `fitc` tinyint unsigned DEFAULT '1',
  `coff` double DEFAULT NULL,
  `actp` double DEFAULT NULL,
  `model_type` tinyint DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`m5id`),
  UNIQUE KEY `m5id` (`m5id`),
  KEY `aeid` (`aeid`) USING BTREE,
  KEY `fitc` (`fitc`) USING BTREE,
  KEY `m4id` (`m4id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21444395 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc5_aeid` (
  `aeid` bigint unsigned NOT NULL,
  `mc5_mthd_id` int unsigned NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mc5_mthd_id`,`aeid`),
  KEY `idx_mc5aeid_aeid` (`aeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc5_chid` (
  `m5id` bigint NOT NULL,
  `chid_rep` tinyint NOT NULL,
  PRIMARY KEY (`m5id`),
  KEY `chid_rep` (`chid_rep`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc5_fit_categories` (
  `fitc` int NOT NULL,
  `parent_fitc` int DEFAULT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`fitc`),
  KEY `idx_mc5fitcat_fitc` (`fitc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc5_methods` (
  `mc5_mthd_id` int NOT NULL AUTO_INCREMENT,
  `mc5_mthd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mc5_mthd_id`),
  UNIQUE KEY `mc5_methods` (`mc5_mthd`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc5_model_type` (
  `model_type` int NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`model_type`),
  KEY `idx_mc5_model_type` (`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc5_param` (
  `m5id` bigint unsigned NOT NULL,
  `aeid` int NOT NULL,
  `hit_param` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_val` double DEFAULT NULL,
  KEY `m5id` (`m5id`) USING BTREE,
  KEY `aeid` (`aeid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc6` (
  `m6id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `m5id` bigint unsigned NOT NULL,
  `m4id` bigint unsigned NOT NULL,
  `aeid` bigint unsigned NOT NULL,
  `mc6_mthd_id` bigint unsigned NOT NULL,
  `flag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`m6id`),
  KEY `aeid` (`aeid`) USING BTREE,
  KEY `m4id` (`m4id`) USING BTREE,
  KEY `m5id` (`m5id`) USING BTREE,
  KEY `mc6_mthd_id` (`mc6_mthd_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39048643 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc6_aeid` (
  `aeid` bigint unsigned NOT NULL,
  `mc6_mthd_id` int unsigned NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mc6_mthd_id`,`aeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc6_methods` (
  `mc6_mthd_id` int NOT NULL AUTO_INCREMENT,
  `mc6_mthd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nddr` tinyint(1) NOT NULL DEFAULT '0',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`mc6_mthd_id`),
  UNIQUE KEY `mc6_method` (`mc6_mthd`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mc7` (
  `m7id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `m4id` bigint unsigned NOT NULL,
  `aeid` bigint unsigned NOT NULL,
  `potency_val_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aed_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aed_val` double DEFAULT NULL,
  `aed_val_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interindividual_var_perc` double DEFAULT NULL,
  `httk_model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invitrodb_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `httk_version` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`m7id`),
  KEY `m4id` (`m4id`) USING BTREE,
  KEY `aeid` (`aeid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1508899 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `model_generic_chemical_ar_scores` (
  `CODE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `CASRN` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `DSSTox_GSID` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cytotox_median_um` double DEFAULT NULL,
  `cytotox_lower_bound_um` double DEFAULT NULL,
  `Agonist_AUC` double DEFAULT NULL,
  `Antagonist_AUC` double DEFAULT NULL,
  `pseudo_AC50_median` double DEFAULT NULL,
  `pseudo_AC50_min` double DEFAULT NULL,
  `pseudo_AC10_median` double DEFAULT NULL,
  `pseudo_AC10_min` double DEFAULT NULL,
  `pseudo_ACC_median` double DEFAULT NULL,
  `pseudo_ACC_min` double DEFAULT NULL,
  `pseudo_ACB_median` double DEFAULT NULL,
  `pseudo_ACB_min` double DEFAULT NULL,
  `Antagonist_Confidence_Score` double DEFAULT NULL,
  `Tox21_Confirmation_Assay_Flag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `model_generic_chemical_cerapp_score` (
  `CERAPP_ID` int DEFAULT NULL,
  `CASRN` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CHEMICAL_NAME` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `input_SMILES` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `SOURCE` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Canonical_SMIles` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `InChI` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `InChI_Key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Observed_class_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Observed_POTENCY_LEVEL_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nbr_yes_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `yes_score_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nbr_no_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_score_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active_concordance_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `inactive_concordance_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `consensus_2_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Potency_2_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Potency_class_2_binding` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Observed_class_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Observed_POTENCY_LEVEL_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nbr_yes_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `yes_score_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nbr_no_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_score_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active_concordance_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `inactive_concordance_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `consensus_2_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Potency_2_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Potency_class_2_agonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Observed_class_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Observed_POTENCY_LEVEL_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nbr_yes_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `yes_score_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `nbr_no_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `no_score_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `active_concordance_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `inactive_concordance_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `consensus_2_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Potency_2_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Potency_class_2_antagonist` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  KEY `CASRN` (`CASRN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `model_generic_chemical_compara_scores` (
  `CoMPARA_ID` bigint DEFAULT NULL,
  `casrn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `preferred_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `iupac` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `dsstox_substance_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Canonical_QSARr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `InChI_Code_QSARr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `InChI.Key_QSARr` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `consensus_binding` bigint DEFAULT NULL,
  `concordance_binding` double DEFAULT NULL,
  `nbr_models_binding` bigint DEFAULT NULL,
  `consensus_agonist` bigint DEFAULT NULL,
  `concordance_agonist` double DEFAULT NULL,
  `nbr_models_agonist` bigint DEFAULT NULL,
  `nbr_active` bigint DEFAULT NULL,
  `nbr_inactive` bigint DEFAULT NULL,
  `consensus_antagonist` bigint DEFAULT NULL,
  `concordance_antagonist` double DEFAULT NULL,
  `nbr_models_antagonist` bigint DEFAULT NULL,
  `salt_solvent` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `model_generic_chemical_er_scores` (
  `CODE` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `CASRN` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `DSSTox_GSID` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cytotox_median_um` double DEFAULT NULL,
  `cytotox_lower_bound_um` double DEFAULT NULL,
  `Agonist_AUC` double DEFAULT NULL,
  `Antagonist_AUC` double DEFAULT NULL,
  `pseudo_AC50_median` double DEFAULT NULL,
  `pseudo_AC50_min` double DEFAULT NULL,
  `pseudo_AC10_median` double DEFAULT NULL,
  `pseudo_AC10_min` double DEFAULT NULL,
  `pseudo_ACC_median` double DEFAULT NULL,
  `pseudo_ACC_min` double DEFAULT NULL,
  `pseudo_ACB_median` double DEFAULT NULL,
  `pseudo_ACB_min` double DEFAULT NULL,
  PRIMARY KEY (`CODE`),
  KEY `CODE` (`CASRN`,`DSSTox_GSID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `model_generic_chemical_hth295r_scores` (
  `dsstox_substance_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chnm` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `casn` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date` bigint DEFAULT NULL,
  `plate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `date_chnm_plate` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `conc_index` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `conc` double DEFAULT NULL,
  `OHPREG` double DEFAULT NULL,
  `PROG` double DEFAULT NULL,
  `OHPROG` double DEFAULT NULL,
  `DOC` double DEFAULT NULL,
  `CORTIC` double DEFAULT NULL,
  `X11DCORT` double DEFAULT NULL,
  `CORT` double DEFAULT NULL,
  `ANDR` double DEFAULT NULL,
  `TESTO` double DEFAULT NULL,
  `E1` double DEFAULT NULL,
  `E2` double DEFAULT NULL,
  `mMd` double DEFAULT NULL,
  `maxmMd` double DEFAULT NULL,
  `BMD` double DEFAULT NULL,
  `criticalVal` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `mv_json` (
  `m4id` bigint unsigned NOT NULL,
  `mc3_param` json DEFAULT NULL,
  `mc4_param` json DEFAULT NULL,
  `mc5_param` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `ontology` (
  `ontology_id` int NOT NULL AUTO_INCREMENT,
  `iri` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `label` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `definition` varchar(2048) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `src` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ontology_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1031 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `ontology_invitrodb` (
  `ontology_invitrodb_id` int NOT NULL AUTO_INCREMENT,
  `ontology_id` int DEFAULT NULL,
  `invitrodb_table` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invitrodb_id` int DEFAULT NULL,
  `invitrodb_column` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ontology_invitrodb_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44643 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `organism` (
  `ncbi_taxon_id` int NOT NULL,
  `taxon_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `common_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lineage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ncbi_taxon_id`),
  UNIQUE KEY `ncbi_taxon_id` (`ncbi_taxon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sample` (
  `spid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `chid` int DEFAULT NULL,
  `stkc` double DEFAULT NULL,
  `stkc_unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tested_conc_unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottle_barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bottle_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lot_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purity_percentage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `solubility` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`spid`),
  KEY `chid` (`chid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sample_legacy` (
  `spid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `spid_legacy` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`spid`),
  KEY `idx_sample_legacy_spid` (`spid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sc0` (
  `s0id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `acid` bigint unsigned NOT NULL,
  `spid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apid` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rowi` int DEFAULT NULL,
  `coli` int DEFAULT NULL,
  `wllt` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wllq` smallint NOT NULL,
  `conc` double DEFAULT NULL,
  `rval` double DEFAULT NULL,
  `srcf` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clowder_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `git_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`s0id`),
  KEY `acid` (`acid`) USING BTREE,
  KEY `wllt` (`wllt`) USING BTREE,
  KEY `spid` (`spid`) USING BTREE,
  KEY `srcf` (`srcf`),
  KEY `clowder_uid` (`clowder_uid`)
) ENGINE=InnoDB AUTO_INCREMENT=15119934 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sc1` (
  `s1id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `s0id` int NOT NULL,
  `acid` int NOT NULL,
  `aeid` int NOT NULL,
  `conc` double DEFAULT NULL,
  `bval` double DEFAULT NULL,
  `pval` double DEFAULT NULL,
  `resp` double NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`s1id`),
  KEY `s0id` (`s0id`),
  KEY `acid` (`acid`),
  KEY `idx_sc1_aeid` (`aeid`)
) ENGINE=InnoDB AUTO_INCREMENT=22830391 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sc1_aeid` (
  `sc1_mthd_id` int NOT NULL,
  `aeid` int NOT NULL,
  `exec_ordr` int NOT NULL DEFAULT '1',
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sc1_mthd_id`,`aeid`),
  UNIQUE KEY `aeid` (`aeid`,`exec_ordr`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sc1_methods` (
  `sc1_mthd_id` int NOT NULL AUTO_INCREMENT,
  `sc1_mthd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sc1_mthd_id`),
  UNIQUE KEY `sc1_method` (`sc1_mthd`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sc2` (
  `s2id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `aeid` int NOT NULL,
  `spid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bmad` double NOT NULL,
  `max_med` double NOT NULL,
  `coff` double NOT NULL,
  `hitc` double NOT NULL,
  `tmpi` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`s2id`),
  KEY `acid` (`aeid`)
) ENGINE=InnoDB AUTO_INCREMENT=7534175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sc2_aeid` (
  `sc2_mthd_id` int NOT NULL,
  `aeid` int NOT NULL,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sc2_mthd_id`,`aeid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sc2_agg` (
  `aeid` bigint unsigned NOT NULL,
  `s0id` bigint unsigned NOT NULL,
  `s1id` bigint unsigned NOT NULL,
  `s2id` bigint unsigned NOT NULL,
  KEY `aeid` (`aeid`) USING BTREE,
  KEY `s2id` (`s2id`) USING BTREE,
  KEY `s1id` (`s1id`) USING BTREE,
  KEY `s0id` (`s0id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sc2_chid` (
  `s2id` bigint NOT NULL,
  `chid_rep` tinyint NOT NULL,
  PRIMARY KEY (`s2id`),
  KEY `chid_rep` (`chid_rep`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `sc2_methods` (
  `sc2_mthd_id` int NOT NULL AUTO_INCREMENT,
  `sc2_mthd` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_by` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`sc2_mthd_id`),
  UNIQUE KEY `sc2_method` (`sc2_mthd`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `schema_changes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `clowder_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `short_description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `spid_map` (
  `spid_map_id` int NOT NULL AUTO_INCREMENT,
  `spid_source` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `srcf` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `asid` int DEFAULT NULL,
  `asnm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `aid` int NOT NULL,
  `anm` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `maxc_before_correction` double DEFAULT NULL,
  `maxc_after_correction` double DEFAULT NULL,
  `tested_conc_unit` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `npts` double DEFAULT NULL,
  `spid` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conc_correction_factor` double DEFAULT NULL,
  `df_calc` double NOT NULL,
  `diff_log_plated_conc_insource` double DEFAULT NULL,
  `plate_mapping_confidence` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stkc` double DEFAULT NULL,
  `stkc_unit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`spid_map_id`),
  KEY `index2` (`spid_source`),
  KEY `index3` (`srcf`),
  KEY `index4` (`asnm`),
  KEY `index5` (`spid`),
  KEY `asid` (`asid`),
  KEY `type` (`type`),
  KEY `aid` (`aid`),
  KEY `anm` (`anm`)
) ENGINE=InnoDB AUTO_INCREMENT=901358 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
CREATE TABLE `tox21_antag_summary` (
  `Assay_Name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Protocol_Name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Name_of_control_compound` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Concentration_used_in_antagonist_mode` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Hill_Coef` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Calculated_ECXX` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Online_Validation_EC50` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Online_Screening_EC50` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Validation_sample_size` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `Screening_sample_size` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `aid` bigint DEFAULT NULL,
  `Antag_assay_name` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
