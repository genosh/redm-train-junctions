
Config = {
    key = 0x8CC9CD42, --[X]
    train = {
        sizeOfLoco = 11
    },
    tracksJunction = {
        ['Annesburg_Interior_N'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 10,
            radius = 40,
            originTrackIndex = 18,
            ways = {
                origin = vector3(2941.4995, 1377.0175, 43.9153), --Origin
                destA  = vector3(2932.7583, 1351.9133, 43.9305), --Right (Middle side)
                destB  = vector3(2937.8940, 1349.6536, 43.8904), --Left (Mines side)
            },
        },
        ['Annesburg_Interior_S'] = {
            trackHash = joaat("TRAINS_INTERSECTION1_ANN"),
            junctionIndex = 2,
            radius = 50,
            originTrackIndex = 18,
            ways = {
                origin = vector3(2883.5010, 1222.7770, 44.8589), --Origin
                destA  = vector3(2894.8811, 1247.3835, 44.5708), --Left (Mines side)
                destB  = vector3(2897.4377, 1244.2885, 44.6093), --Right (Middle side)
            },
        },
        ['Annesburg_Bay_N'] = {
            trackHash = joaat("TRAINS_INTERSECTION1_ANN"),
            junctionIndex = 1,
            radius = 50,
            originTrackIndex = 0,
            ways = {
                origin = vector3(3035.0696, 1484.5737, 49.7406), --Origin
                destA  = vector3(3020.1956, 1464.7032, 47.9642), --Left (Bay Side)
                destB  = vector3(3016.3499, 1468.7065, 47.9230), --Right (City side)
            },
        },
        ['Annesburg_Bay_S'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 11,
            radius = 50,
            originTrackIndex = 0,
            ways = {
                origin = vector3(2870.1592, 1194.9248, 45.1153), --Origin
                destA  = vector3(2888.4241, 1215.8182, 44.8584), --Right (Bay side)
                destB  = vector3(2881.8118, 1219.0125, 44.9312), --Left (City Side)
            },
        },
        ['Bacchus_E'] = {
            trackHash = joaat('FREIGHT_GROUP'),
            junctionIndex = 8,
            radius = 40,
            originTrackIndex = 0,
            ways = {
                origin = vector3(609.0413, 1663.7472, 187.3411), --Origin
                destA  = vector3(602.6121, 1679.1062, 187.4227), --Right
                destB  = vector3(598.5834, 1675.7573, 187.4053), --Left (Train station)
            },
        },
        ['Bacchus_W'] = {
            trackHash = joaat('FREIGHT_GROUP'),
            junctionIndex = 7,
            radius = 40,
            originTrackIndex = 0,
            ways = {
                origin = vector3(557.2803, 1725.2577, 187.7640), --Origin
                destA  = vector3(569.5458, 1715.6906, 187.7746), --Left
                destB  = vector3(563.6996, 1711.0651, 187.6230), --Right (Train station)
            },
        },
        ['BlueWaterMarch'] = {
            trackHash = joaat('FREIGHT_GROUP'),
            junctionIndex = 13,
            radius = 50,
            originTrackIndex = 0,
            ways = {
                origin = vector3(2659.7136, -432.0706, 43.3917), --Origin
                destA  = vector3(2663.3425, -406.2628, 43.3873), --Right (Van Horn dir.)
                destB  = vector3(2659.8501, -405.2913, 43.4505), --Left
            },
        },
        ['BenedictPass_E'] = {
            trackHash = joaat("TRAINS_OLD_WEST02"), --This is not referenced on documentation
            junctionIndex = 6,
            radius = 50,
            originTrackIndex = 24,
            ways = {
                origin = vector3(-4849.9902, -3086.0828, -15.7538), --Origin
                destA  = vector3(-4877.2144, -3080.4336, -16.3298), --Left (Benedict dir.)
                destB  = vector3(-4873.9731, -3073.6787, -16.4199), --Right
            },
        },
        ['BenedictPass_N'] = {
            trackHash = joaat("TRAINS_OLD_WEST03"),
            junctionIndex = 0,
            radius = 50,
            originTrackIndex = 23,
            ways = {
                origin = vector3(-4915.7231, -3011.0530, -18.2190), --Origin
                destA  = vector3(-4908.1177, -3038.4685, -17.5434), --Right (Loop)
                destB  = vector3(-4901.3315, -3035.8694, -17.5116), --Left (Benedict dir.)
            },
        },
        ['BenedictPass_W'] = {
            trackHash = joaat("TRAINS_OLD_WEST03"),
            junctionIndex = 5,
            radius = 50,
            originTrackIndex = 23,
            ways = {
                origin = vector3(-4949.9570, -3083.5964, -17.5068), --Origin
                destA  = vector3(-4928.4814, -3074.5452, -17.1872), --Left (Loop way)
                destB  = vector3(-4925.6841, -3079.9128, -17.0502), --Right (Mercer dir.)
            },
        },
        ['DiabloRidge_N'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 5,
            radius = 50,
            originTrackIndex = 0,
            ways = {
                origin = vector3(-1374.0172, -139.3127, 100.8354), --Origin
                destA  = vector3(-1354.8167, -160.5398, 100.8856), --Left (Trains station)
                destB  = vector3(-1358.6121, -163.2603, 100.8521), --Right
            },
        },
        ['DiabloRidge_S'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 4,
            radius = 50,
            originTrackIndex = 0,
            ways = {
                origin = vector3(-1307.6157, -288.9291, 100.8950), --Origin
                destA  = vector3(-1311.0406, -261.1598, 100.8899), --Right
                destB  = vector3(-1314.9912, -261.6456, 100.8940), --Left (Train station)
            },
        },
        ['Emerald_E'] = {
            trackHash = joaat("TRAINS3"),
            junctionIndex = 1,
            radius = 50,
            originTrackIndex = 2,
            ways = {
                origin = vector3(1690.2054, 543.8692, 98.3889), --Origin
                destA  = vector3(1659.1235, 545.7339, 95.8862), --Right
                destB  = vector3(1658.4724, 541.7052, 95.6802), --Left (Emerald dir.) 
            },
        },
        ['Emerald_N'] = {
            trackHash = joaat('TRAINS3'),
            junctionIndex = 2,
            radius = 50,
            originTrackIndex = 2,
            ways = {
                origin = vector3(1484.1880, 646.3389, 92.2944), --Origin
                destA  = vector3(1506.0024, 629.6365, 92.5969), --Left
                destB  = vector3(1502.5309, 626.9424, 92.5952), --Right (Emerald dir.)
            },
        },
        ['Emerald_S'] = {
            trackHash = joaat("BRAITHWAITES2_TRACK_CONFIG"),
            junctionIndex = 1,
            radius = 50,
            originTrackIndex = 1,
            ways = {
                origin = vector3(1530.0455, 468.9501, 90.2109), --Origin
                destA  = vector3(1535.9420, 498.3296, 89.5828), --Right
                destB  = vector3(1529.8191, 500.7537, 89.6040), --Left (HeartLand dir.)
            },
        },
        ['Flatneck_E'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 16,
            radius = 50,
            originTrackIndex = 0,
            ways = {
                origin = vector3(67.5616, -373.9348, 90.9007), --Origin
                destA  = vector3(45.5731, -367.0709, 91.2968), --Left (Flatneck dir.)
                destB  = vector3(47.8348, -360.7130, 91.2444), --Right 
            },
        },
        ['Flatneck_N'] = {
            trackHash = joaat("TRAINS3"),
            junctionIndex = 5,
            radius = 50,
            originTrackIndex = 2,
            ways = {
                origin = vector3(30.4846, -31.1621, 103.3293), --Origin
                destA  = vector3(7.4136, -79.6789, 104.6735), --Right (Flatneck dir.)
                destB  = vector3(10.4098, -81.5246, 104.6342), --Left
            },
        },
       ['Flatneck_W'] = {  
            trackHash = joaat('FREIGHT_GROUP'),
            junctionIndex = 2,
            radius = 50,
            originTrackIndex = 0,
            ways = {
                origin = vector3(-281.1323, -319.6579, 89.02458), --Origin
                destA  = vector3(-231.7190, -297.9542, 89.2229), --Right (Rhodes dir.)
                destB  = vector3(-233.3513, -293.8330, 89.0713), --Left (Valentine dir.)
            },
        },
        ['HeartLand_E'] = {
            trackHash = joaat("TRAINS3"),
            junctionIndex = 3, --TODO: Check junction index
            radius = 50,
            originTrackIndex = 2,
            ways = {
                origin = vector3(612.9992, 683.2680, 115.3188), --Origin
                destA  = vector3(596.8633, 676.0403, 115.4730), --Right
                destB  = vector3(600.1868, 673.0275, 115.4377), --Left (Train station)
            },
        },
        ['HeartLand_W'] = {
            trackHash = joaat('TRAINS3'),
            junctionIndex = 4,
            radius = 50,
            originTrackIndex = 2,
            ways = {
                origin = vector3(358.5873, 597.1397, 115.6322), --Origin
                destA  = vector3(371.8120, 615.6718, 115.6825), --Left (Train station)
                destB  = vector3(374.5381, 612.0629, 115.6309), --Right
            },
        },
        ['SaintDenis_W_Emerald'] = {
            trackHash = joaat('BRAITHWAITES2_TRACK_CONFIG'),
            junctionIndex = 5,
            radius = 1,
            originTrackIndex = 1,
            ways = {
                origin = vector3(2477.8816, -1476.7089, 45.9328), --Origin
                destA  = vector3(2496.9399, -1479.4352, 45.9248), --Right (Bay side)
                destB  = vector3(2498.9519, -1477.2798, 45.8682), --Left (City side)
            },
        },
        ['SaintDenis_W_Rhodes'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 19,
            radius = 37,
            originTrackIndex = 0,
            ways = {
                origin = vector3(2514.9631, -1482.1395, 45.8963), --Origin
                destA  = vector3(2490.0347, -1482.4950, 45.9593), --Left
                destB  = vector3(2496.9399, -1479.4352, 45.9248), --Right (Rhodes dir.)
            },
        },
        ['SaintDenis_W_Ext'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 12,
            radius = 37,
            originTrackIndex = 0,
            ways = {
                origin = vector3(2590.4775, -1482.1444, 46.0689), --Origin
                destA  = vector3(2597.2014, -1484.5493, 45.9617), --Right (Bay side)
                destB  = vector3(2597.4089, -1480.2760, 46.0037), --Left (Train station)
            },
        },
        ['SaintDenis_W_Int'] = {
            trackHash = joaat('TRAINS_NB1'),
            junctionIndex = 3,
            radius = 18,
            originTrackIndex = 12,
            ways = {
                origin = vector3(2622.3916, -1477.1326, 45.9673), --Origin
                destA  = vector3(2613.9314, -1476.2867, 46.1040), --Right (City side)
                destB  = vector3(2612.9473, -1479.5830, 46.1160), --Left (Bay side)
            },
        },
        ['SaintDenis_E'] = {
            trackHash = joaat('FREIGHT_GROUP'),
            junctionIndex = 15,
            radius = 50,
            originTrackIndex = 0,
            ways = {
                origin = vector3(2856.5737, -1313.3125, 45.8802), --Origin
                destA  = vector3(2840.8630, -1332.0908, 45.9729), --Left (Bay side)
                destB  = vector3(2839.7378, -1327.0258, 45.9721), --Right (City side)
            },
        },
        ['SaintDenis_W_TrainStation'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 12,
            radius = 17,
            originTrackIndex = 12,
            ways = {
                origin = vector3(2657.5032, -1477.3469, 45.6976), --Origin
                destA  = vector3(2667.2698, -1477.2756, 45.7098), --Right (Middle way)
                destB  = vector3(2666.9502, -1474.8450, 45.7105), --Left (Train station)
            },
        },
        ['SaintDenis_E_TrainStation'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 12,
            radius = 37,
            originTrackIndex = 12,
            ways = {
                origin = vector3(2746.9534, -1436.0966, 45.7826), --Origin
                destA  = vector3(2740.4692, -1443.6737, 45.7148), --Right (Middle way)
                destB  = vector3(2738.7029, -1441.9504, 45.7255), --Left (Train station)
            },
        },
        ['SaintDenis_W_PortWay'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 17,
            radius = 40,
            originTrackIndex = 0,
            ways = {
                origin = vector3(2763.0479, -1423.9637, 45.8817), --Origin
                destA  = vector3(2771.0713, -1415.0157, 45.9465), --Left (City side)
                destB  = vector3(2772.2261, -1417.2693, 45.9660), --Right (Bay side)
            },
        },
        ['SaintDenis_E_PortWay'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 16,
            radius = 20,
            originTrackIndex = 0,
            ways = {
                origin = vector3(2844.5764, -1327.7009, 46.0596), --Origin
                destA  = vector3(2838.2349, -1335.0485, 45.9593), --Right (City Side)
                destB  = vector3(2839.5920, -1336.4780, 45.9396), --Left (Bay side)
            },
        },
        ['StillwaterCreek_W'] = {
            trackHash = joaat('TRAINS_OLD_WEST02'),
            junctionIndex = 1,
            radius = 40,
            originTrackIndex = 24,
            ways = {
                origin = vector3(-2213.5847, -2519.9705, 65.6816), --Origin
                destA  = vector3(-2199.7117, -2524.9700, 65.9697), --Right (East)
                destB  = vector3(-2198.7871, -2520.6719, 65.8388), --Left (North)
            },
        },

        --See tracksJunctionLocked to more informations
        --[[['StillwaterCreek_N'] = {
            trackHash = joaat('TRAINS_OLD_WEST01'),
            junctionIndex = 1,
            radius = 35,
            originTrackIndex = 25,
            ways = {
                origin = vector3(-2173.7437, -2508.0454, 65.7468), --Origin
                destA  = vector3(-2176.9978, -2514.5562, 65.6949), --Left (Hidden tracks)
                destB  = vector3(-2178.0642, -2510.9998, 65.8144), --Right
            },
        },
        ['StillwaterCreek_E'] = {
            trackHash = joaat('TRAINS_OLD_WEST01'),
            junctionIndex = 1,
            radius = 35,
            originTrackIndex = 25 ,
            ways = {
                origin = vector3(-2174.1938, -2534.5706, 66.6158), --Origin
                destA  = vector3(-2179.7312, -2532.5117, 66.3711), --Left
                destB  = vector3(-2178.7437, -2530.4536, 66.3550), --Right (Hidden tracks)
            },
        },]]--
    },
    tracksJunctionLocked = {
        --This 2 junctions are weard. Same Index and trackHash, and also hidden tracks.
        --I guess is for track index due to a loop of the way.
        ['StillwaterCreek_N'] = {
            trackHash = joaat('TRAINS_OLD_WEST01'),
            junctionIndex = 1,
            status = true,
            coords = vector3(-2172.7014, -2506.9685, 65.7271)
        },
        ['StillwaterCreek_E'] = {
            trackHash = joaat('TRAINS_OLD_WEST01'),
            junctionIndex = 0,
            status = true,
            coords = vector3(-2167.3379, -2537.7664, 67.2203)
        }
    },
    blip = {
        model = {
            arrow = 421058601,
            cross = 1754506823,
            swap = -1505442625
        },
        color = {
            red = 'BLIP_MODIFIER_MP_COLOR_10',
            green = 'BLIP_MODIFIER_MP_COLOR_20',
            yellowOrange = 'BLIP_MODIFIER_MP_COLOR_23'
        }
    },
    entities = {
        1048677741, --imaps for Saint-Denis wagons
        1284188544, --imaps for Saint-Denis wagons
    }
}
