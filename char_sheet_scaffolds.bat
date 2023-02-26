rails g scaffold CharSheet player_name:string char_name:string^
  race:string character_class:string level:integer background:string proficiency_bonus:integer^
     max_hp:integer current_hp:integer temp_hp:integer armour_class:integer initiative:integer^
     strength:integer dexterity:integer constitution:integer intelligence:integer wisdom:integer charisma:integer^
      passive_perception:integer speed:integer hit_dice:integer death_save_success:integer death_save_failure:integer ^
       weapons:text equipment:text personality:text ideals:text bonds:text flaws:text features:text gold:integer^
        silver:integer copper:integer platinum:integer spells:text --force
@REM   TODO figure out how to represent the following:
@REM     - proficiencies in skills/saving throws
@REM     - spells