-- Creates a `root` user with the password `badpassword`
-- This GM account is level 3, so complete control. It should
-- have its password changed completely. More ideally, the whole
-- account should be deleted and a new one created after the
-- server has been tested and goes into production.

USE acore_auth;

DELETE FROM `account` WHERE id = 1;
DELETE FROM `account_access` WHERE id = 1;

INSERT INTO `account` (
    `id`,
    `username`,
    `salt`,
    `verifier`,
    `session_key`,
    `totp_secret`,
    `email`,
    `reg_mail`,
    `joindate`,
    `last_ip`,
    `last_attempt_ip`,
    `failed_logins`,
    `locked`,
    `lock_country`,
    `last_login`, `online`, `expansion`, `mutetime`, `mutereason`, `muteby`, `locale`, `os`, `recruiter`, `totaltime`)
VALUES (
    1,
    'ROOT',
    _binary 0x861dddc97fdca6528091443576d5cca20d5709e4d498660941160fd75810a736,
    _binary 0x865c67c963b0d81f0c9ff6821ce2a331381522aed16b0f3a473f84818fcfde2a,
    _binary 0x9da1ce8533959e11e330955b46819c9088acdffd4decaf272f98f1f05f8647a13a6da56eedf9095c,
    NULL,
    '',
    '',
    '2023-11-15 21:34:04',
    '127.0.0.1',
    '127.0.0.1',
    0,
    0,
    '00',
    '2024-02-14 23:26:08',
    0,
    2,
    0,
    '',
    '',
    0,
    'Win',
    0,
    35399
);

INSERT INTO `account_access` (id, gmlevel, RealmID, comment) VALUES (
    1, 3, -1, "Default GM account"
);
