RegisterCommand("spawnvehicle",function (src,args)                              --Registramos el comando para spawnear el coche que queramos.

  RequestModel(args[1])                                                        --Llamamos al auto que queramos respawnear.
while not HasModelLoaded(args[1]) do                                           -- Le decimos que mientras el modelo no este cargado, espere 2 segundos.
  Wait(2)
end
  local Player = PlayerPedId()
  local idplayercoords = GetEntityCoords(PlayerPedId())                       -- llama a las cordenadas del personaje (lo devuelve en vector3)
  local idplayerheading = GetEntityHeading(PlayerPedId())                     -- obtiene el heading del personaje, que es donde esta mirando el jugador
  local car = CreateVehicle(GetHashKey(args[1]),idplayercoords,idplayerheading,true,false)
  if IsPedInAnyVehicle(Player,false) then
      DeleteVehicle(GetVehiclePedIsIn(Player))
  end
  TaskWarpPedIntoVehicle(Player,car,-1)                                       --Comando para que el personaje aparezca dentro del coche.

end)


