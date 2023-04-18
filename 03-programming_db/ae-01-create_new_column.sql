-- add a Boolean column called `expert` with a default value of true
ALTER TABLE programming_languages
ADD COLUMN expert BOOLEAN default true;

-- visualize all to verify column addition
SELECT *
FROM programming_languages;