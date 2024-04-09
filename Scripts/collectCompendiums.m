function [outputArg1,outputArg2] = collectCompendiums(compendiumRoot)
arguments
    compendiumRoot (1,1) {mustBeFolder} = fullfile("C:", "Users", "steve", "Documents", "GitHub", "FightClub5e", "Compendiums");
end
    compendiums = getExistingCompendiums(compendiumRoot);
    xDoc = cell(size(compendiums));
    parent = struct;
    for i=1:numel(compendiums)
        xDoc{i} = xml2struct(compendiums(i));
    end
    if numel(xDoc) > 0
        parent = xDoc{1};
    end

    if numel(xDoc) > 1
        for i = 2:numel(xDoc)
            parentCom = parent.compendium;
            newCom = xDoc{i}.compendium;
            f = string(fieldnames(newCom));
            % TODO merge the compendiums together
        end
    end
    
end