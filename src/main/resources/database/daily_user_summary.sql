--liquibase formatted sql

--changeset mike:create_table
CREATE TABLE IF NOT EXISTS `daily_user_summary` (
    `ID` INT(11) UNSIGNED PRIMARY KEY,
    `name` VARCHAR(128) NOT NULL DEFAULT "anonymous",
    `newcredit` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
    `sum` INT(11) UNSIGNED NOT NULL DEFAULT 0,
    `team` INT(11) UNSIGNED NOT NULL DEFAULT 0,
    `updated` DATETIME NOT NULL
);
--rollback drop table `daily_user_summary`;

--changeset mike:add_index
ALTER TABLE `daily_user_summary` ADD INDEX `name` (`name`);
--rollback DROP INDEX `name` ON `daily_user_summary`;