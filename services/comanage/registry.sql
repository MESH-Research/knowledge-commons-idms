-- MySQL dump 10.19  Distrib 10.3.39-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: registry
-- ------------------------------------------------------
-- Server version	10.3.39-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cm_ad_hoc_attributes`
--

DROP TABLE IF EXISTS `cm_ad_hoc_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ad_hoc_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(128) DEFAULT NULL,
  `value` varchar(256) DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `source_ad_hoc_attribute_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ad_hoc_attribute_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_ad_hoc_attributes_co_department_id_fk` (`co_department_id`),
  KEY `cm_ad_hoc_attributes_source_ad_hoc_attribute_id_fk` (`source_ad_hoc_attribute_id`),
  KEY `cm_ad_hoc_attributes_i1` (`co_person_role_id`),
  KEY `cm_ad_hoc_attributes_i2` (`org_identity_id`),
  KEY `cm_ad_hoc_attributes_i3` (`tag`),
  KEY `cm_ad_hoc_attributes_i4` (`ad_hoc_attribute_id`),
  KEY `cm_ad_hoc_attributes_i5` (`organization_id`),
  CONSTRAINT `cm_ad_hoc_attributes_ad_hoc_attribute_id_fk` FOREIGN KEY (`ad_hoc_attribute_id`) REFERENCES `cm_ad_hoc_attributes` (`id`),
  CONSTRAINT `cm_ad_hoc_attributes_co_department_id_fk` FOREIGN KEY (`co_department_id`) REFERENCES `cm_co_departments` (`id`),
  CONSTRAINT `cm_ad_hoc_attributes_co_person_role_id_fk` FOREIGN KEY (`co_person_role_id`) REFERENCES `cm_co_person_roles` (`id`),
  CONSTRAINT `cm_ad_hoc_attributes_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_ad_hoc_attributes_organization_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `cm_organizations` (`id`),
  CONSTRAINT `cm_ad_hoc_attributes_source_ad_hoc_attribute_id_fk` FOREIGN KEY (`source_ad_hoc_attribute_id`) REFERENCES `cm_ad_hoc_attributes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ad_hoc_attributes`
--

LOCK TABLES `cm_ad_hoc_attributes` WRITE;
/*!40000 ALTER TABLE `cm_ad_hoc_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ad_hoc_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_addresses`
--

DROP TABLE IF EXISTS `cm_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `street` text DEFAULT NULL,
  `room` varchar(64) DEFAULT NULL,
  `locality` varchar(128) DEFAULT NULL,
  `state` varchar(128) DEFAULT NULL,
  `postal_code` varchar(16) DEFAULT NULL,
  `country` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `language` varchar(16) DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `source_address_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_addresses_i1` (`co_person_role_id`),
  KEY `cm_addresses_i2` (`org_identity_id`),
  KEY `cm_addresses_i3` (`address_id`),
  KEY `cm_addresses_i4` (`source_address_id`),
  KEY `cm_addresses_i5` (`co_department_id`),
  KEY `cm_addresses_i6` (`organization_id`),
  CONSTRAINT `cm_addresses_address_id_fk` FOREIGN KEY (`address_id`) REFERENCES `cm_addresses` (`id`),
  CONSTRAINT `cm_addresses_co_department_id_fk` FOREIGN KEY (`co_department_id`) REFERENCES `cm_co_departments` (`id`),
  CONSTRAINT `cm_addresses_co_person_role_id_fk` FOREIGN KEY (`co_person_role_id`) REFERENCES `cm_co_person_roles` (`id`),
  CONSTRAINT `cm_addresses_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_addresses_organization_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `cm_organizations` (`id`),
  CONSTRAINT `cm_addresses_source_address_id_fk` FOREIGN KEY (`source_address_id`) REFERENCES `cm_addresses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_addresses`
--

LOCK TABLES `cm_addresses` WRITE;
/*!40000 ALTER TABLE `cm_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_api_users`
--

DROP TABLE IF EXISTS `cm_api_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `privileged` tinyint(1) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `remote_ip` varchar(80) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `api_user_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_api_users_co_id_fk` (`co_id`),
  KEY `cm_api_users_i1` (`username`),
  KEY `cm_api_users_i2` (`api_user_id`),
  CONSTRAINT `cm_api_users_api_user_id_fk` FOREIGN KEY (`api_user_id`) REFERENCES `cm_api_users` (`id`),
  CONSTRAINT `cm_api_users_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_api_users`
--

