--liquibase formatted sql

--changeset mike:create_table
CREATE TABLE IF NOT EXISTS `daily_team_summary` (
    `ID` INT(11) UNSIGNED PRIMARY KEY,
    `team` INT(11) UNSIGNED NOT NULL DEFAULT 0,
    `teamname` VARCHAR(256) NOT NULL,
    `score` BIGINT(20) UNSIGNED NOT NULL DEFAULT 0,
    `wu` INT(11) UNSIGNED NOT NULL DEFAULT 0,
    `updated` DATETIME NOT NULL
);
--rollback drop table `daily_team_summary`;

--changeset mike:add_index
ALTER TABLE `daily_team_summary` ADD INDEX `teamname` (`teamname`);
--rollback DROP INDEX `teamname` ON `daily_team_summary`;