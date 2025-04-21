ini_open("SaveData.ini")
ini_write_real("Variables", "RWG", global.Points)
ini_write_real("Variables", "RWL", global.LPoints)
ini_write_real("Variables", "DWG", global.DWPoints)
ini_write_real("Variables", "VRT", global.VRTPoints)
ini_write_real("Variables", "VRTV", global.VRTVPoints)
ini_write_real("Variables", "HL", global.HLWin)

ini_close()