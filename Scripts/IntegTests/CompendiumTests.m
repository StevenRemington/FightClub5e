classdef CompendiumTests < matlab.unittest.TestCase
    properties(Constant)
        root = fullfile("C:", "Users", "steve", "Documents", "GitHub", "FightClub5e", "Compendiums");
    end

    methods(TestClassSetup)
        function setupPath(testCase)
            testCase.applyFixture(matlab.unittest.fixtures.PathFixture( ...
                fullfile("C:", "Users", "steve", "Documents", "GitHub", ...
                "FightClub5e", "Scripts")));
        end
    end
    methods (Test)
        % Test methods

        function getExistingCompendium(testCase)
            actual =        ...
                ["C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\134534_Races.xml"
                 "C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\134540_Equipment.xml"
                 "C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\134543_Classes.xml"
                 "C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\134547_Bestiary.xml"
                 "C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\134554_Backgrounds.xml"
                 "C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\143213_Spells.xml"
                 "C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\143217_Feats.xml"
                 "C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\Homebrew\Blood_Hunter_Revised.xml"
                 "C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\Homebrew\Cook.xml"
                 "C:\Users\steve\Documents\GitHub\FightClub5e\Compendiums\Homebrew\Steinhardts_Guide_to_the_Eldritch_Hunt.xml"];
            testCase.verifyEqual(getExistingCompendiums(CompendiumTests.root), actual);
        end
    end

end