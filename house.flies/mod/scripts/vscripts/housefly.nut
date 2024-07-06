global function housefly_Init

void function housefly_Init()
{
    ClassicMP_ForceDisableEpilogue( true )
    //ScoreEvent_SetupEarnMeterValuesForMixedModes()



    // Gives you the Smart Pistol
    SetWeaponDropsEnabled( false )

    Riff_ForceTitanAvailability( eTitanAvailability.Never )
    Riff_ForceBoostAvailability( eBoostAvailability.Disabled )

    AddCallback_OnPlayerRespawned( OnPlayerRespawned )
    AddCallback_OnPlayerGetsNewPilotLoadout( OnPlayerChangeLoadout)

    //SetPlaylistVarOverride( "custom_air_accel_pilot", "9000" )
}
void function OnPlayerRespawned( entity player )
{
    foreach ( entity weapon in player.GetMainWeapons() )
        player.TakeWeaponNow( weapon.GetWeaponClassName() )
        player.GiveWeapon( "mp_weapon_semipistol" )
}

void function OnPlayerChangeLoadout( entity player , PilotLoadoutDef p)
{
    foreach ( entity weapon in player.GetMainWeapons() )
        player.TakeWeaponNow( weapon.GetWeaponClassName() )
        player.GiveWeapon( "mp_weapon_semipistol" )
}