LOCK TABLES `cm_api_users` WRITE;
/*!40000 ALTER TABLE `cm_api_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_api_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_application_preferences`
--

DROP TABLE IF EXISTS `cm_application_preferences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_application_preferences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `tag` varchar(128) DEFAULT NULL,
  `value` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `application_preference_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_application_preferences_application_preference_id_fk` (`application_preference_id`),
  KEY `cm_application_preferences_i1` (`co_person_id`,`tag`),
  CONSTRAINT `cm_application_preferences_application_preference_id_fk` FOREIGN KEY (`application_preference_id`) REFERENCES `cm_application_preferences` (`id`),
  CONSTRAINT `cm_application_preferences_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_application_preferences`
--

LOCK TABLES `cm_application_preferences` WRITE;
/*!40000 ALTER TABLE `cm_application_preferences` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_application_preferences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_attribute_enumerations`
--

DROP TABLE IF EXISTS `cm_attribute_enumerations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_attribute_enumerations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `attribute` varchar(80) DEFAULT NULL,
  `optvalue` varchar(128) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `dictionary_id` int(11) DEFAULT NULL,
  `allow_other` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `attribute_enumeration_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_attribute_enumerations_dictionary_id_fk` (`dictionary_id`),
  KEY `cm_attribute_enumerations_i1` (`co_id`,`attribute`,`status`),
  KEY `cm_attribute_enumerations_i2` (`attribute_enumeration_id`),
  CONSTRAINT `cm_attribute_enumerations_attribute_enumeration_id_fk` FOREIGN KEY (`attribute_enumeration_id`) REFERENCES `cm_attribute_enumerations` (`id`),
  CONSTRAINT `cm_attribute_enumerations_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_attribute_enumerations_dictionary_id_fk` FOREIGN KEY (`dictionary_id`) REFERENCES `cm_dictionaries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_attribute_enumerations`
--

LOCK TABLES `cm_attribute_enumerations` WRITE;
/*!40000 ALTER TABLE `cm_attribute_enumerations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_attribute_enumerations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_authentication_events`
--

DROP TABLE IF EXISTS `cm_authentication_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_authentication_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authenticated_identifier` varchar(256) DEFAULT NULL,
  `authentication_event` varchar(2) DEFAULT NULL,
  `remote_ip` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_authentication_events_i1` (`authenticated_identifier`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_authentication_events`
--

LOCK TABLES `cm_authentication_events` WRITE;
/*!40000 ALTER TABLE `cm_authentication_events` DISABLE KEYS */;
INSERT INTO `cm_authentication_events` VALUES (1,'admin','IN','172.20.0.2','2025-03-27 15:01:58','2025-03-27 15:01:58'),(2,'admin','IN','172.20.0.2','2025-05-09 17:04:24','2025-05-09 17:04:24'),(3,'admin','IN','172.20.0.2','2025-05-09 17:23:21','2025-05-09 17:23:21'),(4,'admin','IN','172.20.0.2','2025-05-09 17:31:30','2025-05-09 17:31:30');
/*!40000 ALTER TABLE `cm_authentication_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_authenticator_statuses`
--

DROP TABLE IF EXISTS `cm_authenticator_statuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_authenticator_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authenticator_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `locked` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_authenticator_statuses_i1` (`authenticator_id`,`co_person_id`),
  KEY `cm_authenticator_statuses_co_person_id_fk` (`co_person_id`),
  CONSTRAINT `cm_authenticator_statuses_authenticator_id_fk` FOREIGN KEY (`authenticator_id`) REFERENCES `cm_authenticators` (`id`),
  CONSTRAINT `cm_authenticator_statuses_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_authenticator_statuses`
--

LOCK TABLES `cm_authenticator_statuses` WRITE;
/*!40000 ALTER TABLE `cm_authenticator_statuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_authenticator_statuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_authenticators`
--

DROP TABLE IF EXISTS `cm_authenticators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_authenticators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `co_message_template_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_authenticators_co_message_template_id_fk` (`co_message_template_id`),
  KEY `cm_authenticators_i1` (`co_id`),
  KEY `cm_authenticators_i2` (`co_id`,`plugin`),
  CONSTRAINT `cm_authenticators_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_authenticators_co_message_template_id_fk` FOREIGN KEY (`co_message_template_id`) REFERENCES `cm_co_message_templates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_authenticators`
--

LOCK TABLES `cm_authenticators` WRITE;
/*!40000 ALTER TABLE `cm_authenticators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_authenticators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_civicrm_sources`
--

DROP TABLE IF EXISTS `cm_civicrm_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_civicrm_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `apiroot` varchar(256) DEFAULT NULL,
  `sitekey` varchar(128) DEFAULT NULL,
  `userkey` varchar(128) DEFAULT NULL,
  `eppnsuffix` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_civicrm_sources_i1` (`org_identity_source_id`),
  CONSTRAINT `cm_civicrm_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_civicrm_sources`
--

LOCK TABLES `cm_civicrm_sources` WRITE;
/*!40000 ALTER TABLE `cm_civicrm_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_civicrm_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_clusters`
--

DROP TABLE IF EXISTS `cm_clusters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `cluster_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_clusters_i1` (`co_id`),
  KEY `cm_clusters_i2` (`cluster_id`),
  CONSTRAINT `cm_clusters_cluster_id_fk` FOREIGN KEY (`cluster_id`) REFERENCES `cm_clusters` (`id`),
  CONSTRAINT `cm_clusters_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_clusters`
--

LOCK TABLES `cm_clusters` WRITE;
/*!40000 ALTER TABLE `cm_clusters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_clusters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_cmp_enrollment_attributes`
--

DROP TABLE IF EXISTS `cm_cmp_enrollment_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_cmp_enrollment_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cmp_enrollment_configuration_id` int(11) NOT NULL,
  `attribute` varchar(80) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `env_name` varchar(80) DEFAULT NULL,
  `ldap_name` varchar(80) DEFAULT NULL,
  `saml_name` varchar(80) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_cmp_enrollment_attributes_i2` (`cmp_enrollment_configuration_id`,`attribute`,`type`),
  KEY `cm_cmp_enrollment_attributes_i1` (`cmp_enrollment_configuration_id`),
  CONSTRAINT `cm_cmp_enrollment_attributes_cmp_enrollment_configuration_id_fk` FOREIGN KEY (`cmp_enrollment_configuration_id`) REFERENCES `cm_cmp_enrollment_configurations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_cmp_enrollment_attributes`
--

LOCK TABLES `cm_cmp_enrollment_attributes` WRITE;
/*!40000 ALTER TABLE `cm_cmp_enrollment_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_cmp_enrollment_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_cmp_enrollment_configurations`
--

DROP TABLE IF EXISTS `cm_cmp_enrollment_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_cmp_enrollment_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `attrs_from_ldap` tinyint(1) DEFAULT NULL,
  `attrs_from_saml` tinyint(1) DEFAULT NULL,
  `attrs_from_env` tinyint(1) DEFAULT NULL,
  `attrs_from_coef` tinyint(1) DEFAULT NULL,
  `authn_events_record_apiusers` tinyint(1) DEFAULT NULL,
  `pool_org_identities` tinyint(1) DEFAULT NULL,
  `eds_help_url` varchar(256) DEFAULT NULL,
  `eds_preferred_idps` text DEFAULT NULL,
  `eds_hidden_idps` text DEFAULT NULL,
  `redirect_on_logout` varchar(1024) DEFAULT NULL,
  `app_base` varchar(64) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_cmp_enrollment_configurations`
--

LOCK TABLES `cm_cmp_enrollment_configurations` WRITE;
/*!40000 ALTER TABLE `cm_cmp_enrollment_configurations` DISABLE KEYS */;
INSERT INTO `cm_cmp_enrollment_configurations` VALUES (1,'CMP Enrollment Configuration',0,0,0,1,1,0,NULL,NULL,NULL,NULL,'/','A','2025-03-27 15:01:41','2025-05-09 17:31:30');
/*!40000 ALTER TABLE `cm_cmp_enrollment_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_announcement_channels`
--

DROP TABLE IF EXISTS `cm_co_announcement_channels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_announcement_channels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `author_co_group_id` int(11) DEFAULT NULL,
  `reader_co_group_id` int(11) DEFAULT NULL,
  `register_notifications` tinyint(1) DEFAULT NULL,
  `publish_html` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_announcement_channel_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_announcement_channels_author_co_group_id_fk` (`author_co_group_id`),
  KEY `cm_co_announcement_channels_reader_co_group_id_fk` (`reader_co_group_id`),
  KEY `cm_co_announcement_channels_i1` (`co_id`),
  KEY `cm_co_announcement_channels_i2` (`co_announcement_channel_id`),
  KEY `cm_co_announcement_channels_i3` (`name`),
  CONSTRAINT `cm_co_announcement_channels_author_co_group_id_fk` FOREIGN KEY (`author_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_announcement_channels_co_announcement_channel_id_fk` FOREIGN KEY (`co_announcement_channel_id`) REFERENCES `cm_co_announcement_channels` (`id`),
  CONSTRAINT `cm_co_announcement_channels_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_announcement_channels_reader_co_group_id_fk` FOREIGN KEY (`reader_co_group_id`) REFERENCES `cm_co_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_announcement_channels`
--

LOCK TABLES `cm_co_announcement_channels` WRITE;
/*!40000 ALTER TABLE `cm_co_announcement_channels` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_announcement_channels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_announcements`
--

DROP TABLE IF EXISTS `cm_co_announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_announcements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_announcement_channel_id` int(11) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `poster_co_person_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_announcement_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_announcements_co_announcement_channel_id_fk` (`co_announcement_channel_id`),
  KEY `cm_co_announcements_poster_co_person_id_fk` (`poster_co_person_id`),
  KEY `cm_co_announcements_i2` (`co_announcement_id`),
  KEY `cm_co_announcements_i3` (`title`),
  CONSTRAINT `cm_co_announcements_co_announcement_channel_id_fk` FOREIGN KEY (`co_announcement_channel_id`) REFERENCES `cm_co_announcement_channels` (`id`),
  CONSTRAINT `cm_co_announcements_co_announcement_id_fk` FOREIGN KEY (`co_announcement_id`) REFERENCES `cm_co_announcements` (`id`),
  CONSTRAINT `cm_co_announcements_poster_co_person_id_fk` FOREIGN KEY (`poster_co_person_id`) REFERENCES `cm_co_people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_announcements`
--

LOCK TABLES `cm_co_announcements` WRITE;
/*!40000 ALTER TABLE `cm_co_announcements` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_announcements_widgets`
--

DROP TABLE IF EXISTS `cm_co_announcements_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_announcements_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_dashboard_widget_id` int(11) DEFAULT NULL,
  `co_announcement_channel_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_announcements_widgets_i1` (`co_dashboard_widget_id`),
  KEY `cm_co_announcements_widgets_co_announcement_channel_id_fk` (`co_announcement_channel_id`),
  CONSTRAINT `cm_co_announcements_widgets_co_announcement_channel_id_fk` FOREIGN KEY (`co_announcement_channel_id`) REFERENCES `cm_co_announcement_channels` (`id`),
  CONSTRAINT `cm_co_announcements_widgets_co_dashboard_widget_id_fk` FOREIGN KEY (`co_dashboard_widget_id`) REFERENCES `cm_co_dashboard_widgets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_announcements_widgets`
--

LOCK TABLES `cm_co_announcements_widgets` WRITE;
/*!40000 ALTER TABLE `cm_co_announcements_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_announcements_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_dashboard_widgets`
--

DROP TABLE IF EXISTS `cm_co_dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_dashboard_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_dashboard_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `header` longtext DEFAULT NULL,
  `footer` longtext DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_dashboard_widget_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_dashboard_widgets_co_dashboard_id_fk` (`co_dashboard_id`),
  KEY `cm_co_dashboard_widgets_i2` (`co_dashboard_widget_id`),
  CONSTRAINT `cm_co_dashboard_widgets_co_dashboard_id_fk` FOREIGN KEY (`co_dashboard_id`) REFERENCES `cm_co_dashboards` (`id`),
  CONSTRAINT `cm_co_dashboard_widgets_co_dashboard_widget_id_fk` FOREIGN KEY (`co_dashboard_widget_id`) REFERENCES `cm_co_dashboard_widgets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_dashboard_widgets`
--

LOCK TABLES `cm_co_dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `cm_co_dashboard_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_dashboards`
--

DROP TABLE IF EXISTS `cm_co_dashboards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_dashboards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `header_text` text DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `visibility` varchar(2) DEFAULT NULL,
  `visibility_co_group_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_dashboard_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_dashboards_visibility_co_group_id_fk` (`visibility_co_group_id`),
  KEY `cm_co_dashboards_i1` (`co_id`),
  KEY `cm_co_dashboards_i2` (`co_dashboard_id`),
  CONSTRAINT `cm_co_dashboards_co_dashboard_id_fk` FOREIGN KEY (`co_dashboard_id`) REFERENCES `cm_co_dashboards` (`id`),
  CONSTRAINT `cm_co_dashboards_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_dashboards_visibility_co_group_id_fk` FOREIGN KEY (`visibility_co_group_id`) REFERENCES `cm_co_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_dashboards`
--

LOCK TABLES `cm_co_dashboards` WRITE;
/*!40000 ALTER TABLE `cm_co_dashboards` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_dashboards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_departments`
--

DROP TABLE IF EXISTS `cm_co_departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `saml_scope` varchar(256) DEFAULT NULL,
  `logo_url` varchar(256) DEFAULT NULL,
  `introduction` text DEFAULT NULL,
  `leadership_co_group_id` int(11) DEFAULT NULL,
  `administrative_co_group_id` int(11) DEFAULT NULL,
  `support_co_group_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_departments_leadership_co_group_id_fk` (`leadership_co_group_id`),
  KEY `cm_co_departments_administrative_co_group_id_fk` (`administrative_co_group_id`),
  KEY `cm_co_departments_support_co_group_id_fk` (`support_co_group_id`),
  KEY `cm_co_departments_co_department_id_fk` (`co_department_id`),
  KEY `cm_co_departments_i1` (`co_id`),
  KEY `cm_co_departments_i2` (`cou_id`),
  KEY `cm_co_departments_i3` (`co_id`,`name`),
  CONSTRAINT `cm_co_departments_administrative_co_group_id_fk` FOREIGN KEY (`administrative_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_departments_co_department_id_fk` FOREIGN KEY (`co_department_id`) REFERENCES `cm_co_departments` (`id`),
  CONSTRAINT `cm_co_departments_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_departments_cou_id_fk` FOREIGN KEY (`cou_id`) REFERENCES `cm_cous` (`id`),
  CONSTRAINT `cm_co_departments_leadership_co_group_id_fk` FOREIGN KEY (`leadership_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_departments_support_co_group_id_fk` FOREIGN KEY (`support_co_group_id`) REFERENCES `cm_co_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_departments`
--

LOCK TABLES `cm_co_departments` WRITE;
/*!40000 ALTER TABLE `cm_co_departments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_eligibility_widgets`
--

DROP TABLE IF EXISTS `cm_co_eligibility_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_eligibility_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_dashboard_widget_id` int(11) DEFAULT NULL,
  `mode` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_eligibility_widgets_i1` (`co_dashboard_widget_id`),
  CONSTRAINT `cm_co_eligibility_widgets_co_dashboard_widget_id_fk` FOREIGN KEY (`co_dashboard_widget_id`) REFERENCES `cm_co_dashboard_widgets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_eligibility_widgets`
--

LOCK TABLES `cm_co_eligibility_widgets` WRITE;
/*!40000 ALTER TABLE `cm_co_eligibility_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_eligibility_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_email_address_widgets`
--

DROP TABLE IF EXISTS `cm_co_email_address_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_email_address_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) DEFAULT NULL,
  `max_allowed` int(11) DEFAULT NULL,
  `verification_validity` int(11) DEFAULT NULL,
  `co_message_template_id` int(11) DEFAULT NULL,
  `co_dashboard_widget_id` int(11) DEFAULT NULL,
  `allow_replace` tinyint(1) DEFAULT NULL,
  `retain_last` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_email_address_widgets_i1` (`co_dashboard_widget_id`),
  KEY `cm_co_email_address_widgets_co_message_template_id_fk` (`co_message_template_id`),
  CONSTRAINT `cm_co_email_address_widgets_co_dashboard_widget_id_fk` FOREIGN KEY (`co_dashboard_widget_id`) REFERENCES `cm_co_dashboard_widgets` (`id`),
  CONSTRAINT `cm_co_email_address_widgets_co_message_template_id_fk` FOREIGN KEY (`co_message_template_id`) REFERENCES `cm_co_message_templates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_email_address_widgets`
--

LOCK TABLES `cm_co_email_address_widgets` WRITE;
/*!40000 ALTER TABLE `cm_co_email_address_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_email_address_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_email_lists`
--

DROP TABLE IF EXISTS `cm_co_email_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_email_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `admins_co_group_id` int(11) DEFAULT NULL,
  `members_co_group_id` int(11) DEFAULT NULL,
  `moderators_co_group_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_email_list_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_email_lists_admins_co_group_id_fk` (`admins_co_group_id`),
  KEY `cm_co_email_lists_members_co_group_id_fk` (`members_co_group_id`),
  KEY `cm_co_email_lists_moderators_co_group_id_fk` (`moderators_co_group_id`),
  KEY `cm_co_email_lists_i1` (`co_id`),
  KEY `cm_co_email_lists_i2` (`co_email_list_id`),
  CONSTRAINT `cm_co_email_lists_admins_co_group_id_fk` FOREIGN KEY (`admins_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_email_lists_co_email_list_id_fk` FOREIGN KEY (`co_email_list_id`) REFERENCES `cm_co_email_lists` (`id`),
  CONSTRAINT `cm_co_email_lists_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_email_lists_members_co_group_id_fk` FOREIGN KEY (`members_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_email_lists_moderators_co_group_id_fk` FOREIGN KEY (`moderators_co_group_id`) REFERENCES `cm_co_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_email_lists`
--

LOCK TABLES `cm_co_email_lists` WRITE;
/*!40000 ALTER TABLE `cm_co_email_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_email_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_attribute_defaults`
--

DROP TABLE IF EXISTS `cm_co_enrollment_attribute_defaults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_attribute_defaults` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_attribute_id` int(11) NOT NULL,
  `affiliation` varchar(32) DEFAULT NULL,
  `value` varchar(80) DEFAULT NULL,
  `modifiable` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_attribute_default_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_attribute_defaults_i1` (`co_enrollment_attribute_id`),
  KEY `cm_co_enrollment_attribute_defaults_i2` (`co_enrollment_attribute_default_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_attribute_defaults`
--

LOCK TABLES `cm_co_enrollment_attribute_defaults` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_attribute_defaults` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_attribute_defaults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_attributes`
--

DROP TABLE IF EXISTS `cm_co_enrollment_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `label` varchar(80) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `attribute` varchar(80) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `required_fields` varchar(160) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `hidden` tinyint(1) DEFAULT NULL,
  `copy_to_coperson` tinyint(1) DEFAULT NULL,
  `ignore_authoritative` tinyint(1) DEFAULT NULL,
  `default_env` varchar(80) DEFAULT NULL,
  `login` tinyint(1) DEFAULT NULL,
  `language` varchar(16) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_attribute_id` int(11) DEFAULT NULL,
  `configuration_label_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_attributes_co_enrollment_attribute_id_fk` (`co_enrollment_attribute_id`),
  KEY `cm_co_enrollment_attributes_i1` (`co_enrollment_flow_id`),
  KEY `cm_co_enrollment_attributes_i2` (`configuration_label_id`),
  CONSTRAINT `cm_co_enrollment_attributes_co_enrollment_attribute_id_fk` FOREIGN KEY (`co_enrollment_attribute_id`) REFERENCES `cm_co_enrollment_attributes` (`id`),
  CONSTRAINT `cm_co_enrollment_attributes_co_enrollment_flow_id_fk` FOREIGN KEY (`co_enrollment_flow_id`) REFERENCES `cm_co_enrollment_flows` (`id`),
  CONSTRAINT `cm_co_enrollment_attributes_configuration_label_id_fk` FOREIGN KEY (`configuration_label_id`) REFERENCES `cm_configuration_labels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_attributes`
--

LOCK TABLES `cm_co_enrollment_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_authenticators`
--

DROP TABLE IF EXISTS `cm_co_enrollment_authenticators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_authenticators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `authenticator_id` int(11) NOT NULL,
  `required` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_authenticator_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_authenticators_authenticator_id_fk` (`authenticator_id`),
  KEY `cm_co_enrollment_authenticators_i1` (`co_enrollment_flow_id`),
  KEY `cm_co_enrollment_authenticators_i2` (`co_enrollment_authenticator_id`),
  CONSTRAINT `cm_co_enrollment_authenticators_authenticator_id_fk` FOREIGN KEY (`authenticator_id`) REFERENCES `cm_authenticators` (`id`),
  CONSTRAINT `cm_co_enrollment_authenticators_co_enrollment_flow_id_fk` FOREIGN KEY (`co_enrollment_flow_id`) REFERENCES `cm_co_enrollment_flows` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_authenticators`
--

LOCK TABLES `cm_co_enrollment_authenticators` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_authenticators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_authenticators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_clusters`
--

DROP TABLE IF EXISTS `cm_co_enrollment_clusters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_clusters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `cluster_id` int(11) NOT NULL,
  `enabled` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_cluster_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_clusters_co_enrollment_cluster_id_fk` (`co_enrollment_cluster_id`),
  KEY `cm_co_enrollment_clusters_i1` (`co_enrollment_flow_id`),
  KEY `cm_co_enrollment_clusters_i2` (`cluster_id`),
  CONSTRAINT `cm_co_enrollment_clusters_cluster_id_fk` FOREIGN KEY (`cluster_id`) REFERENCES `cm_clusters` (`id`),
  CONSTRAINT `cm_co_enrollment_clusters_co_enrollment_cluster_id_fk` FOREIGN KEY (`co_enrollment_cluster_id`) REFERENCES `cm_co_enrollment_clusters` (`id`),
  CONSTRAINT `cm_co_enrollment_clusters_co_enrollment_flow_id_fk` FOREIGN KEY (`co_enrollment_flow_id`) REFERENCES `cm_co_enrollment_flows` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_clusters`
--

LOCK TABLES `cm_co_enrollment_clusters` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_clusters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_clusters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_flow_wedges`
--

DROP TABLE IF EXISTS `cm_co_enrollment_flow_wedges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_flow_wedges` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_flow_wedge_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_flow_wedges_i1` (`co_enrollment_flow_id`),
  KEY `cm_co_enrollment_flow_wedges_i2` (`co_enrollment_flow_wedge_id`),
  CONSTRAINT `cm_co_enrollment_flow_wedges_co_enrollment_flow_id_fk` FOREIGN KEY (`co_enrollment_flow_id`) REFERENCES `cm_co_enrollment_flows` (`id`),
  CONSTRAINT `cm_co_enrollment_flow_wedges_co_enrollment_flow_wedge_id_fk` FOREIGN KEY (`co_enrollment_flow_wedge_id`) REFERENCES `cm_co_enrollment_flow_wedges` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_flow_wedges`
--

LOCK TABLES `cm_co_enrollment_flow_wedges` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_flow_wedges` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_flow_wedges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_flows`
--

DROP TABLE IF EXISTS `cm_co_enrollment_flows`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_flows` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `sor_label` varchar(40) DEFAULT NULL,
  `co_id` int(11) NOT NULL,
  `authz_level` varchar(2) DEFAULT NULL,
  `authz_cou_id` int(11) DEFAULT NULL,
  `authz_co_group_id` int(11) DEFAULT NULL,
  `my_identity_shortcut` tinyint(1) DEFAULT NULL,
  `match_policy` varchar(2) DEFAULT NULL,
  `match_server_id` int(11) DEFAULT NULL,
  `enable_person_find` tinyint(1) DEFAULT NULL,
  `approval_required` tinyint(1) DEFAULT NULL,
  `approver_co_group_id` int(11) DEFAULT NULL,
  `approval_confirmation_mode` varchar(2) DEFAULT NULL,
  `approval_require_comment` varchar(2) DEFAULT NULL,
  `verify_email` tinyint(1) DEFAULT NULL,
  `email_verification_mode` varchar(2) DEFAULT NULL,
  `invitation_validity` int(11) DEFAULT NULL,
  `regenerate_expired_verification` tinyint(1) DEFAULT NULL,
  `require_authn` tinyint(1) DEFAULT NULL,
  `notification_co_group_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `notify_from` varchar(256) DEFAULT NULL,
  `verification_subject` varchar(256) DEFAULT NULL,
  `verification_body` text DEFAULT NULL,
  `verification_template_id` int(11) DEFAULT NULL,
  `request_vetting` tinyint(1) DEFAULT NULL,
  `notify_on_approval` tinyint(1) DEFAULT NULL,
  `approval_subject` varchar(256) DEFAULT NULL,
  `approval_body` text DEFAULT NULL,
  `approval_template_id` int(11) DEFAULT NULL,
  `approver_template_id` int(11) DEFAULT NULL,
  `denial_template_id` int(11) DEFAULT NULL,
  `notify_on_finalize` tinyint(1) DEFAULT NULL,
  `finalization_template_id` int(11) DEFAULT NULL,
  `introduction_text` text DEFAULT NULL,
  `conclusion_text` text DEFAULT NULL,
  `introduction_text_pa` text DEFAULT NULL,
  `t_and_c_mode` varchar(2) DEFAULT NULL,
  `redirect_on_submit` varchar(1024) DEFAULT NULL,
  `redirect_on_confirm` varchar(1024) DEFAULT NULL,
  `redirect_on_finalize` varchar(1024) DEFAULT NULL,
  `return_url_allowlist` text DEFAULT NULL,
  `ignore_authoritative` tinyint(1) DEFAULT NULL,
  `duplicate_mode` varchar(2) DEFAULT NULL,
  `co_theme_id` int(11) DEFAULT NULL,
  `theme_stacking` varchar(2) DEFAULT NULL,
  `establish_authenticators` tinyint(1) DEFAULT NULL,
  `establish_cluster_accounts` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_flow_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_flows_authz_cou_id_fk` (`authz_cou_id`),
  KEY `cm_co_enrollment_flows_authz_co_group_id_fk` (`authz_co_group_id`),
  KEY `cm_co_enrollment_flows_match_server_id_fk` (`match_server_id`),
  KEY `cm_co_enrollment_flows_approver_co_group_id_fk` (`approver_co_group_id`),
  KEY `cm_co_enrollment_flows_notification_co_group_id_fk` (`notification_co_group_id`),
  KEY `cm_co_enrollment_flows_verification_template_id_fk` (`verification_template_id`),
  KEY `cm_co_enrollment_flows_approval_template_id_fk` (`approval_template_id`),
  KEY `cm_co_enrollment_flows_approver_template_id_fk` (`approver_template_id`),
  KEY `cm_co_enrollment_flows_denial_template_id_fk` (`denial_template_id`),
  KEY `cm_co_enrollment_flows_finalization_template_id_fk` (`finalization_template_id`),
  KEY `cm_co_enrollment_flows_co_theme_id_fk` (`co_theme_id`),
  KEY `cm_co_enrollment_flows_i1` (`co_id`),
  KEY `cm_co_enrollment_flows_i2` (`co_id`,`name`),
  KEY `cm_co_enrollment_flows_i3` (`status`),
  KEY `cm_co_enrollment_flows_i4` (`co_enrollment_flow_id`),
  CONSTRAINT `cm_co_enrollment_flows_approval_template_id_fk` FOREIGN KEY (`approval_template_id`) REFERENCES `cm_co_message_templates` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_approver_co_group_id_fk` FOREIGN KEY (`approver_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_approver_template_id_fk` FOREIGN KEY (`approver_template_id`) REFERENCES `cm_co_message_templates` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_authz_co_group_id_fk` FOREIGN KEY (`authz_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_authz_cou_id_fk` FOREIGN KEY (`authz_cou_id`) REFERENCES `cm_cous` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_co_enrollment_flow_id_fk` FOREIGN KEY (`co_enrollment_flow_id`) REFERENCES `cm_co_enrollment_flows` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_co_theme_id_fk` FOREIGN KEY (`co_theme_id`) REFERENCES `cm_co_themes` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_denial_template_id_fk` FOREIGN KEY (`denial_template_id`) REFERENCES `cm_co_message_templates` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_finalization_template_id_fk` FOREIGN KEY (`finalization_template_id`) REFERENCES `cm_co_message_templates` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_match_server_id_fk` FOREIGN KEY (`match_server_id`) REFERENCES `cm_servers` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_notification_co_group_id_fk` FOREIGN KEY (`notification_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_enrollment_flows_verification_template_id_fk` FOREIGN KEY (`verification_template_id`) REFERENCES `cm_co_message_templates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_flows`
--

LOCK TABLES `cm_co_enrollment_flows` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_flows` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_flows` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_enrollment_sources`
--

DROP TABLE IF EXISTS `cm_co_enrollment_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_enrollment_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `org_identity_source_id` int(11) NOT NULL,
  `org_identity_mode` varchar(2) DEFAULT NULL,
  `verify_family_name` tinyint(1) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_enrollment_source_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_enrollment_sources_org_identity_source_id_fk` (`org_identity_source_id`),
  KEY `cm_co_enrollment_sources_i1` (`co_enrollment_flow_id`),
  KEY `cm_co_enrollment_sources_i2` (`co_enrollment_source_id`),
  CONSTRAINT `cm_co_enrollment_sources_co_enrollment_flow_id_fk` FOREIGN KEY (`co_enrollment_flow_id`) REFERENCES `cm_co_enrollment_flows` (`id`),
  CONSTRAINT `cm_co_enrollment_sources_co_enrollment_source_id_fk` FOREIGN KEY (`co_enrollment_source_id`) REFERENCES `cm_co_enrollment_sources` (`id`),
  CONSTRAINT `cm_co_enrollment_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_enrollment_sources`
--

LOCK TABLES `cm_co_enrollment_sources` WRITE;
/*!40000 ALTER TABLE `cm_co_enrollment_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_enrollment_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_expiration_counts`
--

DROP TABLE IF EXISTS `cm_co_expiration_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_expiration_counts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_expiration_policy_id` int(11) NOT NULL,
  `co_person_role_id` int(11) NOT NULL,
  `expiration_count` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_expiration_count_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_expiration_counts_co_person_role_id_fk` (`co_person_role_id`),
  KEY `cm_co_expiration_counts_i1` (`co_expiration_policy_id`,`co_person_role_id`),
  KEY `cm_co_expiration_counts_i2` (`co_expiration_count_id`),
  CONSTRAINT `cm_co_expiration_counts_co_expiration_count_id_fk` FOREIGN KEY (`co_expiration_count_id`) REFERENCES `cm_co_expiration_counts` (`id`),
  CONSTRAINT `cm_co_expiration_counts_co_expiration_policy_id_fk` FOREIGN KEY (`co_expiration_policy_id`) REFERENCES `cm_co_expiration_policies` (`id`),
  CONSTRAINT `cm_co_expiration_counts_co_person_role_id_fk` FOREIGN KEY (`co_person_role_id`) REFERENCES `cm_co_person_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_expiration_counts`
--

LOCK TABLES `cm_co_expiration_counts` WRITE;
/*!40000 ALTER TABLE `cm_co_expiration_counts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_expiration_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_expiration_policies`
--

DROP TABLE IF EXISTS `cm_co_expiration_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_expiration_policies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `cond_cou_id` int(11) DEFAULT NULL,
  `cond_affiliation` varchar(32) DEFAULT NULL,
  `cond_before_expiry` int(11) DEFAULT NULL,
  `cond_after_expiry` int(11) DEFAULT NULL,
  `cond_count` int(11) DEFAULT NULL,
  `cond_status` varchar(2) DEFAULT NULL,
  `cond_sponsor_invalid` tinyint(1) DEFAULT NULL,
  `act_affiliation` varchar(32) DEFAULT NULL,
  `act_clear_expiry` tinyint(1) DEFAULT NULL,
  `act_cou_id` int(11) DEFAULT NULL,
  `act_notify_co_admin` tinyint(1) DEFAULT NULL,
  `act_notify_cou_admin` tinyint(1) DEFAULT NULL,
  `act_notify_co_group_id` int(11) DEFAULT NULL,
  `act_notify_co_person` tinyint(1) DEFAULT NULL,
  `act_notify_sponsor` tinyint(1) DEFAULT NULL,
  `act_notification_template_id` int(11) DEFAULT NULL,
  `act_notification_subject` varchar(256) DEFAULT NULL,
  `act_notification_body` text DEFAULT NULL,
  `act_status` varchar(2) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_expiration_policy_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_expiration_policies_cond_cou_id_fk` (`cond_cou_id`),
  KEY `cm_co_expiration_policies_act_cou_id_fk` (`act_cou_id`),
  KEY `cm_co_expiration_policies_act_notify_co_group_id_fk` (`act_notify_co_group_id`),
  KEY `cm_co_expiration_policies_act_notification_template_id_fk` (`act_notification_template_id`),
  KEY `cm_co_expiration_policies_i1` (`co_id`),
  KEY `cm_co_expiration_policies_i2` (`co_expiration_policy_id`),
  CONSTRAINT `cm_co_expiration_policies_act_cou_id_fk` FOREIGN KEY (`act_cou_id`) REFERENCES `cm_cous` (`id`),
  CONSTRAINT `cm_co_expiration_policies_act_notification_template_id_fk` FOREIGN KEY (`act_notification_template_id`) REFERENCES `cm_co_message_templates` (`id`),
  CONSTRAINT `cm_co_expiration_policies_act_notify_co_group_id_fk` FOREIGN KEY (`act_notify_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_expiration_policies_co_expiration_policy_id_fk` FOREIGN KEY (`co_expiration_policy_id`) REFERENCES `cm_co_expiration_policies` (`id`),
  CONSTRAINT `cm_co_expiration_policies_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_expiration_policies_cond_cou_id_fk` FOREIGN KEY (`cond_cou_id`) REFERENCES `cm_cous` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_expiration_policies`
--

LOCK TABLES `cm_co_expiration_policies` WRITE;
/*!40000 ALTER TABLE `cm_co_expiration_policies` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_expiration_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_extended_attributes`
--

DROP TABLE IF EXISTS `cm_co_extended_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_extended_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `display_name` varchar(64) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `indx` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_extended_attributes_i1` (`co_id`,`name`),
  KEY `cm_co_extended_attributes_i2` (`co_id`,`type`),
  CONSTRAINT `cm_co_extended_attributes_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_extended_attributes`
--

LOCK TABLES `cm_co_extended_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_extended_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_extended_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_extended_types`
--

DROP TABLE IF EXISTS `cm_co_extended_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_extended_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `attribute` varchar(32) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `display_name` varchar(64) DEFAULT NULL,
  `edupersonaffiliation` varchar(32) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_extended_types_i1` (`co_id`,`attribute`),
  KEY `cm_co_extended_types_i2` (`co_id`,`attribute`,`name`),
  CONSTRAINT `cm_co_extended_types_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_extended_types`
--

LOCK TABLES `cm_co_extended_types` WRITE;
/*!40000 ALTER TABLE `cm_co_extended_types` DISABLE KEYS */;
INSERT INTO `cm_co_extended_types` VALUES (1,1,'Address.type','campus','Campus',NULL,'A'),(2,1,'Address.type','home','Home',NULL,'A'),(3,1,'Address.type','office','Office',NULL,'A'),(4,1,'Address.type','postal','Postal',NULL,'A'),(5,1,'CoDepartment.type','vo','VO',NULL,'A'),(6,1,'CoDepartment.type','researchinstitute','Research Institute',NULL,'A'),(7,1,'CoDepartment.type','department','Department',NULL,'A'),(8,1,'Contact.type','administrative','Administrative',NULL,'A'),(9,1,'Contact.type','billing','Billing',NULL,'A'),(10,1,'Contact.type','other','Other',NULL,'A'),(11,1,'Contact.type','support','Support',NULL,'A'),(12,1,'Contact.type','technical','Technical',NULL,'A'),(13,1,'CoPersonRole.affiliation','faculty','Faculty',NULL,'A'),(14,1,'CoPersonRole.affiliation','student','Student',NULL,'A'),(15,1,'CoPersonRole.affiliation','staff','Staff',NULL,'A'),(16,1,'CoPersonRole.affiliation','alum','Alum',NULL,'A'),(17,1,'CoPersonRole.affiliation','member','Member',NULL,'A'),(18,1,'CoPersonRole.affiliation','affiliate','Affiliate',NULL,'A'),(19,1,'CoPersonRole.affiliation','employee','Employee',NULL,'A'),(20,1,'CoPersonRole.affiliation','librarywalkin','Library Walk-In',NULL,'A'),(21,1,'EmailAddress.type','delivery','Delivery',NULL,'A'),(22,1,'EmailAddress.type','forwarding','Forwarding',NULL,'A'),(23,1,'EmailAddress.type','list','Mailing List',NULL,'A'),(24,1,'EmailAddress.type','official','Official',NULL,'A'),(25,1,'EmailAddress.type','personal','Personal',NULL,'A'),(26,1,'EmailAddress.type','preferred','Preferred',NULL,'A'),(27,1,'EmailAddress.type','recovery','Recovery',NULL,'A'),(28,1,'Identifier.type','sor-affiliate','Affiliate SoRID',NULL,'A'),(29,1,'Identifier.type','badge','Badge',NULL,'A'),(30,1,'Identifier.type','enterprise','Enterprise',NULL,'A'),(31,1,'Identifier.type','entityid','Entity ID',NULL,'A'),(32,1,'Identifier.type','eppn','ePPN',NULL,'A'),(33,1,'Identifier.type','eptid','ePTID',NULL,'A'),(34,1,'Identifier.type','epuid','ePUID',NULL,'A'),(35,1,'Identifier.type','sor-guest','Guest SoRID',NULL,'A'),(36,1,'Identifier.type','sor-hr','HR SoRID',NULL,'A'),(37,1,'Identifier.type','mail','Mail',NULL,'A'),(38,1,'Identifier.type','name','Name',NULL,'A'),(39,1,'Identifier.type','national','National',NULL,'A'),(40,1,'Identifier.type','network','Network',NULL,'A'),(41,1,'Identifier.type','oidcsub','OIDC sub',NULL,'A'),(42,1,'Identifier.type','openid','OpenID',NULL,'A'),(43,1,'Identifier.type','orcid','ORCID iD',NULL,'A'),(44,1,'Identifier.type','provisioningtarget','Provisioning Target',NULL,'A'),(45,1,'Identifier.type','reference','Match Reference',NULL,'A'),(46,1,'Identifier.type','pairwiseid','SAML pairwise-id',NULL,'A'),(47,1,'Identifier.type','subjectid','SAML subject-id',NULL,'A'),(48,1,'Identifier.type','sorid','System of Record ID',NULL,'A'),(49,1,'Identifier.type','sor-student','Student SoRID',NULL,'A'),(50,1,'Identifier.type','uid','UID',NULL,'A'),(51,1,'Name.type','alternate','Alternate',NULL,'A'),(52,1,'Name.type','author','Author',NULL,'A'),(53,1,'Name.type','fka','FKA',NULL,'A'),(54,1,'Name.type','official','Official',NULL,'A'),(55,1,'Name.type','preferred','Preferred',NULL,'A'),(56,1,'Organization.type','edu','Academic',NULL,'A'),(57,1,'Organization.type','com','Commercial',NULL,'A'),(58,1,'Organization.type','gov','Government',NULL,'A'),(59,1,'TelephoneNumber.type','campus','Campus',NULL,'A'),(60,1,'TelephoneNumber.type','fax','Fax',NULL,'A'),(61,1,'TelephoneNumber.type','home','Home',NULL,'A'),(62,1,'TelephoneNumber.type','mobile','Mobile',NULL,'A'),(63,1,'TelephoneNumber.type','office','Office',NULL,'A'),(64,1,'Url.type','official','Official',NULL,'A'),(65,1,'Url.type','personal','Personal',NULL,'A'),(66,1,'Identifier.type','wpid','WordPress ID',NULL,'A'),(67,1,'Identifier.type','hcid','Humanities Commons ID',NULL,'A');
/*!40000 ALTER TABLE `cm_co_extended_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_group_members`
--

DROP TABLE IF EXISTS `cm_co_group_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_group_members` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_group_id` int(11) NOT NULL,
  `co_person_id` int(11) NOT NULL,
  `member` tinyint(1) DEFAULT NULL,
  `owner` tinyint(1) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `source_org_identity_id` int(11) DEFAULT NULL,
  `co_group_nesting_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_group_member_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_group_members_co_group_nesting_id_fk` (`co_group_nesting_id`),
  KEY `cm_co_group_members_i1` (`co_group_id`),
  KEY `cm_co_group_members_i2` (`co_person_id`),
  KEY `cm_co_group_members_i3` (`co_group_id`,`co_person_id`),
  KEY `cm_co_group_members_i4` (`co_group_member_id`),
  KEY `cm_co_group_members_i5` (`source_org_identity_id`),
  CONSTRAINT `cm_co_group_members_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_group_members_co_group_member_id_fk` FOREIGN KEY (`co_group_member_id`) REFERENCES `cm_co_group_members` (`id`),
  CONSTRAINT `cm_co_group_members_co_group_nesting_id_fk` FOREIGN KEY (`co_group_nesting_id`) REFERENCES `cm_co_group_nestings` (`id`),
  CONSTRAINT `cm_co_group_members_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_group_members_source_org_identity_id_fk` FOREIGN KEY (`source_org_identity_id`) REFERENCES `cm_org_identities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_group_members`
--

LOCK TABLES `cm_co_group_members` WRITE;
/*!40000 ALTER TABLE `cm_co_group_members` DISABLE KEYS */;
INSERT INTO `cm_co_group_members` VALUES (1,3,1,1,0,NULL,NULL,NULL,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"'),(2,1,1,1,1,NULL,NULL,NULL,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_co_group_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_group_nestings`
--

DROP TABLE IF EXISTS `cm_co_group_nestings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_group_nestings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_group_id` int(11) NOT NULL,
  `target_co_group_id` int(11) NOT NULL,
  `negate` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_group_nesting_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_group_nestings_co_group_nesting_id_fk` (`co_group_nesting_id`),
  KEY `cm_co_group_nestings_i1` (`co_group_id`),
  KEY `cm_co_group_nestings_i2` (`target_co_group_id`),
  CONSTRAINT `cm_co_group_nestings_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_group_nestings_co_group_nesting_id_fk` FOREIGN KEY (`co_group_nesting_id`) REFERENCES `cm_co_group_nestings` (`id`),
  CONSTRAINT `cm_co_group_nestings_target_co_group_id_fk` FOREIGN KEY (`target_co_group_id`) REFERENCES `cm_co_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_group_nestings`
--

LOCK TABLES `cm_co_group_nestings` WRITE;
/*!40000 ALTER TABLE `cm_co_group_nestings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_group_nestings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_group_ois_mappings`
--

DROP TABLE IF EXISTS `cm_co_group_ois_mappings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_group_ois_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `attribute` varchar(80) DEFAULT NULL,
  `comparison` varchar(4) DEFAULT NULL,
  `pattern` varchar(80) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_group_ois_mapping_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_group_ois_mappings_co_group_id_fk` (`co_group_id`),
  KEY `cm_co_group_ois_mappings_i1` (`co_group_ois_mapping_id`),
  KEY `cm_co_group_ois_mappings_i2` (`org_identity_source_id`),
  CONSTRAINT `cm_co_group_ois_mappings_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_group_ois_mappings_co_group_ois_mapping_id_fk` FOREIGN KEY (`co_group_ois_mapping_id`) REFERENCES `cm_co_group_ois_mappings` (`id`),
  CONSTRAINT `cm_co_group_ois_mappings_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_group_ois_mappings`
--

LOCK TABLES `cm_co_group_ois_mappings` WRITE;
/*!40000 ALTER TABLE `cm_co_group_ois_mappings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_group_ois_mappings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_grouper_provisioner_groups`
--

DROP TABLE IF EXISTS `cm_co_grouper_provisioner_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_grouper_provisioner_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_grouper_provisioner_target_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `stem` varchar(256) DEFAULT NULL,
  `extension` varchar(256) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_grouper_provisioner_groups_i1` (`co_grouper_provisioner_target_id`,`co_group_id`),
  KEY `cm_co_grouper_provisioner_groups_co_group_id_fk` (`co_group_id`),
  CONSTRAINT `cm_co_grouper_provisioner_groups_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_grouper_provisioner_groups`
--

LOCK TABLES `cm_co_grouper_provisioner_groups` WRITE;
/*!40000 ALTER TABLE `cm_co_grouper_provisioner_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_grouper_provisioner_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_grouper_provisioner_targets`
--

DROP TABLE IF EXISTS `cm_co_grouper_provisioner_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_grouper_provisioner_targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_provisioning_target_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) DEFAULT NULL,
  `contextpath` varchar(64) DEFAULT NULL,
  `login` varchar(64) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `stem` varchar(256) DEFAULT NULL,
  `subject_identifier` varchar(32) DEFAULT NULL,
  `login_identifier` varchar(32) DEFAULT NULL,
  `email_identifier` varchar(32) DEFAULT NULL,
  `legacy_comanage_subject` tinyint(1) DEFAULT NULL,
  `subject_view` varchar(30) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_grouper_provisioner_targets_i1` (`co_provisioning_target_id`),
  CONSTRAINT `cm_co_grouper_provisioner_targets_co_provisioning_target_id_fk` FOREIGN KEY (`co_provisioning_target_id`) REFERENCES `cm_co_provisioning_targets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_grouper_provisioner_targets`
--

LOCK TABLES `cm_co_grouper_provisioner_targets` WRITE;
/*!40000 ALTER TABLE `cm_co_grouper_provisioner_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_grouper_provisioner_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_groups`
--

DROP TABLE IF EXISTS `cm_co_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `open` tinyint(1) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `group_type` varchar(2) DEFAULT NULL,
  `auto` tinyint(1) DEFAULT NULL,
  `nesting_mode_all` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_groups_i1` (`co_id`),
  KEY `cm_co_groups_i2` (`name`),
  KEY `cm_co_groups_i3` (`co_id`,`name`),
  KEY `cm_co_groups_i4` (`co_group_id`),
  KEY `cm_co_groups_i5` (`co_id`,`group_type`),
  KEY `cm_co_groups_i6` (`cou_id`,`group_type`),
  CONSTRAINT `cm_co_groups_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_groups_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_groups_cou_id_fk` FOREIGN KEY (`cou_id`) REFERENCES `cm_cous` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_groups`
