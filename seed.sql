-- Seed script to aid local dev
-- Not for actual use

INSERT INTO users (gh_id, gh_name, gh_access_token, last_used_at)
VALUES (1, 'elba', 'elba', current_date),
   (2, 'idris', 'idris', current_date),
   (3, 'lightyear', 'lightyear', current_date),
   (4, 'test_user', 'test_user', current_date)
 ON CONFLICT DO NOTHING;

INSERT INTO groups (group_name, group_name_origin, user_id)
VALUES ('elba', 'elba origin', 1),
   ('idris', 'idris origin', 2),
   ('lightyear', 'lightyear origin', 3),
   ('test_group', 'test group origin', 4)
 ON CONFLICT DO NOTHING;

INSERT INTO packages (group_id, package_name, package_name_origin)
VALUES ( 1, 'elba', 'idris elba' ),
   ( 1, 'website', 'idris elba' ),
   ( 1, 'index', 'idris elba' ),
   ( 2, 'effects', 'an origin story'),
   ( 3, 'core', 'something'),
   ( 3, 'parser', 'something else'),
   ( 4, 'test_package', 'another')
 ON CONFLICT DO NOTHING;

INSERT INTO versions (package_id, semver)
VALUES ( 1, '0.1.0'),
       ( 2, '0.1.0'),
       ( 3, '0.2.0'),
       ( 4, '1.0.0'),
       ( 5, '1.1.1'),
       ( 6, '3.2.1')
ON CONFLICT DO NOTHING;
