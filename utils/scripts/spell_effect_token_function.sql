DELIMITER $$

DROP FUNCTION IF EXISTS `GetSpellEffectToken`;

-- This function converts a numeric spell effect id to a string label based on server code designations
--
-- example:
-- SELECT `id`, `name`, GetSpellEffectToken(`effectid1`), GetSpellEffectToken(`effectid2`) FROM `spells_new` WHERE `id` IN ('1011', '1602');
CREATE FUNCTION `GetSpellEffectToken` (`effect_id` INT(11)) RETURNS VARCHAR(64)
BEGIN
	DECLARE `token` VARCHAR(64) DEFAULT '';
	
	CASE `effect_id`
		WHEN '0' THEN SET `token` = 'SE_CurrentHP';
		WHEN '1' THEN SET `token` = 'SE_ArmorClass';
		WHEN '2' THEN SET `token` = 'SE_ATK';
		WHEN '3' THEN SET `token` = 'SE_MovementSpeed';
		WHEN '4' THEN SET `token` = 'SE_STR';
		WHEN '5' THEN SET `token` = 'SE_DEX';
		WHEN '6' THEN SET `token` = 'SE_AGI';
		WHEN '7' THEN SET `token` = 'SE_STA';
		WHEN '8' THEN SET `token` = 'SE_INT';
		WHEN '9' THEN SET `token` = 'SE_WIS';
		WHEN '10' THEN SET `token` = 'SE_CHA';
		WHEN '11' THEN SET `token` = 'SE_AttackSpeed';
		WHEN '12' THEN SET `token` = 'SE_Invisibility';
		WHEN '13' THEN SET `token` = 'SE_SeeInvis';
		WHEN '14' THEN SET `token` = 'SE_WaterBreathing';
		WHEN '15' THEN SET `token` = 'SE_CurrentMana';
		WHEN '16' THEN SET `token` = 'SE_NPCFrenzy';
		WHEN '17' THEN SET `token` = 'SE_NPCAwareness';
		WHEN '18' THEN SET `token` = 'SE_Lull';
		WHEN '19' THEN SET `token` = 'SE_AddFaction';
		WHEN '20' THEN SET `token` = 'SE_Blind';
		WHEN '21' THEN SET `token` = 'SE_Stun';
		WHEN '22' THEN SET `token` = 'SE_Charm';
		WHEN '23' THEN SET `token` = 'SE_Fear';
		WHEN '24' THEN SET `token` = 'SE_Stamina';
		WHEN '25' THEN SET `token` = 'SE_BindAffinity';
		WHEN '26' THEN SET `token` = 'SE_Gate';
		WHEN '27' THEN SET `token` = 'SE_CancelMagic';
		WHEN '28' THEN SET `token` = 'SE_InvisVsUndead';
		WHEN '29' THEN SET `token` = 'SE_InvisVsAnimals';
		WHEN '30' THEN SET `token` = 'SE_ChangeFrenzyRad';
		WHEN '31' THEN SET `token` = 'SE_Mez';
		WHEN '32' THEN SET `token` = 'SE_SummonItem';
		WHEN '33' THEN SET `token` = 'SE_SummonPet';
		WHEN '34' THEN SET `token` = 'SE_Confuse';
		WHEN '35' THEN SET `token` = 'SE_DiseaseCounter';
		WHEN '36' THEN SET `token` = 'SE_PoisonCounter';
		WHEN '37' THEN SET `token` = 'SE_DetectHostile';
		WHEN '38' THEN SET `token` = 'SE_DetectMagic';
		WHEN '39' THEN SET `token` = 'SE_DetectPoison';
		WHEN '40' THEN SET `token` = 'SE_DivineAura';
		WHEN '41' THEN SET `token` = 'SE_Destroy';
		WHEN '42' THEN SET `token` = 'SE_ShadowStep';
		WHEN '43' THEN SET `token` = 'SE_Berserk';
		WHEN '44' THEN SET `token` = 'SE_Lycanthropy';
		WHEN '45' THEN SET `token` = 'SE_Vampirism';
		WHEN '46' THEN SET `token` = 'SE_ResistFire';
		WHEN '47' THEN SET `token` = 'SE_ResistCold';
		WHEN '48' THEN SET `token` = 'SE_ResistPoison';
		WHEN '49' THEN SET `token` = 'SE_ResistDisease';
		WHEN '50' THEN SET `token` = 'SE_ResistMagic';
		WHEN '51' THEN SET `token` = 'SE_DetectTraps';
		WHEN '52' THEN SET `token` = 'SE_SenseDead';
		WHEN '53' THEN SET `token` = 'SE_SenseSummoned';
		WHEN '54' THEN SET `token` = 'SE_SenseAnimals';
		WHEN '55' THEN SET `token` = 'SE_Rune';
		WHEN '56' THEN SET `token` = 'SE_TrueNorth';
		WHEN '57' THEN SET `token` = 'SE_Levitate';
		WHEN '58' THEN SET `token` = 'SE_Illusion';
		WHEN '59' THEN SET `token` = 'SE_DamageShield';
		WHEN '60' THEN SET `token` = 'SE_TransferItem';
		WHEN '61' THEN SET `token` = 'SE_Identify';
		WHEN '62' THEN SET `token` = 'SE_ItemID';
		WHEN '63' THEN SET `token` = 'SE_WipeHateList';
		WHEN '64' THEN SET `token` = 'SE_SpinTarget';
		WHEN '65' THEN SET `token` = 'SE_InfraVision';
		WHEN '66' THEN SET `token` = 'SE_UltraVision';
		WHEN '67' THEN SET `token` = 'SE_EyeOfZomm';
		WHEN '68' THEN SET `token` = 'SE_ReclaimPet';
		WHEN '69' THEN SET `token` = 'SE_TotalHP';
		WHEN '70' THEN SET `token` = 'SE_CorpseBomb';
		WHEN '71' THEN SET `token` = 'SE_NecPet';
		WHEN '72' THEN SET `token` = 'SE_PreserveCorpse';
		WHEN '73' THEN SET `token` = 'SE_BindSight';
		WHEN '74' THEN SET `token` = 'SE_FeignDeath';
		WHEN '75' THEN SET `token` = 'SE_VoiceGraft';
		WHEN '76' THEN SET `token` = 'SE_Sentinel';
		WHEN '77' THEN SET `token` = 'SE_LocateCorpse';
		WHEN '78' THEN SET `token` = 'SE_AbsorbMagicAtt';
		WHEN '79' THEN SET `token` = 'SE_CurrentHPOnce';
		WHEN '80' THEN SET `token` = 'SE_EnchantLight';
		WHEN '81' THEN SET `token` = 'SE_Revive';
		WHEN '82' THEN SET `token` = 'SE_SummonPC';
		WHEN '83' THEN SET `token` = 'SE_Teleport';
		WHEN '84' THEN SET `token` = 'SE_TossUp';
		WHEN '85' THEN SET `token` = 'SE_WeaponProc';
		WHEN '86' THEN SET `token` = 'SE_Harmony';
		WHEN '87' THEN SET `token` = 'SE_MagnifyVision';
		WHEN '88' THEN SET `token` = 'SE_Succor';
		WHEN '89' THEN SET `token` = 'SE_ModelSize';
		WHEN '90' THEN SET `token` = 'SE_Cloak';
		WHEN '91' THEN SET `token` = 'SE_SummonCorpse';
		WHEN '92' THEN SET `token` = 'SE_InstantHate';
		WHEN '93' THEN SET `token` = 'SE_StopRain';
		WHEN '94' THEN SET `token` = 'SE_NegateIfCombat';
		WHEN '95' THEN SET `token` = 'SE_Sacrifice';
		WHEN '96' THEN SET `token` = 'SE_Silence';
		WHEN '97' THEN SET `token` = 'SE_ManaPool';
		WHEN '98' THEN SET `token` = 'SE_AttackSpeed2';
		WHEN '99' THEN SET `token` = 'SE_Root';
		WHEN '100' THEN SET `token` = 'SE_HealOverTime';
		WHEN '101' THEN SET `token` = 'SE_CompleteHeal';
		WHEN '102' THEN SET `token` = 'SE_Fearless';
		WHEN '103' THEN SET `token` = 'SE_CallPet';
		WHEN '104' THEN SET `token` = 'SE_Translocate';
		WHEN '105' THEN SET `token` = 'SE_AntiGate';
		WHEN '106' THEN SET `token` = 'SE_SummonBSTPet';
		WHEN '107' THEN SET `token` = 'SE_AlterNPCLevel';
		WHEN '108' THEN SET `token` = 'SE_Familiar';
		WHEN '109' THEN SET `token` = 'SE_SummonItemIntoBag';
		WHEN '110' THEN SET `token` = 'SE_IncreaseArchery';
		WHEN '111' THEN SET `token` = 'SE_ResistAll';
		WHEN '112' THEN SET `token` = 'SE_CastingLevel';
		WHEN '113' THEN SET `token` = 'SE_SummonHorse';
		WHEN '114' THEN SET `token` = 'SE_ChangeAggro';
		WHEN '115' THEN SET `token` = 'SE_Hunger';
		WHEN '116' THEN SET `token` = 'SE_CurseCounter';
		WHEN '117' THEN SET `token` = 'SE_MagicWeapon';
		WHEN '118' THEN SET `token` = 'SE_Amplification';
		WHEN '119' THEN SET `token` = 'SE_AttackSpeed3';
		WHEN '120' THEN SET `token` = 'SE_HealRate';
		WHEN '121' THEN SET `token` = 'SE_ReverseDS';
		WHEN '122' THEN SET `token` = 'SE_ReduceSkill';
		WHEN '123' THEN SET `token` = 'SE_Screech';
		WHEN '124' THEN SET `token` = 'SE_ImprovedDamage';
		WHEN '125' THEN SET `token` = 'SE_ImprovedHeal';
		WHEN '126' THEN SET `token` = 'SE_SpellResistReduction';
		WHEN '127' THEN SET `token` = 'SE_IncreaseSpellHaste';
		WHEN '128' THEN SET `token` = 'SE_IncreaseSpellDuration';
		WHEN '129' THEN SET `token` = 'SE_IncreaseRange';
		WHEN '130' THEN SET `token` = 'SE_SpellHateMod';
		WHEN '131' THEN SET `token` = 'SE_ReduceReagentCost';
		WHEN '132' THEN SET `token` = 'SE_ReduceManaCost';
		WHEN '133' THEN SET `token` = 'SE_FcStunTimeMod';
		WHEN '134' THEN SET `token` = 'SE_LimitMaxLevel';
		WHEN '135' THEN SET `token` = 'SE_LimitResist';
		WHEN '136' THEN SET `token` = 'SE_LimitTarget';
		WHEN '137' THEN SET `token` = 'SE_LimitEffect';
		WHEN '138' THEN SET `token` = 'SE_LimitSpellType';
		WHEN '139' THEN SET `token` = 'SE_LimitSpell';
		WHEN '140' THEN SET `token` = 'SE_LimitMinDur';
		WHEN '141' THEN SET `token` = 'SE_LimitInstant';
		WHEN '142' THEN SET `token` = 'SE_LimitMinLevel';
		WHEN '143' THEN SET `token` = 'SE_LimitCastTimeMin';
		WHEN '144' THEN SET `token` = 'SE_LimitCastTimeMax';
		WHEN '145' THEN SET `token` = 'SE_Teleport2';
		WHEN '146' THEN SET `token` = 'SE_ElectricityResist';
		WHEN '147' THEN SET `token` = 'SE_PercentalHeal';
		WHEN '148' THEN SET `token` = 'SE_StackingCommand_Block';
		WHEN '149' THEN SET `token` = 'SE_StackingCommand_Overwrite';
		WHEN '150' THEN SET `token` = 'SE_DeathSave';
		WHEN '151' THEN SET `token` = 'SE_SuspendPet';
		WHEN '152' THEN SET `token` = 'SE_TemporaryPets';
		WHEN '153' THEN SET `token` = 'SE_BalanceHP';
		WHEN '154' THEN SET `token` = 'SE_DispelDetrimental';
		WHEN '155' THEN SET `token` = 'SE_SpellCritDmgIncrease';
		WHEN '156' THEN SET `token` = 'SE_IllusionCopy';
		WHEN '157' THEN SET `token` = 'SE_SpellDamageShield';
		WHEN '158' THEN SET `token` = 'SE_Reflect';
		WHEN '159' THEN SET `token` = 'SE_AllStats';
		WHEN '160' THEN SET `token` = 'SE_MakeDrunk';
		WHEN '161' THEN SET `token` = 'SE_MitigateSpellDamage';
		WHEN '162' THEN SET `token` = 'SE_MitigateMeleeDamage';
		WHEN '163' THEN SET `token` = 'SE_NegateAttacks';
		WHEN '164' THEN SET `token` = 'SE_AppraiseLDonChest';
		WHEN '165' THEN SET `token` = 'SE_DisarmLDoNTrap';
		WHEN '166' THEN SET `token` = 'SE_UnlockLDoNChest';
		WHEN '167' THEN SET `token` = 'SE_PetPowerIncrease';
		WHEN '168' THEN SET `token` = 'SE_MeleeMitigation';
		WHEN '169' THEN SET `token` = 'SE_CriticalHitChance';
		WHEN '170' THEN SET `token` = 'SE_SpellCritChance';
		WHEN '171' THEN SET `token` = 'SE_CrippBlowChance';
		WHEN '172' THEN SET `token` = 'SE_AvoidMeleeChance';
		WHEN '173' THEN SET `token` = 'SE_RiposteChance';
		WHEN '174' THEN SET `token` = 'SE_DodgeChance';
		WHEN '175' THEN SET `token` = 'SE_ParryChance';
		WHEN '176' THEN SET `token` = 'SE_DualWieldChance';
		WHEN '177' THEN SET `token` = 'SE_DoubleAttackChance';
		WHEN '178' THEN SET `token` = 'SE_MeleeLifetap';
		WHEN '179' THEN SET `token` = 'SE_AllInstrumentMod';
		WHEN '180' THEN SET `token` = 'SE_ResistSpellChance';
		WHEN '181' THEN SET `token` = 'SE_ResistFearChance';
		WHEN '182' THEN SET `token` = 'SE_HundredHands';
		WHEN '183' THEN SET `token` = 'SE_MeleeSkillCheck';
		WHEN '184' THEN SET `token` = 'SE_HitChance';
		WHEN '185' THEN SET `token` = 'SE_DamageModifier';
		WHEN '186' THEN SET `token` = 'SE_MinDamageModifier';
		WHEN '187' THEN SET `token` = 'SE_BalanceMana';
		WHEN '188' THEN SET `token` = 'SE_IncreaseBlockChance';
		WHEN '189' THEN SET `token` = 'SE_CurrentEndurance';
		WHEN '190' THEN SET `token` = 'SE_EndurancePool';
		WHEN '191' THEN SET `token` = 'SE_Amnesia';
		WHEN '192' THEN SET `token` = 'SE_Hate';
		WHEN '193' THEN SET `token` = 'SE_SkillAttack';
		WHEN '194' THEN SET `token` = 'SE_FadingMemories';
		WHEN '195' THEN SET `token` = 'SE_StunResist';
		WHEN '196' THEN SET `token` = 'SE_StrikeThrough';
		WHEN '197' THEN SET `token` = 'SE_SkillDamageTaken';
		WHEN '198' THEN SET `token` = 'SE_CurrentEnduranceOnce';
		WHEN '199' THEN SET `token` = 'SE_Taunt';
		WHEN '200' THEN SET `token` = 'SE_ProcChance';
		WHEN '201' THEN SET `token` = 'SE_RangedProc';
		WHEN '202' THEN SET `token` = 'SE_IllusionOther';
		WHEN '203' THEN SET `token` = 'SE_MassGroupBuff';
		WHEN '204' THEN SET `token` = 'SE_GroupFearImmunity';
		WHEN '205' THEN SET `token` = 'SE_Rampage';
		WHEN '206' THEN SET `token` = 'SE_AETaunt';
		WHEN '207' THEN SET `token` = 'SE_FleshToBone';
		WHEN '208' THEN SET `token` = 'SE_PurgePoison';
		WHEN '209' THEN SET `token` = 'SE_DispelBeneficial';
		WHEN '210' THEN SET `token` = 'SE_PetShield';
		WHEN '211' THEN SET `token` = 'SE_AEMelee';
		WHEN '212' THEN SET `token` = 'SE_FrenziedDevastation';
		WHEN '213' THEN SET `token` = 'SE_PetMaxHP';
		WHEN '214' THEN SET `token` = 'SE_MaxHPChange';
		WHEN '215' THEN SET `token` = 'SE_PetAvoidance';
		WHEN '216' THEN SET `token` = 'SE_Accuracy';
		WHEN '217' THEN SET `token` = 'SE_HeadShot';
		WHEN '218' THEN SET `token` = 'SE_PetCriticalHit';
		WHEN '219' THEN SET `token` = 'SE_SlayUndead';
		WHEN '220' THEN SET `token` = 'SE_SkillDamageAmount';
		WHEN '221' THEN SET `token` = 'SE_Packrat';
		WHEN '222' THEN SET `token` = 'SE_BlockBehind';
		WHEN '223' THEN SET `token` = 'SE_DoubleRiposte';
		WHEN '224' THEN SET `token` = 'SE_GiveDoubleRiposte';
		WHEN '225' THEN SET `token` = 'SE_GiveDoubleAttack';
		WHEN '226' THEN SET `token` = 'SE_TwoHandBash';
		WHEN '227' THEN SET `token` = 'SE_ReduceSkillTimer';
		WHEN '228' THEN SET `token` = 'SE_ReduceFallDamage';
		WHEN '229' THEN SET `token` = 'SE_PersistantCasting';
		WHEN '230' THEN SET `token` = 'SE_ExtendedShielding';
		WHEN '231' THEN SET `token` = 'SE_StunBashChance';
		WHEN '232' THEN SET `token` = 'SE_DivineSave';
		WHEN '233' THEN SET `token` = 'SE_Metabolism';
		WHEN '234' THEN SET `token` = 'SE_ReduceApplyPoisonTime';
		WHEN '235' THEN SET `token` = 'SE_ChannelChanceSpells';
		WHEN '236' THEN SET `token` = 'SE_FreePet';
		WHEN '237' THEN SET `token` = 'SE_GivePetGroupTarget';
		WHEN '238' THEN SET `token` = 'SE_IllusionPersistence';
		WHEN '239' THEN SET `token` = 'SE_FeignedCastOnChance';
		WHEN '240' THEN SET `token` = 'SE_StringUnbreakable';
		WHEN '241' THEN SET `token` = 'SE_ImprovedReclaimEnergy';
		WHEN '242' THEN SET `token` = 'SE_IncreaseChanceMemwipe';
		WHEN '243' THEN SET `token` = 'SE_CharmBreakChance';
		WHEN '244' THEN SET `token` = 'SE_RootBreakChance';
		WHEN '245' THEN SET `token` = 'SE_TrapCircumvention';
		WHEN '246' THEN SET `token` = 'SE_SetBreathLevel';
		WHEN '247' THEN SET `token` = 'SE_RaiseSkillCap';
		WHEN '248' THEN SET `token` = 'SE_SecondaryForte';
		WHEN '249' THEN SET `token` = 'SE_SecondaryDmgInc';
		WHEN '250' THEN SET `token` = 'SE_SpellProcChance';
		WHEN '251' THEN SET `token` = 'SE_ConsumeProjectile';
		WHEN '252' THEN SET `token` = 'SE_FrontalBackstabChance';
		WHEN '253' THEN SET `token` = 'SE_FrontalBackstabMinDmg';
		WHEN '254' THEN SET `token` = 'SE_Blank';
		WHEN '255' THEN SET `token` = 'SE_ShieldDuration';
		WHEN '256' THEN SET `token` = 'SE_ShroudofStealth';
		WHEN '257' THEN SET `token` = 'SE_PetDiscipline';
		WHEN '258' THEN SET `token` = 'SE_TripleBackstab';
		WHEN '259' THEN SET `token` = 'SE_CombatStability';
		WHEN '260' THEN SET `token` = 'SE_AddSingingMod';
		WHEN '261' THEN SET `token` = 'SE_SongModCap';
		WHEN '262' THEN SET `token` = 'SE_RaiseStatCap';
		WHEN '263' THEN SET `token` = 'SE_TradeSkillMastery';
		WHEN '264' THEN SET `token` = 'SE_HastenedAASkill';
		WHEN '265' THEN SET `token` = 'SE_MasteryofPast';
		WHEN '266' THEN SET `token` = 'SE_ExtraAttackChance';
		WHEN '267' THEN SET `token` = 'SE_PetDiscipline2';
		WHEN '268' THEN SET `token` = 'SE_ReduceTradeskillFail';
		WHEN '269' THEN SET `token` = 'SE_MaxBindWound';
		WHEN '270' THEN SET `token` = 'SE_BardSongRange';
		WHEN '271' THEN SET `token` = 'SE_BaseMovementSpeed';
		WHEN '272' THEN SET `token` = 'SE_CastingLevel2';
		WHEN '273' THEN SET `token` = 'SE_CriticalDoTChance';
		WHEN '274' THEN SET `token` = 'SE_CriticalHealChance';
		WHEN '275' THEN SET `token` = 'SE_CriticalMend';
		WHEN '276' THEN SET `token` = 'SE_Ambidexterity';
		WHEN '277' THEN SET `token` = 'SE_UnfailingDivinity';
		WHEN '278' THEN SET `token` = 'SE_FinishingBlow';
		WHEN '279' THEN SET `token` = 'SE_Flurry';
		WHEN '280' THEN SET `token` = 'SE_PetFlurry';
		WHEN '281' THEN SET `token` = 'SE_FeignedMinion';
		WHEN '282' THEN SET `token` = 'SE_ImprovedBindWound';
		WHEN '283' THEN SET `token` = 'SE_DoubleSpecialAttack';
		WHEN '284' THEN SET `token` = 'SE_LoHSetHeal';
		WHEN '285' THEN SET `token` = 'SE_NimbleEvasion';
		WHEN '286' THEN SET `token` = 'SE_FcDamageAmt';
		WHEN '287' THEN SET `token` = 'SE_SpellDurationIncByTic';
		WHEN '288' THEN SET `token` = 'SE_SkillAttackProc';
		WHEN '289' THEN SET `token` = 'SE_CastOnFadeEffect';
		WHEN '290' THEN SET `token` = 'SE_IncreaseRunSpeedCap';
		WHEN '291' THEN SET `token` = 'SE_Purify';
		WHEN '292' THEN SET `token` = 'SE_StrikeThrough2';
		WHEN '293' THEN SET `token` = 'SE_FrontalStunResist';
		WHEN '294' THEN SET `token` = 'SE_CriticalSpellChance';
		WHEN '295' THEN SET `token` = 'SE_ReduceTimerSpecial';
		WHEN '296' THEN SET `token` = 'SE_FcSpellVulnerability';
		WHEN '297' THEN SET `token` = 'SE_FcDamageAmtIncoming';
		WHEN '298' THEN SET `token` = 'SE_ChangeHeight';
		WHEN '299' THEN SET `token` = 'SE_WakeTheDead';
		WHEN '300' THEN SET `token` = 'SE_Doppelganger';
		WHEN '301' THEN SET `token` = 'SE_ArcheryDamageModifier';
		WHEN '302' THEN SET `token` = 'SE_FcDamagePctCrit';
		WHEN '303' THEN SET `token` = 'SE_FcDamageAmtCrit';
		WHEN '304' THEN SET `token` = 'SE_OffhandRiposteFail';
		WHEN '305' THEN SET `token` = 'SE_MitigateDamageShield';
		WHEN '306' THEN SET `token` = 'SE_ArmyOfTheDead';
		WHEN '307' THEN SET `token` = 'SE_Appraisal';
		WHEN '308' THEN SET `token` = 'SE_SuspendMinion';
		WHEN '309' THEN SET `token` = 'SE_GateCastersBindpoint';
		WHEN '310' THEN SET `token` = 'SE_ReduceReuseTimer';
		WHEN '311' THEN SET `token` = 'SE_LimitCombatSkills';
		WHEN '312' THEN SET `token` = 'SE_Sanctuary';
		WHEN '313' THEN SET `token` = 'SE_ForageAdditionalItems';
		WHEN '314' THEN SET `token` = 'SE_Invisibility2';
		WHEN '315' THEN SET `token` = 'SE_InvisVsUndead2';
		WHEN '316' THEN SET `token` = 'SE_ImprovedInvisAnimals';
		WHEN '317' THEN SET `token` = 'SE_ItemHPRegenCapIncrease';
		WHEN '318' THEN SET `token` = 'SE_ItemManaRegenCapIncrease';
		WHEN '319' THEN SET `token` = 'SE_CriticalHealOverTime';
		WHEN '320' THEN SET `token` = 'SE_ShieldBlock';
		WHEN '321' THEN SET `token` = 'SE_ReduceHate';
		WHEN '322' THEN SET `token` = 'SE_GateToHomeCity';
		WHEN '323' THEN SET `token` = 'SE_DefensiveProc';
		WHEN '324' THEN SET `token` = 'SE_HPToMana';
		WHEN '325' THEN SET `token` = 'SE_NoBreakAESneak';
		WHEN '326' THEN SET `token` = 'SE_SpellSlotIncrease';
		WHEN '327' THEN SET `token` = 'SE_MysticalAttune';
		WHEN '328' THEN SET `token` = 'SE_DelayDeath';
		WHEN '329' THEN SET `token` = 'SE_ManaAbsorbPercentDamage';
		WHEN '330' THEN SET `token` = 'SE_CriticalDamageMob';
		WHEN '331' THEN SET `token` = 'SE_Salvage';
		WHEN '332' THEN SET `token` = 'SE_SummonToCorpse';
		WHEN '333' THEN SET `token` = 'SE_CastOnRuneFadeEffect';
		WHEN '334' THEN SET `token` = 'SE_BardAEDot';
		WHEN '335' THEN SET `token` = 'SE_BlockNextSpellFocus';
		WHEN '336' THEN SET `token` = 'SE_IllusionaryTarget';
		WHEN '337' THEN SET `token` = 'SE_PercentXPIncrease';
		WHEN '338' THEN SET `token` = 'SE_SummonAndResAllCorpses';
		WHEN '339' THEN SET `token` = 'SE_TriggerOnCast';
		WHEN '340' THEN SET `token` = 'SE_SpellTrigger';
		WHEN '341' THEN SET `token` = 'SE_ItemAttackCapIncrease';
		WHEN '342' THEN SET `token` = 'SE_ImmuneFleeing';
		WHEN '343' THEN SET `token` = 'SE_InterruptCasting';
		WHEN '344' THEN SET `token` = 'SE_ChannelChanceItems';
		WHEN '345' THEN SET `token` = 'SE_AssassinateLevel';
		WHEN '346' THEN SET `token` = 'SE_HeadShotLevel';
		WHEN '347' THEN SET `token` = 'SE_DoubleRangedAttack';
		WHEN '348' THEN SET `token` = 'SE_LimitManaMin';
		WHEN '349' THEN SET `token` = 'SE_ShieldEquipDmgMod';
		WHEN '350' THEN SET `token` = 'SE_ManaBurn';
		WHEN '351' THEN SET `token` = 'SE_PersistentEffect';
		WHEN '352' THEN SET `token` = 'SE_IncreaseTrapCount';
		WHEN '353' THEN SET `token` = 'SE_AdditionalAura';
		WHEN '354' THEN SET `token` = 'SE_DeactivateAllTraps';
		WHEN '355' THEN SET `token` = 'SE_LearnTrap';
		WHEN '356' THEN SET `token` = 'SE_ChangeTriggerType';
		WHEN '357' THEN SET `token` = 'SE_FcMute';
		WHEN '358' THEN SET `token` = 'SE_CurrentManaOnce';
		WHEN '359' THEN SET `token` = 'SE_PassiveSenseTrap';
		WHEN '360' THEN SET `token` = 'SE_ProcOnKillShot';
		WHEN '361' THEN SET `token` = 'SE_SpellOnDeath';
		WHEN '362' THEN SET `token` = 'SE_PotionBeltSlots';
		WHEN '363' THEN SET `token` = 'SE_BandolierSlots';
		WHEN '364' THEN SET `token` = 'SE_TripleAttackChance';
		WHEN '365' THEN SET `token` = 'SE_ProcOnSpellKillShot';
		WHEN '366' THEN SET `token` = 'SE_GroupShielding';
		WHEN '367' THEN SET `token` = 'SE_SetBodyType';
		WHEN '368' THEN SET `token` = 'SE_FactionMod';
		WHEN '369' THEN SET `token` = 'SE_CorruptionCounter';
		WHEN '370' THEN SET `token` = 'SE_ResistCorruption';
		WHEN '371' THEN SET `token` = 'SE_AttackSpeed4';
		WHEN '372' THEN SET `token` = 'SE_ForageSkill';
		WHEN '373' THEN SET `token` = 'SE_CastOnFadeEffectAlways';
		WHEN '374' THEN SET `token` = 'SE_ApplyEffect';
		WHEN '375' THEN SET `token` = 'SE_DotCritDmgIncrease';
		WHEN '376' THEN SET `token` = 'SE_Fling';
		WHEN '377' THEN SET `token` = 'SE_CastOnFadeEffectNPC';
		WHEN '378' THEN SET `token` = 'SE_SpellEffectResistChance';
		WHEN '379' THEN SET `token` = 'SE_ShadowStepDirectional';
		WHEN '380' THEN SET `token` = 'SE_Knockdown';
		WHEN '381' THEN SET `token` = 'SE_KnockTowardCaster';
		WHEN '382' THEN SET `token` = 'SE_NegateSpellEffect';
		WHEN '383' THEN SET `token` = 'SE_SympatheticProc';
		WHEN '384' THEN SET `token` = 'SE_Leap';
		WHEN '385' THEN SET `token` = 'SE_LimitSpellGroup';
		WHEN '386' THEN SET `token` = 'SE_CastOnCurer';
		WHEN '387' THEN SET `token` = 'SE_CastOnCure';
		WHEN '388' THEN SET `token` = 'SE_SummonCorpseZone';
		WHEN '389' THEN SET `token` = 'SE_FcTimerRefresh';
		WHEN '390' THEN SET `token` = 'SE_FcTimerLockout';
		WHEN '391' THEN SET `token` = 'SE_LimitManaMax';
		WHEN '392' THEN SET `token` = 'SE_FcHealAmt';
		WHEN '393' THEN SET `token` = 'SE_FcHealPctIncoming';
		WHEN '394' THEN SET `token` = 'SE_FcHealAmtIncoming';
		WHEN '395' THEN SET `token` = 'SE_FcHealPctCritIncoming';
		WHEN '396' THEN SET `token` = 'SE_FcHealAmtCrit';
		WHEN '397' THEN SET `token` = 'SE_PetMeleeMitigation';
		WHEN '398' THEN SET `token` = 'SE_SwarmPetDuration';
		WHEN '399' THEN SET `token` = 'SE_FcTwincast';
		WHEN '400' THEN SET `token` = 'SE_HealGroupFromMana';
		WHEN '401' THEN SET `token` = 'SE_ManaDrainWithDmg';
		WHEN '402' THEN SET `token` = 'SE_EndDrainWithDmg';
		WHEN '403' THEN SET `token` = 'SE_LimitSpellClass';
		WHEN '404' THEN SET `token` = 'SE_LimitSpellSubclass';
		WHEN '405' THEN SET `token` = 'SE_TwoHandBluntBlock';
		WHEN '406' THEN SET `token` = 'SE_CastonNumHitFade';
		WHEN '407' THEN SET `token` = 'SE_CastonFocusEffect';
		WHEN '408' THEN SET `token` = 'SE_LimitHPPercent';
		WHEN '409' THEN SET `token` = 'SE_LimitManaPercent';
		WHEN '410' THEN SET `token` = 'SE_LimitEndPercent';
		WHEN '411' THEN SET `token` = 'SE_LimitClass';
		WHEN '412' THEN SET `token` = 'SE_LimitRace';
		WHEN '413' THEN SET `token` = 'SE_FcBaseEffects';
		WHEN '414' THEN SET `token` = 'SE_LimitCastingSkill';
		WHEN '415' THEN SET `token` = 'SE_FFItemClass';
		WHEN '416' THEN SET `token` = 'SE_ACv2';
		WHEN '417' THEN SET `token` = 'SE_ManaRegen_v2';
		WHEN '418' THEN SET `token` = 'SE_SkillDamageAmount2';
		WHEN '419' THEN SET `token` = 'SE_AddMeleeProc';
		WHEN '420' THEN SET `token` = 'SE_FcLimitUse';
		WHEN '421' THEN SET `token` = 'SE_FcIncreaseNumHits';
		WHEN '422' THEN SET `token` = 'SE_LimitUseMin';
		WHEN '423' THEN SET `token` = 'SE_LimitUseType';
		WHEN '424' THEN SET `token` = 'SE_GravityEffect';
		WHEN '425' THEN SET `token` = 'SE_Display';
		WHEN '426' THEN SET `token` = 'SE_IncreaseExtTargetWindow';
		WHEN '427' THEN SET `token` = 'SE_SkillProc';
		WHEN '428' THEN SET `token` = 'SE_LimitToSkill';
		WHEN '429' THEN SET `token` = 'SE_SkillProcSuccess';
		WHEN '430' THEN SET `token` = 'SE_PostEffect';
		WHEN '431' THEN SET `token` = 'SE_PostEffectData';
		WHEN '432' THEN SET `token` = 'SE_ExpandMaxActiveTrophyBen';
		WHEN '433' THEN SET `token` = 'SE_CriticalDotDecay';
		WHEN '434' THEN SET `token` = 'SE_CriticalHealDecay';
		WHEN '435' THEN SET `token` = 'SE_CriticalRegenDecay';
		WHEN '436' THEN SET `token` = 'SE_BeneficialCountDownHold';
		WHEN '437' THEN SET `token` = 'SE_TeleporttoAnchor';
		WHEN '438' THEN SET `token` = 'SE_TranslocatetoAnchor';
		WHEN '439' THEN SET `token` = 'SE_Assassinate';
		WHEN '440' THEN SET `token` = 'SE_FinishingBlowLvl';
		WHEN '441' THEN SET `token` = 'SE_DistanceRemoval';
		WHEN '442' THEN SET `token` = 'SE_TriggerOnReqTarget';
		WHEN '443' THEN SET `token` = 'SE_TriggerOnReqCaster';
		WHEN '444' THEN SET `token` = 'SE_ImprovedTaunt';
		WHEN '445' THEN SET `token` = 'SE_AddMercSlot';
		WHEN '446' THEN SET `token` = 'SE_AStacker';
		WHEN '447' THEN SET `token` = 'SE_BStacker';
		WHEN '448' THEN SET `token` = 'SE_CStacker';
		WHEN '449' THEN SET `token` = 'SE_DStacker';
		WHEN '450' THEN SET `token` = 'SE_MitigateDotDamage';
		WHEN '451' THEN SET `token` = 'SE_MeleeThresholdGuard';
		WHEN '452' THEN SET `token` = 'SE_SpellThresholdGuard';
		WHEN '453' THEN SET `token` = 'SE_TriggerMeleeThreshold';
		WHEN '454' THEN SET `token` = 'SE_TriggerSpellThreshold';
		WHEN '455' THEN SET `token` = 'SE_AddHatePct';
		WHEN '456' THEN SET `token` = 'SE_AddHateOverTimePct';
		WHEN '457' THEN SET `token` = 'SE_ResourceTap';
		WHEN '458' THEN SET `token` = 'SE_FactionModPct';
		WHEN '459' THEN SET `token` = 'SE_DamageModifier2';
		WHEN '460' THEN SET `token` = 'SE_Ff_Override_NotFocusable';
		WHEN '461' THEN SET `token` = 'SE_ImprovedDamage2';
		WHEN '462' THEN SET `token` = 'SE_FcDamageAmt2';
		WHEN '463' THEN SET `token` = 'SE_Shield_Target';
		WHEN '464' THEN SET `token` = 'SE_PC_Pet_Rampage';
		WHEN '465' THEN SET `token` = 'SE_PC_Pet_AE_Rampage';
		WHEN '466' THEN SET `token` = 'SE_PC_Pet_Flurry_Chance';
		WHEN '467' THEN SET `token` = 'SE_DS_Mitigation_Amount';
		WHEN '468' THEN SET `token` = 'SE_DS_Mitigation_Percentage';
		WHEN '469' THEN SET `token` = 'SE_Chance_Best_in_Spell_Grp';
		WHEN '470' THEN SET `token` = 'SE_Trigger_Best_in_Spell_Grp';
		WHEN '471' THEN SET `token` = 'SE_Double_Melee_Round';
		ELSE SET `token` = 'unk';
	END CASE;
	
	SET `token` = CONCAT(`token`, '(', `effect_id`, ')');
	
	RETURN `token`;
END$$

DELIMITER ;