--

LOCK TABLES `cm_co_groups` WRITE;
/*!40000 ALTER TABLE `cm_co_groups` DISABLE KEYS */;
INSERT INTO `cm_co_groups` VALUES (1,1,NULL,'CO:admins','COmanage Administrators',0,'A','A',0,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"'),(2,1,NULL,'CO:approvers','COmanage Approvers',0,'A','AP',0,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"'),(3,1,NULL,'CO:members:active','COmanage Active Members',0,'A','MA',1,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"'),(4,1,NULL,'CO:members:all','COmanage Members',0,'A','M',1,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"'),(5,1,1,'CO:COU:Knowledge Commons:admins','Knowledge Commons Administrators',0,'A','A',0,NULL,'2025-05-09 17:05:29','2025-05-09 17:05:29',NULL,0,0,'admin'),(6,1,1,'CO:COU:Knowledge Commons:approvers','Knowledge Commons Approvers',0,'A','AP',0,NULL,'2025-05-09 17:05:29','2025-05-09 17:05:29',NULL,0,0,'admin'),(7,1,1,'CO:COU:Knowledge Commons:members:active','Knowledge Commons Active Members',0,'A','MA',1,NULL,'2025-05-09 17:05:29','2025-05-09 17:05:29',NULL,0,0,'admin'),(8,1,1,'CO:COU:Knowledge Commons:members:all','Knowledge Commons Members',0,'A','M',1,NULL,'2025-05-09 17:05:29','2025-05-09 17:05:29',NULL,0,0,'admin'),(9,1,2,'CO:COU:MLA:admins','MLA Administrators',0,'A','A',0,NULL,'2025-05-09 17:33:51','2025-05-09 17:33:51',NULL,0,0,'admin'),(10,1,2,'CO:COU:MLA:approvers','MLA Approvers',0,'A','AP',0,NULL,'2025-05-09 17:33:51','2025-05-09 17:33:51',NULL,0,0,'admin'),(11,1,2,'CO:COU:MLA:members:active','MLA Active Members',0,'A','MA',1,NULL,'2025-05-09 17:33:51','2025-05-09 17:33:51',NULL,0,0,'admin'),(12,1,2,'CO:COU:MLA:members:all','MLA Members',0,'A','M',1,NULL,'2025-05-09 17:33:51','2025-05-09 17:33:51',NULL,0,0,'admin');
/*!40000 ALTER TABLE `cm_co_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_identifier_assignments`
--

DROP TABLE IF EXISTS `cm_co_identifier_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_identifier_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `context` varchar(2) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `identifier_type` varchar(32) DEFAULT NULL,
  `email_type` varchar(32) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `login` tinyint(1) DEFAULT NULL,
  `algorithm` varchar(2) DEFAULT NULL,
  `plugin` varchar(64) DEFAULT NULL,
  `format` varchar(256) DEFAULT NULL,
  `minimum_length` int(11) DEFAULT NULL,
  `minimum` int(11) DEFAULT NULL,
  `maximum` int(11) DEFAULT NULL,
  `transliterate` tinyint(1) DEFAULT NULL,
  `permitted` varchar(2) DEFAULT NULL,
  `collision_resolution` varchar(64) DEFAULT NULL,
  `exclusions` varchar(8) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_identifier_assignments_co_group_id_fk` (`co_group_id`),
  KEY `cm_co_identifier_assignments_i1` (`co_id`),
  CONSTRAINT `cm_co_identifier_assignments_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_identifier_assignments_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_identifier_assignments`
--

LOCK TABLES `cm_co_identifier_assignments` WRITE;
/*!40000 ALTER TABLE `cm_co_identifier_assignments` DISABLE KEYS */;
INSERT INTO `cm_co_identifier_assignments` VALUES (1,1,'A','CP',NULL,'wpid','','WordPress ID',0,'S',NULL,'(g:1)(f)[1:(#)]',5,NULL,NULL,0,'AN',NULL,NULL,1,'2025-05-09 18:10:55','2025-05-09 18:10:55'),(2,1,'A','CP',NULL,'hcid','','Humanities Commons ID',0,'R',NULL,'hc(#:8)',NULL,NULL,NULL,0,'AN',NULL,NULL,2,'2025-05-09 18:13:08','2025-05-09 18:13:08');
/*!40000 ALTER TABLE `cm_co_identifier_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_identifier_validators`
--

DROP TABLE IF EXISTS `cm_co_identifier_validators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_identifier_validators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `co_extended_type_id` int(11) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_identifier_validator_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_identifier_validators_co_extended_type_id_fk` (`co_extended_type_id`),
  KEY `cm_co_identifier_validators_i1` (`co_id`),
  KEY `cm_co_identifier_validators_i2` (`co_identifier_validator_id`),
  CONSTRAINT `cm_co_identifier_validators_co_extended_type_id_fk` FOREIGN KEY (`co_extended_type_id`) REFERENCES `cm_co_extended_types` (`id`),
  CONSTRAINT `cm_co_identifier_validators_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_identifier_validators_co_identifier_validator_id_fk` FOREIGN KEY (`co_identifier_validator_id`) REFERENCES `cm_co_identifier_validators` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_identifier_validators`
--

LOCK TABLES `cm_co_identifier_validators` WRITE;
/*!40000 ALTER TABLE `cm_co_identifier_validators` DISABLE KEYS */;
INSERT INTO `cm_co_identifier_validators` VALUES (1,1,'WordpressValidator','RegexIdentifierValidator',66,'A','2025-05-09 18:18:25','2025-05-09 18:18:25',NULL,0,0,'admin');
/*!40000 ALTER TABLE `cm_co_identifier_validators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_invites`
--

DROP TABLE IF EXISTS `cm_co_invites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_invites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `invitation` varchar(48) DEFAULT NULL,
  `mail` varchar(256) DEFAULT NULL,
  `skip_invite` tinyint(1) DEFAULT NULL,
  `email_address_id` int(11) DEFAULT NULL,
  `expires` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_invite_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_invites_email_address_id_fk` (`email_address_id`),
  KEY `cm_co_invites_i1` (`co_person_id`),
  KEY `cm_co_invites_i2` (`invitation`),
  KEY `cm_co_invites_i3` (`co_person_id`,`mail`),
  KEY `cm_co_invites_i4` (`co_invite_id`),
  CONSTRAINT `cm_co_invites_co_invite_id_fk` FOREIGN KEY (`co_invite_id`) REFERENCES `cm_co_invites` (`id`),
  CONSTRAINT `cm_co_invites_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_invites_email_address_id_fk` FOREIGN KEY (`email_address_id`) REFERENCES `cm_email_addresses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_invites`
--

LOCK TABLES `cm_co_invites` WRITE;
/*!40000 ALTER TABLE `cm_co_invites` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_invites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_job_history_records`
--

DROP TABLE IF EXISTS `cm_co_job_history_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_job_history_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_job_id` int(11) NOT NULL,
  `record_key` varchar(256) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_job_history_records_i1` (`co_job_id`),
  KEY `cm_co_job_history_records_i2` (`co_person_id`),
  KEY `cm_co_job_history_records_i3` (`org_identity_id`),
  KEY `cm_co_job_history_records_i4` (`co_job_id`,`record_key`),
  CONSTRAINT `cm_co_job_history_records_co_job_id_fk` FOREIGN KEY (`co_job_id`) REFERENCES `cm_co_jobs` (`id`),
  CONSTRAINT `cm_co_job_history_records_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_job_history_records_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_job_history_records`
--

LOCK TABLES `cm_co_job_history_records` WRITE;
/*!40000 ALTER TABLE `cm_co_job_history_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_job_history_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_jobs`
--

DROP TABLE IF EXISTS `cm_co_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `job_type` varchar(64) DEFAULT NULL,
  `job_type_fk` int(11) DEFAULT NULL,
  `job_mode` varchar(16) DEFAULT NULL,
  `job_params` longtext DEFAULT NULL,
  `requeue_interval` int(11) DEFAULT NULL,
  `retry_interval` int(11) DEFAULT NULL,
  `max_retry` int(11) DEFAULT NULL,
  `max_retry_count` int(11) DEFAULT NULL,
  `requeued_from_co_job_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `register_summary` varchar(256) DEFAULT NULL,
  `start_summary` varchar(256) DEFAULT NULL,
  `finish_summary` varchar(256) DEFAULT NULL,
  `queue_time` datetime DEFAULT NULL,
  `start_after_time` datetime DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `complete_time` datetime DEFAULT NULL,
  `percent_complete` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_jobs_requeued_from_co_job_id_fk` (`requeued_from_co_job_id`),
  KEY `cm_co_jobs_i1` (`co_id`),
  KEY `cm_co_jobs_i2` (`job_type`,`job_type_fk`),
  KEY `cm_co_jobs_i3` (`co_id`,`job_type`,`job_type_fk`,`status`),
  CONSTRAINT `cm_co_jobs_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_jobs_requeued_from_co_job_id_fk` FOREIGN KEY (`requeued_from_co_job_id`) REFERENCES `cm_co_jobs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_jobs`
--

LOCK TABLES `cm_co_jobs` WRITE;
/*!40000 ALTER TABLE `cm_co_jobs` DISABLE KEYS */;
INSERT INTO `cm_co_jobs` VALUES (1,1,'CoreJob.GarbageCollector',NULL,'','{\"object_type\":\"Co\"}',86400,0,NULL,NULL,NULL,'Q','Started via JobShell by setup (CoPerson ID -1)',NULL,NULL,'2025-03-27 15:01:41',NULL,NULL,NULL,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41');
/*!40000 ALTER TABLE `cm_co_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_ldap_provisioner_attr_groupings`
--

DROP TABLE IF EXISTS `cm_co_ldap_provisioner_attr_groupings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_ldap_provisioner_attr_groupings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_ldap_provisioner_target_id` int(11) DEFAULT NULL,
  `grouping` varchar(80) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_ldap_provisioner_attr_groupings_i2` (`co_ldap_provisioner_target_id`,`grouping`),
  KEY `cm_co_ldap_provisioner_attr_groupings_i1` (`co_ldap_provisioner_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_attr_groupings`
--

LOCK TABLES `cm_co_ldap_provisioner_attr_groupings` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attr_groupings` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attr_groupings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_ldap_provisioner_attributes`
--

DROP TABLE IF EXISTS `cm_co_ldap_provisioner_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_ldap_provisioner_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_ldap_provisioner_target_id` int(11) DEFAULT NULL,
  `attribute` varchar(80) DEFAULT NULL,
  `objectclass` varchar(80) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `export` tinyint(1) DEFAULT NULL,
  `use_org_value` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_ldap_provisioner_attributes_i2` (`co_ldap_provisioner_target_id`,`attribute`,`objectclass`),
  KEY `cm_co_ldap_provisioner_attributes_i1` (`co_ldap_provisioner_target_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_attributes`
--

LOCK TABLES `cm_co_ldap_provisioner_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_ldap_provisioner_dns`
--

DROP TABLE IF EXISTS `cm_co_ldap_provisioner_dns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_ldap_provisioner_dns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_ldap_provisioner_target_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `dn` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_ldap_provisioner_dns_i1` (`co_ldap_provisioner_target_id`,`co_person_id`),
  UNIQUE KEY `cm_co_ldap_provisioner_dns_i2` (`co_ldap_provisioner_target_id`,`co_group_id`),
  KEY `cm_co_ldap_provisioner_dns_co_person_id_fk` (`co_person_id`),
  KEY `cm_co_ldap_provisioner_dns_co_group_id_fk` (`co_group_id`),
  CONSTRAINT `cm_co_ldap_provisioner_dns_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_ldap_provisioner_dns_co_ldap_provisioner_target_id_fk` FOREIGN KEY (`co_ldap_provisioner_target_id`) REFERENCES `cm_co_ldap_provisioner_targets` (`id`),
  CONSTRAINT `cm_co_ldap_provisioner_dns_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_dns`
--

LOCK TABLES `cm_co_ldap_provisioner_dns` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_dns` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_dns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_ldap_provisioner_targets`
--

DROP TABLE IF EXISTS `cm_co_ldap_provisioner_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_ldap_provisioner_targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_provisioning_target_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) DEFAULT NULL,
  `binddn` varchar(128) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `basedn` varchar(128) DEFAULT NULL,
  `dn_attribute_name` varchar(32) DEFAULT NULL,
  `dn_identifier_type` varchar(32) DEFAULT NULL,
  `group_basedn` varchar(128) DEFAULT NULL,
  `person_ocs` varchar(256) DEFAULT NULL,
  `group_ocs` varchar(256) DEFAULT NULL,
  `attr_opts` tinyint(1) DEFAULT NULL,
  `scope_suffix` varchar(128) DEFAULT NULL,
  `unconf_attr_mode` varchar(2) DEFAULT NULL,
  `oc_eduperson` tinyint(1) DEFAULT NULL,
  `oc_edumember` tinyint(1) DEFAULT NULL,
  `oc_groupofnames` tinyint(1) DEFAULT NULL,
  `oc_posixaccount` tinyint(1) DEFAULT NULL,
  `oc_posixgroup` tinyint(1) DEFAULT NULL,
  `oc_voposixaccount` tinyint(1) DEFAULT NULL,
  `oc_voposixgroup` tinyint(1) DEFAULT NULL,
  `cluster_id` int(11) DEFAULT NULL,
  `oc_ldappublickey` tinyint(1) DEFAULT NULL,
  `oc_voperson` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_ldap_provisioner_targets_i1` (`co_provisioning_target_id`),
  KEY `cm_co_ldap_provisioner_targets_cluster_id_fk` (`cluster_id`),
  CONSTRAINT `cm_co_ldap_provisioner_targets_cluster_id_fk` FOREIGN KEY (`cluster_id`) REFERENCES `cm_clusters` (`id`),
  CONSTRAINT `cm_co_ldap_provisioner_targets_co_provisioning_target_id_fk` FOREIGN KEY (`co_provisioning_target_id`) REFERENCES `cm_co_provisioning_targets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_ldap_provisioner_targets`
--

LOCK TABLES `cm_co_ldap_provisioner_targets` WRITE;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_ldap_provisioner_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_localizations`
--

DROP TABLE IF EXISTS `cm_co_localizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_localizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `lkey` varchar(40) DEFAULT NULL,
  `language` varchar(16) DEFAULT NULL,
  `text` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_localizations_i3` (`co_id`,`lkey`,`language`),
  KEY `cm_co_localizations_i1` (`co_id`),
  KEY `cm_co_localizations_i2` (`co_id`,`language`),
  CONSTRAINT `cm_co_localizations_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_localizations`
--

LOCK TABLES `cm_co_localizations` WRITE;
/*!40000 ALTER TABLE `cm_co_localizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_localizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_message_templates`
--

DROP TABLE IF EXISTS `cm_co_message_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_message_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `context` varchar(2) DEFAULT NULL,
  `cc` varchar(256) DEFAULT NULL,
  `bcc` varchar(256) DEFAULT NULL,
  `message_subject` varchar(256) DEFAULT NULL,
  `message_body` text DEFAULT NULL,
  `message_body_html` text DEFAULT NULL,
  `format` varchar(4) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_message_template_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_message_templates_i1` (`co_id`),
  KEY `cm_co_message_templates_i2` (`co_message_template_id`),
  CONSTRAINT `cm_co_message_templates_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_message_templates_co_message_template_id_fk` FOREIGN KEY (`co_message_template_id`) REFERENCES `cm_co_message_templates` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_message_templates`
--

LOCK TABLES `cm_co_message_templates` WRITE;
/*!40000 ALTER TABLE `cm_co_message_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_message_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_navigation_links`
--

DROP TABLE IF EXISTS `cm_co_navigation_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_navigation_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `location` varchar(32) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_navigation_links_i1` (`co_id`),
  CONSTRAINT `cm_co_navigation_links_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_navigation_links`
--

LOCK TABLES `cm_co_navigation_links` WRITE;
/*!40000 ALTER TABLE `cm_co_navigation_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_navigation_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_notifications`
--

DROP TABLE IF EXISTS `cm_co_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject_co_person_id` int(11) DEFAULT NULL,
  `subject_co_group_id` int(11) DEFAULT NULL,
  `actor_co_person_id` int(11) DEFAULT NULL,
  `recipient_co_person_id` int(11) DEFAULT NULL,
  `recipient_co_group_id` int(11) DEFAULT NULL,
  `resolver_co_person_id` int(11) DEFAULT NULL,
  `action` varchar(4) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `source_url` varchar(160) DEFAULT NULL,
  `source_controller` varchar(80) DEFAULT NULL,
  `source_action` varchar(80) DEFAULT NULL,
  `source_id` int(11) DEFAULT NULL,
  `source_arg0` varchar(80) DEFAULT NULL,
  `source_val0` varchar(80) DEFAULT NULL,
  `email_subject` varchar(256) DEFAULT NULL,
  `email_body` text DEFAULT NULL,
  `resolution_subject` varchar(256) DEFAULT NULL,
  `resolution_body` text DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `notification_time` datetime DEFAULT NULL,
  `resolution_time` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_notifications_actor_co_person_id_fk` (`actor_co_person_id`),
  KEY `cm_co_notifications_resolver_co_person_id_fk` (`resolver_co_person_id`),
  KEY `cm_co_notifications_i1` (`subject_co_person_id`),
  KEY `cm_co_notifications_i2` (`recipient_co_person_id`),
  KEY `cm_co_notifications_i3` (`recipient_co_group_id`),
  KEY `cm_co_notifications_i4` (`source_url`),
  KEY `cm_co_notifications_i5` (`source_controller`,`source_action`,`source_id`,`source_arg0`,`source_val0`),
  KEY `cm_co_notifications_i6` (`subject_co_group_id`),
  CONSTRAINT `cm_co_notifications_actor_co_person_id_fk` FOREIGN KEY (`actor_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_notifications_recipient_co_group_id_fk` FOREIGN KEY (`recipient_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_notifications_recipient_co_person_id_fk` FOREIGN KEY (`recipient_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_notifications_resolver_co_person_id_fk` FOREIGN KEY (`resolver_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_notifications_subject_co_group_id_fk` FOREIGN KEY (`subject_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_notifications_subject_co_person_id_fk` FOREIGN KEY (`subject_co_person_id`) REFERENCES `cm_co_people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_notifications`
--

LOCK TABLES `cm_co_notifications` WRITE;
/*!40000 ALTER TABLE `cm_co_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_nsf_demographics`
--

DROP TABLE IF EXISTS `cm_co_nsf_demographics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_nsf_demographics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `citizenship` varchar(2) DEFAULT NULL,
  `ethnicity` varchar(2) DEFAULT NULL,
  `race` varchar(5) DEFAULT NULL,
  `disability` varchar(4) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_nsf_demographic_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_nsf_demographics_i1` (`co_person_id`),
  KEY `cm_co_nsf_demographics_i2` (`co_nsf_demographic_id`),
  CONSTRAINT `cm_co_nsf_demographics_co_nsf_demographic_id_fk` FOREIGN KEY (`co_nsf_demographic_id`) REFERENCES `cm_co_nsf_demographics` (`id`),
  CONSTRAINT `cm_co_nsf_demographics_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_nsf_demographics`
--

LOCK TABLES `cm_co_nsf_demographics` WRITE;
/*!40000 ALTER TABLE `cm_co_nsf_demographics` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_nsf_demographics` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_org_identity_links`
--

DROP TABLE IF EXISTS `cm_co_org_identity_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_org_identity_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `org_identity_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_org_identity_link_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_org_identity_links_i1` (`co_person_id`),
  KEY `cm_co_org_identity_links_i2` (`org_identity_id`),
  KEY `cm_co_org_identity_links_i3` (`co_person_id`,`org_identity_id`),
  KEY `cm_co_org_identity_links_i4` (`co_org_identity_link_id`),
  CONSTRAINT `cm_co_org_identity_links_co_org_identity_link_id_fk` FOREIGN KEY (`co_org_identity_link_id`) REFERENCES `cm_co_org_identity_links` (`id`),
  CONSTRAINT `cm_co_org_identity_links_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_org_identity_links_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_org_identity_links`
--

LOCK TABLES `cm_co_org_identity_links` WRITE;
/*!40000 ALTER TABLE `cm_co_org_identity_links` DISABLE KEYS */;
INSERT INTO `cm_co_org_identity_links` VALUES (1,1,1,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_co_org_identity_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_password_widgets`
--

DROP TABLE IF EXISTS `cm_co_password_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_password_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authenticator_id` int(11) DEFAULT NULL,
  `co_dashboard_widget_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_password_widgets_i1` (`co_dashboard_widget_id`),
  KEY `cm_co_password_widgets_authenticator_id_fk` (`authenticator_id`),
  CONSTRAINT `cm_co_password_widgets_authenticator_id_fk` FOREIGN KEY (`authenticator_id`) REFERENCES `cm_authenticators` (`id`),
  CONSTRAINT `cm_co_password_widgets_co_dashboard_widget_id_fk` FOREIGN KEY (`co_dashboard_widget_id`) REFERENCES `cm_co_dashboard_widgets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_password_widgets`
--

LOCK TABLES `cm_co_password_widgets` WRITE;
/*!40000 ALTER TABLE `cm_co_password_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_password_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_people`
--

DROP TABLE IF EXISTS `cm_co_people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `timezone` varchar(80) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_people_i1` (`co_id`),
  KEY `cm_co_people_i2` (`co_person_id`),
  CONSTRAINT `cm_co_people_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_people_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_people`
--

LOCK TABLES `cm_co_people` WRITE;
/*!40000 ALTER TABLE `cm_co_people` DISABLE KEYS */;
INSERT INTO `cm_co_people` VALUES (1,1,'A',NULL,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_co_people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_person_roles`
--

DROP TABLE IF EXISTS `cm_co_person_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_person_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `sponsor_co_person_id` int(11) DEFAULT NULL,
  `manager_co_person_id` int(11) DEFAULT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `affiliation` varchar(32) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `o` varchar(128) DEFAULT NULL,
  `ou` varchar(128) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `source_org_identity_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_person_roles_manager_co_person_id_fk` (`manager_co_person_id`),
  KEY `cm_co_person_roles_i1` (`co_person_id`),
  KEY `cm_co_person_roles_i2` (`sponsor_co_person_id`),
  KEY `cm_co_person_roles_i3` (`cou_id`),
  KEY `cm_co_person_roles_i4` (`co_person_role_id`),
  KEY `cm_co_person_roles_i5` (`source_org_identity_id`),
  CONSTRAINT `cm_co_person_roles_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_person_roles_co_person_role_id_fk` FOREIGN KEY (`co_person_role_id`) REFERENCES `cm_co_person_roles` (`id`),
  CONSTRAINT `cm_co_person_roles_cou_id_fk` FOREIGN KEY (`cou_id`) REFERENCES `cm_cous` (`id`),
  CONSTRAINT `cm_co_person_roles_manager_co_person_id_fk` FOREIGN KEY (`manager_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_person_roles_source_org_identity_id_fk` FOREIGN KEY (`source_org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_co_person_roles_sponsor_co_person_id_fk` FOREIGN KEY (`sponsor_co_person_id`) REFERENCES `cm_co_people` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_person_roles`
--

LOCK TABLES `cm_co_person_roles` WRITE;
/*!40000 ALTER TABLE `cm_co_person_roles` DISABLE KEYS */;
INSERT INTO `cm_co_person_roles` VALUES (1,1,NULL,NULL,NULL,'staff','Administrator',NULL,NULL,NULL,NULL,NULL,'A',NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_co_person_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_petition_attributes`
--

DROP TABLE IF EXISTS `cm_co_petition_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_petition_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_petition_id` int(11) NOT NULL,
  `co_enrollment_attribute_id` int(11) NOT NULL,
  `attribute` varchar(80) DEFAULT NULL,
  `value` varchar(160) DEFAULT NULL,
  `attribute_foreign_key` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_petition_attribute_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_petition_attributes_i1` (`co_petition_id`),
  KEY `cm_co_petition_attributes_i2` (`co_enrollment_attribute_id`),
  KEY `cm_co_petition_attributes_i3` (`co_petition_attribute_id`),
  CONSTRAINT `cm_co_petition_attributes_co_enrollment_attribute_id_fk` FOREIGN KEY (`co_enrollment_attribute_id`) REFERENCES `cm_co_enrollment_attributes` (`id`),
  CONSTRAINT `cm_co_petition_attributes_co_petition_attribute_id_fk` FOREIGN KEY (`co_petition_attribute_id`) REFERENCES `cm_co_petition_attributes` (`id`),
  CONSTRAINT `cm_co_petition_attributes_co_petition_id_fk` FOREIGN KEY (`co_petition_id`) REFERENCES `cm_co_petitions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_petition_attributes`
--

LOCK TABLES `cm_co_petition_attributes` WRITE;
/*!40000 ALTER TABLE `cm_co_petition_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_petition_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_petition_history_records`
--

DROP TABLE IF EXISTS `cm_co_petition_history_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_petition_history_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_petition_id` int(11) NOT NULL,
  `actor_co_person_id` int(11) DEFAULT NULL,
  `action` varchar(4) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_petition_history_record_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_petition_history_records_actor_co_person_id_fk` (`actor_co_person_id`),
  KEY `cm_co_petition_history_records_i1` (`co_petition_id`),
  KEY `cm_co_petition_history_records_i2` (`co_petition_history_record_id`),
  CONSTRAINT `cm_co_petition_history_records_actor_co_person_id_fk` FOREIGN KEY (`actor_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_petition_history_records_co_petition_history_record_id_fk` FOREIGN KEY (`co_petition_history_record_id`) REFERENCES `cm_co_petition_history_records` (`id`),
  CONSTRAINT `cm_co_petition_history_records_co_petition_id_fk` FOREIGN KEY (`co_petition_id`) REFERENCES `cm_co_petitions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_petition_history_records`
--

LOCK TABLES `cm_co_petition_history_records` WRITE;
/*!40000 ALTER TABLE `cm_co_petition_history_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_petition_history_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_petitions`
--

DROP TABLE IF EXISTS `cm_co_petitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_petitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_id` int(11) NOT NULL,
  `co_id` int(11) NOT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `enrollee_org_identity_id` int(11) DEFAULT NULL,
  `archived_org_identity_id` int(11) DEFAULT NULL,
  `enrollee_co_person_id` int(11) DEFAULT NULL,
  `enrollee_co_person_role_id` int(11) DEFAULT NULL,
  `petitioner_co_person_id` int(11) DEFAULT NULL,
  `sponsor_co_person_id` int(11) DEFAULT NULL,
  `approver_co_person_id` int(11) DEFAULT NULL,
  `co_invite_id` int(11) DEFAULT NULL,
  `vetting_request_id` int(11) DEFAULT NULL,
  `authenticated_identifier` varchar(256) DEFAULT NULL,
  `reference_identifier` varchar(40) DEFAULT NULL,
  `petitioner_token` varchar(48) DEFAULT NULL,
  `enrollee_token` varchar(48) DEFAULT NULL,
  `return_url` varchar(256) DEFAULT NULL,
  `approver_comment` varchar(256) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_petition_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_petitions_co_enrollment_flow_id_fk` (`co_enrollment_flow_id`),
  KEY `cm_co_petitions_enrollee_co_person_role_id_fk` (`enrollee_co_person_role_id`),
  KEY `cm_co_petitions_sponsor_co_person_id_fk` (`sponsor_co_person_id`),
  KEY `cm_co_petitions_approver_co_person_id_fk` (`approver_co_person_id`),
  KEY `cm_co_petitions_i1` (`co_id`),
  KEY `cm_co_petitions_i2` (`cou_id`),
  KEY `cm_co_petitions_i3` (`enrollee_org_identity_id`),
  KEY `cm_co_petitions_i4` (`petitioner_co_person_id`),
  KEY `cm_co_petitions_i5` (`co_invite_id`),
  KEY `cm_co_petitions_i6` (`co_petition_id`),
  KEY `cm_co_petitions_i7` (`enrollee_co_person_id`),
  KEY `cm_co_petitions_i8` (`archived_org_identity_id`),
  KEY `cm_co_petitions_i9` (`authenticated_identifier`),
  KEY `cm_co_petitions_i10` (`vetting_request_id`),
  CONSTRAINT `cm_co_petitions_approver_co_person_id_fk` FOREIGN KEY (`approver_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_petitions_archived_org_identity_id_fk` FOREIGN KEY (`archived_org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_co_petitions_co_enrollment_flow_id_fk` FOREIGN KEY (`co_enrollment_flow_id`) REFERENCES `cm_co_enrollment_flows` (`id`),
  CONSTRAINT `cm_co_petitions_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_petitions_co_invite_id_fk` FOREIGN KEY (`co_invite_id`) REFERENCES `cm_co_invites` (`id`),
  CONSTRAINT `cm_co_petitions_co_petition_id_fk` FOREIGN KEY (`co_petition_id`) REFERENCES `cm_co_petitions` (`id`),
  CONSTRAINT `cm_co_petitions_cou_id_fk` FOREIGN KEY (`cou_id`) REFERENCES `cm_cous` (`id`),
  CONSTRAINT `cm_co_petitions_enrollee_co_person_id_fk` FOREIGN KEY (`enrollee_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_petitions_enrollee_co_person_role_id_fk` FOREIGN KEY (`enrollee_co_person_role_id`) REFERENCES `cm_co_person_roles` (`id`),
  CONSTRAINT `cm_co_petitions_enrollee_org_identity_id_fk` FOREIGN KEY (`enrollee_org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_co_petitions_petitioner_co_person_id_fk` FOREIGN KEY (`petitioner_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_petitions_sponsor_co_person_id_fk` FOREIGN KEY (`sponsor_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_petitions_vetting_request_id_fk` FOREIGN KEY (`vetting_request_id`) REFERENCES `cm_vetting_requests` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_petitions`
--

LOCK TABLES `cm_co_petitions` WRITE;
/*!40000 ALTER TABLE `cm_co_petitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_petitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_pipelines`
--

DROP TABLE IF EXISTS `cm_co_pipelines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_pipelines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `match_strategy` varchar(2) DEFAULT NULL,
  `match_type` varchar(32) DEFAULT NULL,
  `match_server_id` int(11) DEFAULT NULL,
  `sync_on_add` tinyint(1) DEFAULT NULL,
  `sync_on_update` tinyint(1) DEFAULT NULL,
  `sync_on_delete` tinyint(1) DEFAULT NULL,
  `sync_coperson_status` varchar(2) DEFAULT NULL,
  `create_role` tinyint(1) DEFAULT NULL,
  `sync_cou_id` int(11) DEFAULT NULL,
  `sync_affiliation` varchar(32) DEFAULT NULL,
  `sync_replace_cou_id` int(11) DEFAULT NULL,
  `sync_status_on_delete` varchar(2) DEFAULT NULL,
  `sync_identifier_type` varchar(32) DEFAULT NULL,
  `co_enrollment_flow_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_pipeline_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_pipelines_match_server_id_fk` (`match_server_id`),
  KEY `cm_co_pipelines_sync_cou_id_fk` (`sync_cou_id`),
  KEY `cm_co_pipelines_sync_replace_cou_id_fk` (`sync_replace_cou_id`),
  KEY `cm_co_pipelines_co_enrollment_flow_id_fk` (`co_enrollment_flow_id`),
  KEY `cm_co_pipelines_i1` (`co_id`),
  KEY `cm_co_pipelines_i2` (`co_pipeline_id`),
  CONSTRAINT `cm_co_pipelines_co_enrollment_flow_id_fk` FOREIGN KEY (`co_enrollment_flow_id`) REFERENCES `cm_co_enrollment_flows` (`id`),
  CONSTRAINT `cm_co_pipelines_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_pipelines_co_pipeline_id_fk` FOREIGN KEY (`co_pipeline_id`) REFERENCES `cm_co_pipelines` (`id`),
  CONSTRAINT `cm_co_pipelines_match_server_id_fk` FOREIGN KEY (`match_server_id`) REFERENCES `cm_servers` (`id`),
  CONSTRAINT `cm_co_pipelines_sync_cou_id_fk` FOREIGN KEY (`sync_cou_id`) REFERENCES `cm_cous` (`id`),
  CONSTRAINT `cm_co_pipelines_sync_replace_cou_id_fk` FOREIGN KEY (`sync_replace_cou_id`) REFERENCES `cm_cous` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_pipelines`
--

LOCK TABLES `cm_co_pipelines` WRITE;
/*!40000 ALTER TABLE `cm_co_pipelines` DISABLE KEYS */;
INSERT INTO `cm_co_pipelines` VALUES (1,1,'MLA Pipeline','A','EA','official',NULL,1,1,1,'',1,2,'',NULL,'D','',NULL,'2025-05-09 17:35:54','2025-05-09 17:35:54',NULL,0,0,'admin');
/*!40000 ALTER TABLE `cm_co_pipelines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_provisioning_counts`
--

DROP TABLE IF EXISTS `cm_co_provisioning_counts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_provisioning_counts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_provisioning_target_id` int(11) NOT NULL,
  `co_job_id` int(11) DEFAULT NULL,
  `provisioning_count` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_provisioning_count_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_provisioning_counts_i1` (`co_provisioning_target_id`),
  KEY `cm_co_provisioning_counts_i2` (`co_provisioning_count_id`),
  KEY `cm_co_provisioning_counts_i3` (`co_job_id`),
  CONSTRAINT `cm_co_provisioning_counts_co_job_id_fk` FOREIGN KEY (`co_job_id`) REFERENCES `cm_co_jobs` (`id`),
  CONSTRAINT `cm_co_provisioning_counts_co_provisioning_count_id_fk` FOREIGN KEY (`co_provisioning_count_id`) REFERENCES `cm_co_provisioning_counts` (`id`),
  CONSTRAINT `cm_co_provisioning_counts_co_provisioning_target_id_fk` FOREIGN KEY (`co_provisioning_target_id`) REFERENCES `cm_co_provisioning_targets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_provisioning_counts`
--

LOCK TABLES `cm_co_provisioning_counts` WRITE;
/*!40000 ALTER TABLE `cm_co_provisioning_counts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_provisioning_counts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_provisioning_exports`
--

DROP TABLE IF EXISTS `cm_co_provisioning_exports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_provisioning_exports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_provisioning_target_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `co_email_list_id` int(11) DEFAULT NULL,
  `co_service_id` int(11) DEFAULT NULL,
  `exporttime` datetime DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_provisioning_exports_i1` (`co_provisioning_target_id`,`co_person_id`),
  UNIQUE KEY `cm_co_provisioning_exports_i2` (`co_provisioning_target_id`,`co_group_id`),
  UNIQUE KEY `cm_co_provisioning_exports_i3` (`co_provisioning_target_id`,`co_email_list_id`),
  UNIQUE KEY `cm_co_provisioning_exports_i4` (`co_provisioning_target_id`,`co_service_id`),
  KEY `cm_co_provisioning_exports_co_person_id_fk` (`co_person_id`),
  KEY `cm_co_provisioning_exports_co_group_id_fk` (`co_group_id`),
  KEY `cm_co_provisioning_exports_co_email_list_id_fk` (`co_email_list_id`),
  KEY `cm_co_provisioning_exports_co_service_id_fk` (`co_service_id`),
  CONSTRAINT `cm_co_provisioning_exports_co_email_list_id_fk` FOREIGN KEY (`co_email_list_id`) REFERENCES `cm_co_email_lists` (`id`),
  CONSTRAINT `cm_co_provisioning_exports_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_provisioning_exports_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_provisioning_exports_co_provisioning_target_id_fk` FOREIGN KEY (`co_provisioning_target_id`) REFERENCES `cm_co_provisioning_targets` (`id`),
  CONSTRAINT `cm_co_provisioning_exports_co_service_id_fk` FOREIGN KEY (`co_service_id`) REFERENCES `cm_co_services` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_provisioning_exports`
--

LOCK TABLES `cm_co_provisioning_exports` WRITE;
/*!40000 ALTER TABLE `cm_co_provisioning_exports` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_provisioning_exports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_provisioning_target_filters`
--

DROP TABLE IF EXISTS `cm_co_provisioning_target_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_provisioning_target_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_provisioning_target_id` int(11) NOT NULL,
  `data_filter_id` int(11) NOT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_provisioning_target_filter_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_provisioning_target_filters_i1` (`co_provisioning_target_id`),
  KEY `cm_co_provisioning_target_filters_i2` (`data_filter_id`),
  CONSTRAINT `cm_co_provisioning_target_filters_co_provisioning_target_id_fk` FOREIGN KEY (`co_provisioning_target_id`) REFERENCES `cm_co_provisioning_targets` (`id`),
  CONSTRAINT `cm_co_provisioning_target_filters_data_filter_id_fk` FOREIGN KEY (`data_filter_id`) REFERENCES `cm_data_filters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_provisioning_target_filters`
--

LOCK TABLES `cm_co_provisioning_target_filters` WRITE;
/*!40000 ALTER TABLE `cm_co_provisioning_target_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_provisioning_target_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_provisioning_targets`
--

DROP TABLE IF EXISTS `cm_co_provisioning_targets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_provisioning_targets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `provision_co_group_id` int(11) DEFAULT NULL,
  `skip_org_identity_source_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `retry_interval` int(11) DEFAULT NULL,
  `max_retry` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_provisioning_targets_provision_co_group_id_fk` (`provision_co_group_id`),
  KEY `cm_co_provisioning_targets_skip_org_identity_source_id_fk` (`skip_org_identity_source_id`),
  KEY `cm_co_provisioning_targets_i1` (`co_id`),
  CONSTRAINT `cm_co_provisioning_targets_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_provisioning_targets_provision_co_group_id_fk` FOREIGN KEY (`provision_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_provisioning_targets_skip_org_identity_source_id_fk` FOREIGN KEY (`skip_org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_provisioning_targets`
--

LOCK TABLES `cm_co_provisioning_targets` WRITE;
/*!40000 ALTER TABLE `cm_co_provisioning_targets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_provisioning_targets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_self_service_permissions`
--

DROP TABLE IF EXISTS `cm_co_self_service_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_self_service_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `model` varchar(40) DEFAULT NULL,
  `type` varchar(16) DEFAULT NULL,
  `permission` varchar(16) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_self_service_permissions_i1` (`co_id`),
  CONSTRAINT `cm_co_self_service_permissions_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_self_service_permissions`
--

LOCK TABLES `cm_co_self_service_permissions` WRITE;
/*!40000 ALTER TABLE `cm_co_self_service_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_self_service_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_sequential_identifier_assignments`
--

DROP TABLE IF EXISTS `cm_co_sequential_identifier_assignments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_sequential_identifier_assignments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_identifier_assignment_id` int(11) NOT NULL,
  `affix` varchar(256) DEFAULT NULL,
  `last` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_sequential_identifier_assignments_i1` (`co_identifier_assignment_id`,`affix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_sequential_identifier_assignments`
--

LOCK TABLES `cm_co_sequential_identifier_assignments` WRITE;
/*!40000 ALTER TABLE `cm_co_sequential_identifier_assignments` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_sequential_identifier_assignments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_services`
--

DROP TABLE IF EXISTS `cm_co_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `short_label` varchar(32) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `cluster_id` int(11) DEFAULT NULL,
  `service_url` varchar(256) DEFAULT NULL,
  `service_label` varchar(1024) DEFAULT NULL,
  `contact_email` varchar(128) DEFAULT NULL,
  `logo_url` varchar(512) DEFAULT NULL,
  `entitlement_uri` varchar(256) DEFAULT NULL,
  `visibility` varchar(2) DEFAULT NULL,
  `identifier_type` varchar(32) DEFAULT NULL,
  `authenticator_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_service_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_services_cou_id_fk` (`cou_id`),
  KEY `cm_co_services_cluster_id_fk` (`cluster_id`),
  KEY `cm_co_services_authenticator_id_fk` (`authenticator_id`),
  KEY `cm_co_services_i1` (`co_id`),
  KEY `cm_co_services_i2` (`co_service_id`),
  KEY `cm_co_services_i3` (`co_group_id`),
  KEY `cm_co_services_i4` (`co_id`,`identifier_type`),
  KEY `cm_co_services_i5` (`co_id`,`short_label`),
  CONSTRAINT `cm_co_services_authenticator_id_fk` FOREIGN KEY (`authenticator_id`) REFERENCES `cm_authenticators` (`id`),
  CONSTRAINT `cm_co_services_cluster_id_fk` FOREIGN KEY (`cluster_id`) REFERENCES `cm_clusters` (`id`),
  CONSTRAINT `cm_co_services_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_co_services_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_services_co_service_id_fk` FOREIGN KEY (`co_service_id`) REFERENCES `cm_co_services` (`id`),
  CONSTRAINT `cm_co_services_cou_id_fk` FOREIGN KEY (`cou_id`) REFERENCES `cm_cous` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_services`
--

LOCK TABLES `cm_co_services` WRITE;
/*!40000 ALTER TABLE `cm_co_services` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_services_widgets`
--

DROP TABLE IF EXISTS `cm_co_services_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_services_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_dashboard_widget_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_services_widgets_i1` (`co_dashboard_widget_id`),
  CONSTRAINT `cm_co_services_widgets_co_dashboard_widget_id_fk` FOREIGN KEY (`co_dashboard_widget_id`) REFERENCES `cm_co_dashboard_widgets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_services_widgets`
--

LOCK TABLES `cm_co_services_widgets` WRITE;
/*!40000 ALTER TABLE `cm_co_services_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_services_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_settings`
--

DROP TABLE IF EXISTS `cm_co_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `enable_nsf_demo` tinyint(1) DEFAULT NULL,
  `disable_expiration` tinyint(1) DEFAULT NULL,
  `disable_ois_sync` tinyint(1) DEFAULT NULL,
  `group_create_admin_only` tinyint(1) DEFAULT NULL,
  `group_validity_sync_window` int(11) DEFAULT NULL,
  `garbage_collection_interval` int(11) DEFAULT NULL,
  `enable_normalization` tinyint(1) DEFAULT NULL,
  `enable_empty_cou` tinyint(1) DEFAULT NULL,
  `invitation_validity` int(11) DEFAULT NULL,
  `permitted_fields_name` varchar(160) DEFAULT NULL,
  `required_fields_addr` varchar(160) DEFAULT NULL,
  `required_fields_name` varchar(160) DEFAULT NULL,
  `person_picker_email_type` varchar(160) DEFAULT NULL,
  `person_picker_identifier_type` varchar(160) DEFAULT NULL,
  `person_picker_display_types` tinyint(1) DEFAULT NULL,
  `t_and_c_login_mode` varchar(2) DEFAULT NULL,
  `sponsor_eligibility` varchar(2) DEFAULT NULL,
  `theme_stacking` varchar(2) DEFAULT NULL,
  `sponsor_co_group_id` int(11) DEFAULT NULL,
  `default_co_pipeline_id` int(11) DEFAULT NULL,
  `elect_strategy_primary_name` varchar(2) DEFAULT NULL,
  `co_dashboard_id` int(11) DEFAULT NULL,
  `co_theme_id` int(11) DEFAULT NULL,
  `global_search_limit` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_settings_i1` (`co_id`),
  KEY `cm_co_settings_default_co_pipeline_id_fk` (`default_co_pipeline_id`),
  KEY `cm_co_settings_co_dashboard_id_fk` (`co_dashboard_id`),
  KEY `cm_co_settings_co_theme_id_fk` (`co_theme_id`),
  CONSTRAINT `cm_co_settings_co_dashboard_id_fk` FOREIGN KEY (`co_dashboard_id`) REFERENCES `cm_co_dashboards` (`id`),
  CONSTRAINT `cm_co_settings_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_settings_co_theme_id_fk` FOREIGN KEY (`co_theme_id`) REFERENCES `cm_co_themes` (`id`),
  CONSTRAINT `cm_co_settings_default_co_pipeline_id_fk` FOREIGN KEY (`default_co_pipeline_id`) REFERENCES `cm_co_pipelines` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_settings`
--

LOCK TABLES `cm_co_settings` WRITE;
/*!40000 ALTER TABLE `cm_co_settings` DISABLE KEYS */;
INSERT INTO `cm_co_settings` VALUES (1,1,0,0,0,0,1440,1440,1,0,1440,'honorific,given,middle,family,suffix','street','given',NULL,NULL,1,'X','A','S',NULL,NULL,NULL,NULL,NULL,500,'2025-05-09 17:04:47','2025-05-09 17:04:47');
/*!40000 ALTER TABLE `cm_co_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_t_and_c_agreements`
--

DROP TABLE IF EXISTS `cm_co_t_and_c_agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_t_and_c_agreements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_terms_and_conditions_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) NOT NULL,
  `agreement_time` datetime DEFAULT NULL,
  `identifier` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_t_and_c_agreements_i1` (`co_terms_and_conditions_id`),
  KEY `cm_co_t_and_c_agreements_i2` (`co_person_id`),
  CONSTRAINT `cm_co_t_and_c_agreements_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_co_t_and_c_agreements_co_terms_and_conditions_id_fk` FOREIGN KEY (`co_terms_and_conditions_id`) REFERENCES `cm_co_terms_and_conditions` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_t_and_c_agreements`
--

LOCK TABLES `cm_co_t_and_c_agreements` WRITE;
/*!40000 ALTER TABLE `cm_co_t_and_c_agreements` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_t_and_c_agreements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_terms_and_conditions`
--

DROP TABLE IF EXISTS `cm_co_terms_and_conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_terms_and_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `body` text DEFAULT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_terms_and_conditions_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_terms_and_conditions_cou_id_fk` (`cou_id`),
  KEY `cm_co_terms_and_conditions_i1` (`co_id`),
  KEY `cm_co_terms_and_conditions_i2` (`co_terms_and_conditions_id`),
  CONSTRAINT `cm_co_terms_and_conditions_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_terms_and_conditions_co_terms_and_conditions_id_fk` FOREIGN KEY (`co_terms_and_conditions_id`) REFERENCES `cm_co_terms_and_conditions` (`id`),
  CONSTRAINT `cm_co_terms_and_conditions_cou_id_fk` FOREIGN KEY (`cou_id`) REFERENCES `cm_cous` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_terms_and_conditions`
--

LOCK TABLES `cm_co_terms_and_conditions` WRITE;
/*!40000 ALTER TABLE `cm_co_terms_and_conditions` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_terms_and_conditions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_themes`
--

DROP TABLE IF EXISTS `cm_co_themes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(80) DEFAULT NULL,
  `hide_title` tinyint(1) DEFAULT NULL,
  `hide_footer_logo` tinyint(1) DEFAULT NULL,
  `css` longtext DEFAULT NULL,
  `header` longtext DEFAULT NULL,
  `footer` longtext DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `co_theme_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_co_themes_i1` (`co_id`),
  KEY `cm_co_themes_i2` (`co_theme_id`),
  CONSTRAINT `cm_co_themes_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_co_themes_co_theme_id_fk` FOREIGN KEY (`co_theme_id`) REFERENCES `cm_co_themes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_themes`
--

LOCK TABLES `cm_co_themes` WRITE;
/*!40000 ALTER TABLE `cm_co_themes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_themes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_co_url_widgets`
--

DROP TABLE IF EXISTS `cm_co_url_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_co_url_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_dashboard_widget_id` int(11) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_co_url_widgets_i1` (`co_dashboard_widget_id`),
  CONSTRAINT `cm_co_url_widgets_co_dashboard_widget_id_fk` FOREIGN KEY (`co_dashboard_widget_id`) REFERENCES `cm_co_dashboard_widgets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_co_url_widgets`
--

LOCK TABLES `cm_co_url_widgets` WRITE;
/*!40000 ALTER TABLE `cm_co_url_widgets` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_co_url_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_configuration_labels`
--

DROP TABLE IF EXISTS `cm_configuration_labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_configuration_labels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `label` varchar(64) DEFAULT NULL,
  `color` varchar(9) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `configuration_label_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_configuration_labels_configuration_label_id_fk` (`configuration_label_id`),
  KEY `cm_configuration_labels_i1` (`label`),
  KEY `cm_configuration_labels_i2` (`color`),
  KEY `cm_configuration_labels_i3` (`co_id`),
  CONSTRAINT `cm_configuration_labels_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_configuration_labels_configuration_label_id_fk` FOREIGN KEY (`configuration_label_id`) REFERENCES `cm_configuration_labels` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_configuration_labels`
--

LOCK TABLES `cm_configuration_labels` WRITE;
/*!40000 ALTER TABLE `cm_configuration_labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_configuration_labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_contacts`
--

DROP TABLE IF EXISTS `cm_contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `given` varchar(128) DEFAULT NULL,
  `family` varchar(128) DEFAULT NULL,
  `company` varchar(128) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `mail` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `contact_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_contacts_i1` (`co_department_id`),
  KEY `cm_contacts_i2` (`organization_id`),
  KEY `cm_contacts_i3` (`contact_id`),
  CONSTRAINT `cm_contacts_co_department_id_fk` FOREIGN KEY (`co_department_id`) REFERENCES `cm_co_departments` (`id`),
  CONSTRAINT `cm_contacts_contact_id_fk` FOREIGN KEY (`contact_id`) REFERENCES `cm_contacts` (`id`),
  CONSTRAINT `cm_contacts_organization_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `cm_organizations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_contacts`
--

LOCK TABLES `cm_contacts` WRITE;
/*!40000 ALTER TABLE `cm_contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_core_apis`
--

DROP TABLE IF EXISTS `cm_core_apis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_core_apis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `status` varchar(2) DEFAULT NULL,
  `api_user_id` int(11) NOT NULL,
  `identifier_type` varchar(32) DEFAULT NULL,
  `index_response_type` varchar(2) DEFAULT NULL,
  `expunge_on_delete` tinyint(1) DEFAULT NULL,
  `api` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `core_api_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_core_apis_i1` (`co_id`),
  KEY `cm_core_apis_i2` (`api_user_id`),
  KEY `cm_core_apis_i3` (`core_api_id`),
  CONSTRAINT `cm_core_apis_api_user_id_fk` FOREIGN KEY (`api_user_id`) REFERENCES `cm_api_users` (`id`),
  CONSTRAINT `cm_core_apis_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_core_apis_core_api_id_fk` FOREIGN KEY (`core_api_id`) REFERENCES `cm_core_apis` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_core_apis`
--

LOCK TABLES `cm_core_apis` WRITE;
/*!40000 ALTER TABLE `cm_core_apis` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_core_apis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_cos`
--

DROP TABLE IF EXISTS `cm_cos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_cos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_cos_i1` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_cos`
--

LOCK TABLES `cm_cos` WRITE;
/*!40000 ALTER TABLE `cm_cos` DISABLE KEYS */;
INSERT INTO `cm_cos` VALUES (1,'COmanage','COmanage Registry Internal CO','A','2025-03-27 15:01:41','2025-03-27 15:01:41');
/*!40000 ALTER TABLE `cm_cos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_cous`
--

DROP TABLE IF EXISTS `cm_cous`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_cous` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `configuration_labels` varchar(1024) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rght` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `cou_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_cous_parent_id_fk` (`parent_id`),
  KEY `cm_cous_i1` (`co_id`),
  KEY `cm_cous_i2` (`name`),
  KEY `cm_cous_i3` (`co_id`,`name`),
  KEY `cm_cous_i4` (`cou_id`),
  CONSTRAINT `cm_cous_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_cous_cou_id_fk` FOREIGN KEY (`cou_id`) REFERENCES `cm_cous` (`id`),
  CONSTRAINT `cm_cous_parent_id_fk` FOREIGN KEY (`parent_id`) REFERENCES `cm_cous` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_cous`
--

LOCK TABLES `cm_cous` WRITE;
/*!40000 ALTER TABLE `cm_cous` DISABLE KEYS */;
INSERT INTO `cm_cous` VALUES (1,1,'Knowledge Commons','Knowledge Commons','',NULL,1,2,'2025-05-09 17:05:29','2025-05-09 17:05:29',NULL,0,0,'admin'),(2,1,'MLA','Modern Language Association','',NULL,3,4,'2025-05-09 17:33:51','2025-05-09 17:33:51',NULL,0,0,'admin');
/*!40000 ALTER TABLE `cm_cous` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_data_filters`
--

DROP TABLE IF EXISTS `cm_data_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_data_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `context` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `data_filter_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_data_filters_data_filter_id_fk` (`data_filter_id`),
  KEY `cm_data_filters_i1` (`co_id`),
  CONSTRAINT `cm_data_filters_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_data_filters_data_filter_id_fk` FOREIGN KEY (`data_filter_id`) REFERENCES `cm_data_filters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_data_filters`
--

LOCK TABLES `cm_data_filters` WRITE;
/*!40000 ALTER TABLE `cm_data_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_data_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_dictionaries`
--

DROP TABLE IF EXISTS `cm_dictionaries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_dictionaries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `mode` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `dictionary_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_dictionaries_i1` (`co_id`),
  KEY `cm_dictionaries_i2` (`dictionary_id`),
  CONSTRAINT `cm_dictionaries_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_dictionaries_dictionary_id_fk` FOREIGN KEY (`dictionary_id`) REFERENCES `cm_dictionaries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_dictionaries`
--

LOCK TABLES `cm_dictionaries` WRITE;
/*!40000 ALTER TABLE `cm_dictionaries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_dictionaries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_dictionary_entries`
--

DROP TABLE IF EXISTS `cm_dictionary_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_dictionary_entries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dictionary_id` int(11) DEFAULT NULL,
  `value` varchar(80) DEFAULT NULL,
  `code` varchar(16) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `dictionary_entry_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_dictionary_entries_i1` (`dictionary_id`),
  KEY `cm_dictionary_entries_i2` (`dictionary_entry_id`),
  CONSTRAINT `cm_dictionary_entries_dictionary_entry_id_fk` FOREIGN KEY (`dictionary_entry_id`) REFERENCES `cm_dictionary_entries` (`id`),
  CONSTRAINT `cm_dictionary_entries_dictionary_id_fk` FOREIGN KEY (`dictionary_id`) REFERENCES `cm_dictionaries` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_dictionary_entries`
--

LOCK TABLES `cm_dictionary_entries` WRITE;
/*!40000 ALTER TABLE `cm_dictionary_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_dictionary_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_elector_data_filter_precedences`
--

DROP TABLE IF EXISTS `cm_elector_data_filter_precedences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_elector_data_filter_precedences` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elector_data_filter_id` int(11) DEFAULT NULL,
  `inbound_attribute_type` varchar(32) DEFAULT NULL,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `elector_data_filter_precedence_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_elector_data_filter_precedences_org_identity_source_id_fk` (`org_identity_source_id`),
  KEY `cm_elector_data_filter_precedences_i1` (`elector_data_filter_id`),
  KEY `cm_elector_data_filter_precedences_i2` (`elector_data_filter_precedence_id`),
  CONSTRAINT `cm_elector_data_filter_precedences_elector_data_filter_id_fk` FOREIGN KEY (`elector_data_filter_id`) REFERENCES `cm_elector_data_filters` (`id`),
  CONSTRAINT `cm_elector_data_filter_precedences_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_elector_data_filter_precedences`
--

LOCK TABLES `cm_elector_data_filter_precedences` WRITE;
/*!40000 ALTER TABLE `cm_elector_data_filter_precedences` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_elector_data_filter_precedences` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_elector_data_filters`
--

DROP TABLE IF EXISTS `cm_elector_data_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_elector_data_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `data_filter_id` int(11) DEFAULT NULL,
  `attribute_name` varchar(32) DEFAULT NULL,
  `outbound_attribute_type` varchar(32) DEFAULT NULL,
  `tie_break_mode` varchar(2) DEFAULT NULL,
  `replacement_mode` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `elector_data_filter_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_elector_data_filters_i1` (`data_filter_id`),
  KEY `cm_elector_data_filters_i2` (`elector_data_filter_id`),
  CONSTRAINT `cm_elector_data_filters_data_filter_id_fk` FOREIGN KEY (`data_filter_id`) REFERENCES `cm_data_filters` (`id`),
  CONSTRAINT `cm_elector_data_filters_elector_data_filter_id_fk` FOREIGN KEY (`elector_data_filter_id`) REFERENCES `cm_elector_data_filters` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_elector_data_filters`
--

LOCK TABLES `cm_elector_data_filters` WRITE;
/*!40000 ALTER TABLE `cm_elector_data_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_elector_data_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_email_address_widget_verifications`
--

DROP TABLE IF EXISTS `cm_email_address_widget_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_email_address_widget_verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) DEFAULT NULL,
  `email_id` int(11) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `token` varchar(16) DEFAULT NULL,
  `co_email_address_widget_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_email_address_widget_verifications_co_person_id_fk` (`co_person_id`),
  KEY `cm_email_address_widget_verifications_i1` (`co_email_address_widget_id`),
  KEY `cm_email_address_widget_verifications_i2` (`token`),
  CONSTRAINT `cm_email_address_widget_verifications_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_email_address_widget_verifications`
--

LOCK TABLES `cm_email_address_widget_verifications` WRITE;
/*!40000 ALTER TABLE `cm_email_address_widget_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_email_address_widget_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_email_addresses`
--

DROP TABLE IF EXISTS `cm_email_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_email_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mail` varchar(256) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `source_email_address_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `email_address_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_email_addresses_organization_id_fk` (`organization_id`),
  KEY `cm_email_addresses_i1` (`co_person_id`),
  KEY `cm_email_addresses_i2` (`org_identity_id`),
  KEY `cm_email_addresses_i3` (`mail`),
  KEY `cm_email_addresses_i4` (`email_address_id`),
  KEY `cm_email_addresses_i5` (`source_email_address_id`),
  KEY `cm_email_addresses_i6` (`co_department_id`),
  CONSTRAINT `cm_email_addresses_co_department_id_fk` FOREIGN KEY (`co_department_id`) REFERENCES `cm_co_departments` (`id`),
  CONSTRAINT `cm_email_addresses_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_email_addresses_email_address_id_fk` FOREIGN KEY (`email_address_id`) REFERENCES `cm_email_addresses` (`id`),
  CONSTRAINT `cm_email_addresses_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_email_addresses_organization_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `cm_organizations` (`id`),
  CONSTRAINT `cm_email_addresses_source_email_address_id_fk` FOREIGN KEY (`source_email_address_id`) REFERENCES `cm_email_addresses` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_email_addresses`
--

LOCK TABLES `cm_email_addresses` WRITE;
/*!40000 ALTER TABLE `cm_email_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_email_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_env_sources`
--

DROP TABLE IF EXISTS `cm_env_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_env_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `duplicate_mode` varchar(2) DEFAULT NULL,
  `redirect_on_duplicate` varchar(1024) DEFAULT NULL,
  `sp_type` varchar(2) DEFAULT NULL,
  `default_affiliation` varchar(32) DEFAULT NULL,
  `env_name_honorific` varchar(80) DEFAULT NULL,
  `env_name_given` varchar(80) DEFAULT NULL,
  `env_name_middle` varchar(80) DEFAULT NULL,
  `env_name_family` varchar(80) DEFAULT NULL,
  `env_name_suffix` varchar(80) DEFAULT NULL,
  `env_affiliation` varchar(80) DEFAULT NULL,
  `env_title` varchar(80) DEFAULT NULL,
  `env_o` varchar(80) DEFAULT NULL,
  `env_ou` varchar(80) DEFAULT NULL,
  `env_mail` varchar(80) DEFAULT NULL,
  `env_telephone_number` varchar(80) DEFAULT NULL,
  `env_address_street` varchar(80) DEFAULT NULL,
  `env_address_locality` varchar(80) DEFAULT NULL,
  `env_address_state` varchar(80) DEFAULT NULL,
  `env_address_postalcode` varchar(80) DEFAULT NULL,
  `env_address_country` varchar(80) DEFAULT NULL,
  `env_identifier_eppn` varchar(80) DEFAULT NULL,
  `env_identifier_eppn_login` tinyint(1) DEFAULT NULL,
  `env_identifier_eptid` varchar(256) DEFAULT NULL,
  `env_identifier_eptid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_epuid` varchar(80) DEFAULT NULL,
  `env_identifier_epuid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_oidcsub` varchar(256) DEFAULT NULL,
  `env_identifier_oidcsub_login` tinyint(1) DEFAULT NULL,
  `env_identifier_orcid` varchar(80) DEFAULT NULL,
  `env_identifier_orcid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_samlpairwiseid` varchar(256) DEFAULT NULL,
  `env_identifier_samlpairwiseid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_samlsubjectid` varchar(256) DEFAULT NULL,
  `env_identifier_samlsubjectid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_sorid` varchar(1024) DEFAULT NULL,
  `env_identifier_sorid_login` tinyint(1) DEFAULT NULL,
  `env_identifier_network` varchar(80) DEFAULT NULL,
  `env_identifier_network_login` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_env_sources_i1` (`org_identity_source_id`),
  CONSTRAINT `cm_env_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_env_sources`
--

LOCK TABLES `cm_env_sources` WRITE;
/*!40000 ALTER TABLE `cm_env_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_env_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_file_sources`
--

DROP TABLE IF EXISTS `cm_file_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_file_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `filepath` varchar(256) DEFAULT NULL,
  `format` varchar(2) DEFAULT NULL,
  `archivedir` varchar(256) DEFAULT NULL,
  `threshold_warn` int(11) DEFAULT NULL,
  `threshold_override` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_file_sources_i1` (`org_identity_source_id`),
  CONSTRAINT `cm_file_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_file_sources`
--

LOCK TABLES `cm_file_sources` WRITE;
/*!40000 ALTER TABLE `cm_file_sources` DISABLE KEYS */;
INSERT INTO `cm_file_sources` VALUES (1,1,'/srv/comanage-registry/test_users/MLA_test_users_v2.csv','C2','',NULL,0,'2025-05-09 17:37:34','2025-05-09 18:23:37');
/*!40000 ALTER TABLE `cm_file_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_history_records`
--

DROP TABLE IF EXISTS `cm_history_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_history_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `co_email_list_id` int(11) DEFAULT NULL,
  `co_service_id` int(11) DEFAULT NULL,
  `actor_co_person_id` int(11) DEFAULT NULL,
  `actor_api_user_id` int(11) DEFAULT NULL,
  `action` varchar(4) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `history_record_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_history_records_co_service_id_fk` (`co_service_id`),
  KEY `cm_history_records_actor_co_person_id_fk` (`actor_co_person_id`),
  KEY `cm_history_records_actor_api_user_id_fk` (`actor_api_user_id`),
  KEY `cm_history_records_i1` (`co_person_id`),
  KEY `cm_history_records_i2` (`co_person_role_id`),
  KEY `cm_history_records_i3` (`org_identity_id`),
  KEY `cm_history_records_i4` (`co_group_id`),
  KEY `cm_history_records_i5` (`history_record_id`),
  KEY `cm_history_records_i6` (`co_email_list_id`),
  CONSTRAINT `cm_history_records_actor_api_user_id_fk` FOREIGN KEY (`actor_api_user_id`) REFERENCES `cm_api_users` (`id`),
  CONSTRAINT `cm_history_records_actor_co_person_id_fk` FOREIGN KEY (`actor_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_history_records_co_email_list_id_fk` FOREIGN KEY (`co_email_list_id`) REFERENCES `cm_co_email_lists` (`id`),
  CONSTRAINT `cm_history_records_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_history_records_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_history_records_co_person_role_id_fk` FOREIGN KEY (`co_person_role_id`) REFERENCES `cm_co_person_roles` (`id`),
  CONSTRAINT `cm_history_records_co_service_id_fk` FOREIGN KEY (`co_service_id`) REFERENCES `cm_co_services` (`id`),
  CONSTRAINT `cm_history_records_history_record_id_fk` FOREIGN KEY (`history_record_id`) REFERENCES `cm_history_records` (`id`),
  CONSTRAINT `cm_history_records_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_history_records`
--

LOCK TABLES `cm_history_records` WRITE;
/*!40000 ALTER TABLE `cm_history_records` DISABLE KEYS */;
INSERT INTO `cm_history_records` VALUES (1,1,NULL,NULL,3,NULL,NULL,NULL,NULL,'ACGM','Added to CO Group CO:members:active (3) (member=Yes, owner=No)','2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"'),(2,1,NULL,NULL,4,NULL,NULL,NULL,NULL,'ACGM','Added to CO Group CO:members:all (4) (member=Yes, owner=No)','2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_history_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_http_servers`
--

DROP TABLE IF EXISTS `cm_http_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_http_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(400) DEFAULT NULL,
  `auth_type` varchar(2) DEFAULT NULL,
  `ssl_verify_peer` tinyint(1) DEFAULT NULL,
  `ssl_verify_host` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_http_servers_i1` (`server_id`),
  CONSTRAINT `cm_http_servers_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_http_servers`
--

LOCK TABLES `cm_http_servers` WRITE;
/*!40000 ALTER TABLE `cm_http_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_http_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_identifiers`
--

DROP TABLE IF EXISTS `cm_identifiers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_identifiers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `identifier` varchar(512) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `login` tinyint(1) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `language` varchar(16) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `co_group_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `source_identifier_id` int(11) DEFAULT NULL,
  `co_provisioning_target_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `identifier_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_identifiers_co_provisioning_target_id_fk` (`co_provisioning_target_id`),
  KEY `cm_identifiers_i1` (`identifier`,`type`,`co_person_id`),
  KEY `cm_identifiers_i2` (`identifier`,`type`,`org_identity_id`),
  KEY `cm_identifiers_i3` (`identifier_id`),
  KEY `cm_identifiers_i4` (`source_identifier_id`),
  KEY `cm_identifiers_i5` (`co_person_id`,`co_provisioning_target_id`),
  KEY `cm_identifiers_i6` (`co_department_id`),
  KEY `cm_identifiers_i7` (`co_person_id`),
  KEY `cm_identifiers_i8` (`org_identity_id`),
  KEY `cm_identifiers_i10` (`organization_id`),
  KEY `cm_identifiers_i11` (`co_group_id`),
  CONSTRAINT `cm_identifiers_co_department_id_fk` FOREIGN KEY (`co_department_id`) REFERENCES `cm_co_departments` (`id`),
  CONSTRAINT `cm_identifiers_co_group_id_fk` FOREIGN KEY (`co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_identifiers_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_identifiers_co_provisioning_target_id_fk` FOREIGN KEY (`co_provisioning_target_id`) REFERENCES `cm_co_provisioning_targets` (`id`),
  CONSTRAINT `cm_identifiers_identifier_id_fk` FOREIGN KEY (`identifier_id`) REFERENCES `cm_identifiers` (`id`),
  CONSTRAINT `cm_identifiers_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_identifiers_organization_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `cm_organizations` (`id`),
  CONSTRAINT `cm_identifiers_source_identifier_id_fk` FOREIGN KEY (`source_identifier_id`) REFERENCES `cm_identifiers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_identifiers`
--

LOCK TABLES `cm_identifiers` WRITE;
/*!40000 ALTER TABLE `cm_identifiers` DISABLE KEYS */;
INSERT INTO `cm_identifiers` VALUES (1,'admin','uid',1,'A',NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_identifiers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_identity_documents`
--

DROP TABLE IF EXISTS `cm_identity_documents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_identity_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `document_type` varchar(2) DEFAULT NULL,
  `document_subtype` varchar(80) DEFAULT NULL,
  `issuing_authority` varchar(80) DEFAULT NULL,
  `subject` varchar(80) DEFAULT NULL,
  `document_identifier` varchar(80) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `verification_method` varchar(2) DEFAULT NULL,
  `verifier_identifier` varchar(256) DEFAULT NULL,
  `verifier_comment` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `identity_document_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_identity_documents_i1` (`co_person_id`),
  KEY `cm_identity_documents_i2` (`identity_document_id`),
  CONSTRAINT `cm_identity_documents_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_identity_documents_identity_document_id_fk` FOREIGN KEY (`identity_document_id`) REFERENCES `cm_identity_documents` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_identity_documents`
--

LOCK TABLES `cm_identity_documents` WRITE;
/*!40000 ALTER TABLE `cm_identity_documents` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_identity_documents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_kafka_servers`
--

DROP TABLE IF EXISTS `cm_kafka_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_kafka_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `brokers` text DEFAULT NULL,
  `security_protocol` varchar(24) DEFAULT NULL,
  `sasl_mechanism` varchar(24) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(400) DEFAULT NULL,
  `groupid` varchar(80) DEFAULT NULL,
  `topic` varchar(80) DEFAULT NULL,
  `batch_size` int(11) DEFAULT NULL,
  `partition` int(11) DEFAULT NULL,
  `timeout` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_kafka_servers_i1` (`server_id`),
  CONSTRAINT `cm_kafka_servers_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_kafka_servers`
--

LOCK TABLES `cm_kafka_servers` WRITE;
/*!40000 ALTER TABLE `cm_kafka_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_kafka_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_kdc_servers`
--

DROP TABLE IF EXISTS `cm_kdc_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_kdc_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `hostname` varchar(256) DEFAULT NULL,
  `admin_hostname` varchar(256) DEFAULT NULL,
  `admin_port` int(11) DEFAULT NULL,
  `realm` varchar(256) DEFAULT NULL,
  `principal` varchar(256) DEFAULT NULL,
  `keytab` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_kdc_servers_i1` (`server_id`),
  CONSTRAINT `cm_kdc_servers_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_kdc_servers`
--

LOCK TABLES `cm_kdc_servers` WRITE;
/*!40000 ALTER TABLE `cm_kdc_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_kdc_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_ldap_identifier_validators`
--

DROP TABLE IF EXISTS `cm_ldap_identifier_validators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ldap_identifier_validators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_identifier_validator_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) DEFAULT NULL,
  `binddn` varchar(128) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `basedn` varchar(128) DEFAULT NULL,
  `filter` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_ldap_identifier_validators_i1` (`co_identifier_validator_id`),
  CONSTRAINT `cm_ldap_identifier_validators_co_identifier_validator_id_fk` FOREIGN KEY (`co_identifier_validator_id`) REFERENCES `cm_co_identifier_validators` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ldap_identifier_validators`
--

LOCK TABLES `cm_ldap_identifier_validators` WRITE;
/*!40000 ALTER TABLE `cm_ldap_identifier_validators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ldap_identifier_validators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_ldap_servers`
--

DROP TABLE IF EXISTS `cm_ldap_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ldap_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) DEFAULT NULL,
  `binddn` varchar(128) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `basedn` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_ldap_servers_i1` (`server_id`),
  CONSTRAINT `cm_ldap_servers_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ldap_servers`
--

LOCK TABLES `cm_ldap_servers` WRITE;
/*!40000 ALTER TABLE `cm_ldap_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ldap_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_locks`
--

DROP TABLE IF EXISTS `cm_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_locks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `label` varchar(32) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_locks_i1` (`co_id`,`label`),
  CONSTRAINT `cm_locks_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_locks`
--

LOCK TABLES `cm_locks` WRITE;
/*!40000 ALTER TABLE `cm_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_match_server_attributes`
--

DROP TABLE IF EXISTS `cm_match_server_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_match_server_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `match_server_id` int(11) DEFAULT NULL,
  `attribute` varchar(80) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `required` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_match_server_attributes_i1` (`match_server_id`),
  CONSTRAINT `cm_match_server_attributes_match_server_id_fk` FOREIGN KEY (`match_server_id`) REFERENCES `cm_match_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_match_server_attributes`
--

LOCK TABLES `cm_match_server_attributes` WRITE;
/*!40000 ALTER TABLE `cm_match_server_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_match_server_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_match_servers`
--

DROP TABLE IF EXISTS `cm_match_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_match_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `ssl_verify_peer` tinyint(1) DEFAULT NULL,
  `ssl_verify_host` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_match_servers_i1` (`server_id`),
  CONSTRAINT `cm_match_servers_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_match_servers`
--

LOCK TABLES `cm_match_servers` WRITE;
/*!40000 ALTER TABLE `cm_match_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_match_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_meta`
--

DROP TABLE IF EXISTS `cm_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_meta` (
  `upgrade_version` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_meta`
--

LOCK TABLES `cm_meta` WRITE;
/*!40000 ALTER TABLE `cm_meta` DISABLE KEYS */;
INSERT INTO `cm_meta` VALUES ('4.4.2');
/*!40000 ALTER TABLE `cm_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_mla_sources`
--

DROP TABLE IF EXISTS `cm_mla_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_mla_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `apiroot` varchar(256) DEFAULT NULL,
  `apikey` varchar(64) DEFAULT NULL,
  `apisecret` varchar(128) DEFAULT NULL,
  `eppnsuffix` varchar(128) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_mla_sources_i1` (`org_identity_source_id`),
  CONSTRAINT `cm_mla_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_mla_sources`
--

LOCK TABLES `cm_mla_sources` WRITE;
/*!40000 ALTER TABLE `cm_mla_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_mla_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_names`
--

DROP TABLE IF EXISTS `cm_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `honorific` varchar(32) DEFAULT NULL,
  `given` varchar(128) DEFAULT NULL,
  `middle` varchar(128) DEFAULT NULL,
  `family` varchar(128) DEFAULT NULL,
  `suffix` varchar(32) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `language` varchar(16) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `primary_name` tinyint(1) DEFAULT NULL,
  `source_name_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `name_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_names_source_name_id_fk` (`source_name_id`),
  KEY `cm_names_i1` (`name_id`),
  KEY `cm_names_i2` (`co_person_id`),
  KEY `cm_names_i3` (`org_identity_id`),
  CONSTRAINT `cm_names_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_names_name_id_fk` FOREIGN KEY (`name_id`) REFERENCES `cm_names` (`id`),
  CONSTRAINT `cm_names_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_names_source_name_id_fk` FOREIGN KEY (`source_name_id`) REFERENCES `cm_names` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_names`
--

LOCK TABLES `cm_names` WRITE;
/*!40000 ALTER TABLE `cm_names` DISABLE KEYS */;
INSERT INTO `cm_names` VALUES (1,NULL,'Admin',NULL,'Local',NULL,'official',NULL,NULL,1,1,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"'),(2,NULL,'Admin',NULL,'Local',NULL,'official',NULL,1,NULL,1,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_navigation_links`
--

DROP TABLE IF EXISTS `cm_navigation_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_navigation_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(256) DEFAULT NULL,
  `title` varchar(256) DEFAULT NULL,
  `url` varchar(256) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `location` varchar(32) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_navigation_links`
--

LOCK TABLES `cm_navigation_links` WRITE;
/*!40000 ALTER TABLE `cm_navigation_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_navigation_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_net_forum_sources`
--

DROP TABLE IF EXISTS `cm_net_forum_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_net_forum_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) DEFAULT NULL,
  `username` varchar(128) DEFAULT NULL,
  `password` varchar(64) DEFAULT NULL,
  `query_committees` tinyint(1) DEFAULT NULL,
  `query_events` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_net_forum_sources_i1` (`org_identity_source_id`),
  CONSTRAINT `cm_net_forum_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_net_forum_sources`
--

LOCK TABLES `cm_net_forum_sources` WRITE;
/*!40000 ALTER TABLE `cm_net_forum_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_net_forum_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_novi_sources`
--

DROP TABLE IF EXISTS `cm_novi_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_novi_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_novi_sources_i1` (`org_identity_source_id`),
  KEY `cm_novi_sources_server_id_fk` (`server_id`),
  CONSTRAINT `cm_novi_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`),
  CONSTRAINT `cm_novi_sources_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_novi_sources`
--

LOCK TABLES `cm_novi_sources` WRITE;
/*!40000 ALTER TABLE `cm_novi_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_novi_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_oauth2_servers`
--

DROP TABLE IF EXISTS `cm_oauth2_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_oauth2_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `serverurl` varchar(256) DEFAULT NULL,
  `clientid` varchar(120) DEFAULT NULL,
  `client_secret` varchar(80) DEFAULT NULL,
  `access_grant_type` varchar(2) DEFAULT NULL,
  `scope` varchar(256) DEFAULT NULL,
  `refresh_token` longtext DEFAULT NULL,
  `access_token` longtext DEFAULT NULL,
  `token_response` longtext DEFAULT NULL,
  `proxy` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_oauth2_servers_i1` (`server_id`),
  CONSTRAINT `cm_oauth2_servers_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_oauth2_servers`
--

LOCK TABLES `cm_oauth2_servers` WRITE;
/*!40000 ALTER TABLE `cm_oauth2_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_oauth2_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_ois_registrations`
--

DROP TABLE IF EXISTS `cm_ois_registrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ois_registrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_eligibility_widget_id` int(11) DEFAULT NULL,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `description` varchar(64) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_ois_registrations_i1` (`co_eligibility_widget_id`),
  KEY `cm_ois_registrations_i2` (`org_identity_source_id`),
  CONSTRAINT `cm_ois_registrations_co_eligibility_widget_id_fk` FOREIGN KEY (`co_eligibility_widget_id`) REFERENCES `cm_co_eligibility_widgets` (`id`),
  CONSTRAINT `cm_ois_registrations_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ois_registrations`
--

LOCK TABLES `cm_ois_registrations` WRITE;
/*!40000 ALTER TABLE `cm_ois_registrations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ois_registrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_orcid_sources`
--

DROP TABLE IF EXISTS `cm_orcid_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_orcid_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `scope_inherit` tinyint(1) DEFAULT NULL,
  `api_tier` varchar(3) DEFAULT NULL,
  `api_type` varchar(3) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_orcid_sources_i1` (`org_identity_source_id`),
  KEY `cm_orcid_sources_server_id_fk` (`server_id`),
  CONSTRAINT `cm_orcid_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`),
  CONSTRAINT `cm_orcid_sources_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_orcid_sources`
--

LOCK TABLES `cm_orcid_sources` WRITE;
/*!40000 ALTER TABLE `cm_orcid_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_orcid_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_orcid_tokens`
--

DROP TABLE IF EXISTS `cm_orcid_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_orcid_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orcid_source_id` int(11) DEFAULT NULL,
  `orcid_identifier` varchar(128) DEFAULT NULL,
  `access_token` longtext DEFAULT NULL,
  `id_token` longtext DEFAULT NULL,
  `refresh_token` longtext DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_orcid_sources_i1` (`orcid_source_id`,`orcid_identifier`),
  KEY `cm_orcid_identifiers_i2` (`orcid_identifier`),
  CONSTRAINT `cm_orcid_tokens_orcid_source_id_fk` FOREIGN KEY (`orcid_source_id`) REFERENCES `cm_orcid_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_orcid_tokens`
--

LOCK TABLES `cm_orcid_tokens` WRITE;
/*!40000 ALTER TABLE `cm_orcid_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_orcid_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_org_identities`
--

DROP TABLE IF EXISTS `cm_org_identities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_org_identities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(2) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `affiliation` varchar(32) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `o` varchar(128) DEFAULT NULL,
  `ou` varchar(128) DEFAULT NULL,
  `co_id` int(11) DEFAULT NULL,
  `valid_from` datetime DEFAULT NULL,
  `valid_through` datetime DEFAULT NULL,
  `manager_identifier` varchar(512) DEFAULT NULL,
  `sponsor_identifier` varchar(512) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_org_identities_i1` (`co_id`),
  KEY `cm_org_identities_i2` (`org_identity_id`),
  CONSTRAINT `cm_org_identities_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_org_identities_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_org_identities`
--

LOCK TABLES `cm_org_identities` WRITE;
/*!40000 ALTER TABLE `cm_org_identities` DISABLE KEYS */;
INSERT INTO `cm_org_identities` VALUES (1,NULL,NULL,'member',NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,'2025-03-27 15:01:41','2025-03-27 15:01:41',NULL,0,0,'Shell user \"root\"');
/*!40000 ALTER TABLE `cm_org_identities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_org_identity_source_filters`
--

DROP TABLE IF EXISTS `cm_org_identity_source_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_org_identity_source_filters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) NOT NULL,
  `data_filter_id` int(11) NOT NULL,
  `ordr` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `org_identity_source_filter_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_org_identity_source_filters_org_identity_source_filter_id_fk` (`org_identity_source_filter_id`),
  KEY `cm_org_identity_source_filters_i1` (`org_identity_source_id`),
  KEY `cm_org_identity_source_filters_i2` (`data_filter_id`),
  CONSTRAINT `cm_org_identity_source_filters_data_filter_id_fk` FOREIGN KEY (`data_filter_id`) REFERENCES `cm_data_filters` (`id`),
  CONSTRAINT `cm_org_identity_source_filters_org_identity_source_filter_id_fk` FOREIGN KEY (`org_identity_source_filter_id`) REFERENCES `cm_org_identity_source_filters` (`id`),
  CONSTRAINT `cm_org_identity_source_filters_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_org_identity_source_filters`
--

LOCK TABLES `cm_org_identity_source_filters` WRITE;
/*!40000 ALTER TABLE `cm_org_identity_source_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_org_identity_source_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_org_identity_source_records`
--

DROP TABLE IF EXISTS `cm_org_identity_source_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_org_identity_source_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `sorid` varchar(1024) DEFAULT NULL,
  `source_record` longtext DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_petition_id` int(11) DEFAULT NULL,
  `reference_identifier` varchar(40) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `org_identity_source_record_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_org_identity_source_records_i2` (`org_identity_id`),
  KEY `cm_org_identity_source_records_i3` (`org_identity_source_id`),
  KEY `cm_org_identity_source_records_i4` (`org_identity_source_record_id`),
  KEY `cm_org_identity_source_records_i5` (`co_petition_id`),
  CONSTRAINT `cm_org_identity_source_records_co_petition_id_fk` FOREIGN KEY (`co_petition_id`) REFERENCES `cm_co_petitions` (`id`),
  CONSTRAINT `cm_org_identity_source_records_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_org_identity_source_records_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`),
  CONSTRAINT `cm_org_identity_source_records_org_identity_source_record_id_fk` FOREIGN KEY (`org_identity_source_record_id`) REFERENCES `cm_org_identity_source_records` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_org_identity_source_records`
--

LOCK TABLES `cm_org_identity_source_records` WRITE;
/*!40000 ALTER TABLE `cm_org_identity_source_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_org_identity_source_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_org_identity_sources`
--

DROP TABLE IF EXISTS `cm_org_identity_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_org_identity_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `sor_label` varchar(40) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `co_pipeline_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `sync_mode` varchar(2) DEFAULT NULL,
  `sync_query_mismatch_mode` varchar(2) DEFAULT NULL,
  `sync_query_skip_known` tinyint(1) DEFAULT NULL,
  `sync_on_user_login` tinyint(1) DEFAULT NULL,
  `eppn_identifier_type` varchar(128) DEFAULT NULL,
  `eppn_suffix` varchar(128) DEFAULT NULL,
  `hash_source_record` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_org_identity_sources_co_pipeline_id_fk` (`co_pipeline_id`),
  KEY `cm_org_identity_sources_i1` (`co_id`),
  KEY `cm_org_identity_sources_i2` (`org_identity_source_id`),
  CONSTRAINT `cm_org_identity_sources_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_org_identity_sources_co_pipeline_id_fk` FOREIGN KEY (`co_pipeline_id`) REFERENCES `cm_co_pipelines` (`id`),
  CONSTRAINT `cm_org_identity_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_org_identity_sources`
--

LOCK TABLES `cm_org_identity_sources` WRITE;
/*!40000 ALTER TABLE `cm_org_identity_sources` DISABLE KEYS */;
INSERT INTO `cm_org_identity_sources` VALUES (1,1,'MLA Test Users','','FileSource',1,'A','Q','N',0,0,'','',1,'2025-05-09 17:37:34','2025-05-09 17:37:34',NULL,0,0,'admin');
/*!40000 ALTER TABLE `cm_org_identity_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_organization_source_records`
--

DROP TABLE IF EXISTS `cm_organization_source_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_organization_source_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organization_source_id` int(11) DEFAULT NULL,
  `source_key` varchar(1024) DEFAULT NULL,
  `source_record` longtext DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `organization_source_record_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_organization_source_records_i2` (`organization_id`),
  KEY `cm_organization_source_records_i3` (`organization_source_id`),
  KEY `cm_organization_source_records_i4` (`organization_source_record_id`),
  CONSTRAINT `cm_organization_source_records_organization_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `cm_organizations` (`id`),
  CONSTRAINT `cm_organization_source_records_organization_source_id_fk` FOREIGN KEY (`organization_source_id`) REFERENCES `cm_organization_sources` (`id`),
  CONSTRAINT `cm_organization_source_records_organization_source_record_id_fk` FOREIGN KEY (`organization_source_record_id`) REFERENCES `cm_organization_source_records` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_organization_source_records`
--

LOCK TABLES `cm_organization_source_records` WRITE;
/*!40000 ALTER TABLE `cm_organization_source_records` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_organization_source_records` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_organization_sources`
--

DROP TABLE IF EXISTS `cm_organization_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_organization_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `description` varchar(256) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `sync_mode` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `organization_source_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_organization_sources_i1` (`co_id`),
  KEY `cm_organization_sources_i2` (`organization_source_id`),
  CONSTRAINT `cm_organization_sources_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_organization_sources_organization_source_id_fk` FOREIGN KEY (`organization_source_id`) REFERENCES `cm_organization_sources` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_organization_sources`
--

LOCK TABLES `cm_organization_sources` WRITE;
/*!40000 ALTER TABLE `cm_organization_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_organization_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_organizations`
--

DROP TABLE IF EXISTS `cm_organizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_organizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `saml_scope` varchar(256) DEFAULT NULL,
  `logo_url` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_organizations_organization_id_fk` (`organization_id`),
  KEY `cm_organizations_i1` (`co_id`),
  KEY `cm_organizations_i2` (`co_id`,`name`),
  CONSTRAINT `cm_organizations_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_organizations_organization_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `cm_organizations` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_organizations`
--

LOCK TABLES `cm_organizations` WRITE;
/*!40000 ALTER TABLE `cm_organizations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_organizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_password_authenticators`
--

DROP TABLE IF EXISTS `cm_password_authenticators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_password_authenticators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authenticator_id` int(11) DEFAULT NULL,
  `password_source` varchar(2) DEFAULT NULL,
  `min_length` int(11) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `format_crypt_php` tinyint(1) DEFAULT NULL,
  `format_plaintext` tinyint(1) DEFAULT NULL,
  `format_sha1_ldap` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_password_authenticators_i1` (`authenticator_id`),
  CONSTRAINT `cm_password_authenticators_authenticator_id_fk` FOREIGN KEY (`authenticator_id`) REFERENCES `cm_authenticators` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_password_authenticators`
--

LOCK TABLES `cm_password_authenticators` WRITE;
/*!40000 ALTER TABLE `cm_password_authenticators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_password_authenticators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_passwords`
--

DROP TABLE IF EXISTS `cm_passwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_passwords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password_authenticator_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `password` varchar(256) DEFAULT NULL,
  `password_type` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `password_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_passwords_password_authenticator_id_fk` (`password_authenticator_id`),
  KEY `cm_passwords_i1` (`co_person_id`),
  KEY `cm_passwords_i2` (`password_id`),
  CONSTRAINT `cm_passwords_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_passwords_password_authenticator_id_fk` FOREIGN KEY (`password_authenticator_id`) REFERENCES `cm_password_authenticators` (`id`),
  CONSTRAINT `cm_passwords_password_id_fk` FOREIGN KEY (`password_id`) REFERENCES `cm_passwords` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_passwords`
--

LOCK TABLES `cm_passwords` WRITE;
/*!40000 ALTER TABLE `cm_passwords` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_passwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_regex_identifier_validators`
--

DROP TABLE IF EXISTS `cm_regex_identifier_validators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_regex_identifier_validators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_identifier_validator_id` int(11) DEFAULT NULL,
  `pattern` varchar(256) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_regex_identifier_validators_i1` (`co_identifier_validator_id`),
  CONSTRAINT `cm_regex_identifier_validators_co_identifier_validator_id_fk` FOREIGN KEY (`co_identifier_validator_id`) REFERENCES `cm_co_identifier_validators` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_regex_identifier_validators`
--

LOCK TABLES `cm_regex_identifier_validators` WRITE;
/*!40000 ALTER TABLE `cm_regex_identifier_validators` DISABLE KEYS */;
INSERT INTO `cm_regex_identifier_validators` VALUES (1,1,'/^[[:alnum:]_]+$/','2025-05-09 18:18:25','2025-05-09 18:18:35');
/*!40000 ALTER TABLE `cm_regex_identifier_validators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_salesforce_sources`
--

DROP TABLE IF EXISTS `cm_salesforce_sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_salesforce_sources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `org_identity_source_id` int(11) DEFAULT NULL,
  `server_id` int(11) DEFAULT NULL,
  `search_contacts` tinyint(1) DEFAULT NULL,
  `search_users` tinyint(1) DEFAULT NULL,
  `custom_objects` varchar(256) DEFAULT NULL,
  `instance_url` varchar(256) DEFAULT NULL,
  `groupable_attrs` longblob DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_salesforce_sources_i1` (`org_identity_source_id`),
  KEY `cm_salesforce_sources_server_id_fk` (`server_id`),
  CONSTRAINT `cm_salesforce_sources_org_identity_source_id_fk` FOREIGN KEY (`org_identity_source_id`) REFERENCES `cm_org_identity_sources` (`id`),
  CONSTRAINT `cm_salesforce_sources_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_salesforce_sources`
--

LOCK TABLES `cm_salesforce_sources` WRITE;
/*!40000 ALTER TABLE `cm_salesforce_sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_salesforce_sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_servers`
--

DROP TABLE IF EXISTS `cm_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `server_type` varchar(2) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_servers_i1` (`co_id`),
  KEY `cm_servers_i2` (`co_id`,`server_type`),
  CONSTRAINT `cm_servers_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_servers`
--

LOCK TABLES `cm_servers` WRITE;
/*!40000 ALTER TABLE `cm_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_sql_servers`
--

DROP TABLE IF EXISTS `cm_sql_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_sql_servers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `server_id` int(11) DEFAULT NULL,
  `type` varchar(2) DEFAULT NULL,
  `hostname` varchar(128) DEFAULT NULL,
  `username` varchar(120) DEFAULT NULL,
  `password` varchar(80) DEFAULT NULL,
  `databas` varchar(128) DEFAULT NULL,
  `dbport` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_sql_servers_i1` (`server_id`),
  CONSTRAINT `cm_sql_servers_server_id_fk` FOREIGN KEY (`server_id`) REFERENCES `cm_servers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_sql_servers`
--

LOCK TABLES `cm_sql_servers` WRITE;
/*!40000 ALTER TABLE `cm_sql_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_sql_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_ssh_key_authenticators`
--

DROP TABLE IF EXISTS `cm_ssh_key_authenticators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ssh_key_authenticators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authenticator_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cm_ssh_key_authenticators_i1` (`authenticator_id`),
  CONSTRAINT `cm_ssh_key_authenticators_authenticator_id_fk` FOREIGN KEY (`authenticator_id`) REFERENCES `cm_authenticators` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ssh_key_authenticators`
--

LOCK TABLES `cm_ssh_key_authenticators` WRITE;
/*!40000 ALTER TABLE `cm_ssh_key_authenticators` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ssh_key_authenticators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_ssh_keys`
--

DROP TABLE IF EXISTS `cm_ssh_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_ssh_keys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ssh_key_authenticator_id` int(11) DEFAULT NULL,
  `co_person_id` int(11) NOT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `skey` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `ssh_key_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_ssh_keys_ssh_key_authenticator_id_fk` (`ssh_key_authenticator_id`),
  KEY `cm_ssh_keys_i1` (`co_person_id`),
  KEY `cm_ssh_keys_i2` (`ssh_key_id`),
  CONSTRAINT `cm_ssh_keys_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_ssh_keys_ssh_key_authenticator_id_fk` FOREIGN KEY (`ssh_key_authenticator_id`) REFERENCES `cm_ssh_key_authenticators` (`id`),
  CONSTRAINT `cm_ssh_keys_ssh_key_id_fk` FOREIGN KEY (`ssh_key_id`) REFERENCES `cm_ssh_keys` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_ssh_keys`
--

LOCK TABLES `cm_ssh_keys` WRITE;
/*!40000 ALTER TABLE `cm_ssh_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_ssh_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_telephone_numbers`
--

DROP TABLE IF EXISTS `cm_telephone_numbers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_telephone_numbers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(3) DEFAULT NULL,
  `area_code` varchar(8) DEFAULT NULL,
  `number` varchar(64) DEFAULT NULL,
  `extension` varchar(16) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `co_person_role_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `source_telephone_number_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `telephone_number_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_telephone_numbers_i1` (`co_person_role_id`),
  KEY `cm_telephone_numbers_i2` (`org_identity_id`),
  KEY `cm_telephone_numbers_i3` (`telephone_number_id`),
  KEY `cm_telephone_numbers_i4` (`source_telephone_number_id`),
  KEY `cm_telephone_numbers_i5` (`co_department_id`),
  KEY `cm_telephone_numbers_i6` (`organization_id`),
  CONSTRAINT `cm_telephone_numbers_co_department_id_fk` FOREIGN KEY (`co_department_id`) REFERENCES `cm_co_departments` (`id`),
  CONSTRAINT `cm_telephone_numbers_co_person_role_id_fk` FOREIGN KEY (`co_person_role_id`) REFERENCES `cm_co_person_roles` (`id`),
  CONSTRAINT `cm_telephone_numbers_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_telephone_numbers_organization_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `cm_organizations` (`id`),
  CONSTRAINT `cm_telephone_numbers_source_telephone_number_id_fk` FOREIGN KEY (`source_telephone_number_id`) REFERENCES `cm_telephone_numbers` (`id`),
  CONSTRAINT `cm_telephone_numbers_telephone_number_id_fk` FOREIGN KEY (`telephone_number_id`) REFERENCES `cm_telephone_numbers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_telephone_numbers`
--

LOCK TABLES `cm_telephone_numbers` WRITE;
/*!40000 ALTER TABLE `cm_telephone_numbers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_telephone_numbers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_test_enrollers`
--

DROP TABLE IF EXISTS `cm_test_enrollers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_test_enrollers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_enrollment_flow_wedge_id` int(11) DEFAULT NULL,
  `test_start` tinyint(1) DEFAULT NULL,
  `test_petitioner_attributes` tinyint(1) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `test_enroller_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_test_enrollers_i1` (`co_enrollment_flow_wedge_id`),
  KEY `cm_test_enrollers_i2` (`test_enroller_id`),
  CONSTRAINT `cm_test_enrollers_co_enrollment_flow_wedge_id_fk` FOREIGN KEY (`co_enrollment_flow_wedge_id`) REFERENCES `cm_co_enrollment_flow_wedges` (`id`),
  CONSTRAINT `cm_test_enrollers_test_enroller_id_fk` FOREIGN KEY (`test_enroller_id`) REFERENCES `cm_test_enrollers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_test_enrollers`
--

LOCK TABLES `cm_test_enrollers` WRITE;
/*!40000 ALTER TABLE `cm_test_enrollers` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_test_enrollers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_urls`
--

DROP TABLE IF EXISTS `cm_urls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_urls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(256) DEFAULT NULL,
  `description` varchar(128) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `language` varchar(16) DEFAULT NULL,
  `co_person_id` int(11) DEFAULT NULL,
  `org_identity_id` int(11) DEFAULT NULL,
  `co_department_id` int(11) DEFAULT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `source_url_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `url_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_urls_i1` (`co_person_id`),
  KEY `cm_urls_i2` (`org_identity_id`),
  KEY `cm_urls_i3` (`co_department_id`),
  KEY `cm_urls_i4` (`url_id`),
  KEY `cm_urls_i5` (`source_url_id`),
  KEY `cm_urls_i6` (`organization_id`),
  CONSTRAINT `cm_urls_co_department_id_fk` FOREIGN KEY (`co_department_id`) REFERENCES `cm_co_departments` (`id`),
  CONSTRAINT `cm_urls_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_urls_org_identity_id_fk` FOREIGN KEY (`org_identity_id`) REFERENCES `cm_org_identities` (`id`),
  CONSTRAINT `cm_urls_organization_id_fk` FOREIGN KEY (`organization_id`) REFERENCES `cm_organizations` (`id`),
  CONSTRAINT `cm_urls_source_url_id_fk` FOREIGN KEY (`source_url_id`) REFERENCES `cm_urls` (`id`),
  CONSTRAINT `cm_urls_url_id_fk` FOREIGN KEY (`url_id`) REFERENCES `cm_urls` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_urls`
--

LOCK TABLES `cm_urls` WRITE;
/*!40000 ALTER TABLE `cm_urls` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_urls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_vetting_requests`
--

DROP TABLE IF EXISTS `cm_vetting_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_vetting_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_person_id` int(11) NOT NULL,
  `vetting_step_id` int(11) DEFAULT NULL,
  `co_job_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `vetting_request_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_vetting_requests_co_job_id_fk` (`co_job_id`),
  KEY `cm_vetting_requests_vetting_request_id_fk` (`vetting_request_id`),
  KEY `cm_vetting_requests_i1` (`co_person_id`),
  KEY `cm_vetting_requests_i2` (`vetting_step_id`),
  CONSTRAINT `cm_vetting_requests_co_job_id_fk` FOREIGN KEY (`co_job_id`) REFERENCES `cm_co_jobs` (`id`),
  CONSTRAINT `cm_vetting_requests_co_person_id_fk` FOREIGN KEY (`co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_vetting_requests_vetting_request_id_fk` FOREIGN KEY (`vetting_request_id`) REFERENCES `cm_vetting_requests` (`id`),
  CONSTRAINT `cm_vetting_requests_vetting_step_id_fk` FOREIGN KEY (`vetting_step_id`) REFERENCES `cm_vetting_steps` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_vetting_requests`
--

LOCK TABLES `cm_vetting_requests` WRITE;
/*!40000 ALTER TABLE `cm_vetting_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_vetting_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_vetting_results`
--

DROP TABLE IF EXISTS `cm_vetting_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_vetting_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `vetting_request_id` int(11) NOT NULL,
  `vetting_step_id` int(11) NOT NULL,
  `vetter_co_person_id` int(11) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `comment` varchar(256) DEFAULT NULL,
  `raw` text DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `vetting_result_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_vetting_results_vetting_step_id_fk` (`vetting_step_id`),
  KEY `cm_vetting_results_vetter_co_person_id_fk` (`vetter_co_person_id`),
  KEY `cm_vetting_results_i1` (`vetting_request_id`),
  KEY `cm_vetting_results_i2` (`vetting_result_id`),
  CONSTRAINT `cm_vetting_results_vetter_co_person_id_fk` FOREIGN KEY (`vetter_co_person_id`) REFERENCES `cm_co_people` (`id`),
  CONSTRAINT `cm_vetting_results_vetting_request_id_fk` FOREIGN KEY (`vetting_request_id`) REFERENCES `cm_vetting_requests` (`id`),
  CONSTRAINT `cm_vetting_results_vetting_result_id_fk` FOREIGN KEY (`vetting_result_id`) REFERENCES `cm_vetting_results` (`id`),
  CONSTRAINT `cm_vetting_results_vetting_step_id_fk` FOREIGN KEY (`vetting_step_id`) REFERENCES `cm_vetting_steps` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_vetting_results`
--

LOCK TABLES `cm_vetting_results` WRITE;
/*!40000 ALTER TABLE `cm_vetting_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_vetting_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cm_vetting_steps`
--

DROP TABLE IF EXISTS `cm_vetting_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cm_vetting_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `co_id` int(11) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  `plugin` varchar(32) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `ordr` int(11) DEFAULT NULL,
  `vetter_co_group_id` int(11) DEFAULT NULL,
  `review_on_result` varchar(2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `vetting_step_id` int(11) DEFAULT NULL,
  `revision` int(11) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `actor_identifier` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cm_vetting_steps_vetter_co_group_id_fk` (`vetter_co_group_id`),
  KEY `cm_vetting_steps_i1` (`co_id`),
  KEY `cm_vetting_steps_i2` (`vetting_step_id`),
  CONSTRAINT `cm_vetting_steps_co_id_fk` FOREIGN KEY (`co_id`) REFERENCES `cm_cos` (`id`),
  CONSTRAINT `cm_vetting_steps_vetter_co_group_id_fk` FOREIGN KEY (`vetter_co_group_id`) REFERENCES `cm_co_groups` (`id`),
  CONSTRAINT `cm_vetting_steps_vetting_step_id_fk` FOREIGN KEY (`vetting_step_id`) REFERENCES `cm_vetting_steps` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cm_vetting_steps`
--

LOCK TABLES `cm_vetting_steps` WRITE;
/*!40000 ALTER TABLE `cm_vetting_steps` DISABLE KEYS */;
/*!40000 ALTER TABLE `cm_vetting_steps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-05-09 18:26:07
