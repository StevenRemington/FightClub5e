function out = getExistingCompendiums(compendiumRoot)
out = dir(fullfile(compendiumRoot, "**/*.xml"));
out = string(fullfile({out.folder}, {out.name}))';

end