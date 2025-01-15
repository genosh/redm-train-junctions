
Config = {
    manualSwitchEnabled = true,
    inLocomotivSwitchEnabled = true,
    imaps = false,  --Enable/disable remove/add imaps --Graphical issue on st-Denis when remove wagon's imaps

    key = 0x8CC9CD42, --[X]
    other = {
        sizeOfLoco = 11,
        leverModel = "s_railswitch01x_cmbd",
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
            junctionLever = {
                objCoords = vector3(2939.0278, 1372.1826, 42.9),
                animCoords = vector3(2941.8975, 1371.2633, 43.9),
                heading = 252.0
            }
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
            junctionLever = {
                objCoords = vector3(2884.9639, 1228.9150, 43.6),
                animCoords = vector3(2887.3218, 1227.3595, 44.6),
                heading = 240.0
            }
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
            junctionLever = {
                objCoords = vector3(3030.8416, 1482.3258, 48.4),
                animCoords = vector3(3032.8428, 1480.1780, 49.4),
                heading = 225.0
            }
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
            junctionLever = {
                objCoords = vector3(2875.0867, 1199.5511, 43.9),
                animCoords = vector3(2872.9082, 1201.2659, 44.9),
                heading = 53.0
            }
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
            junctionLever = {
                objCoords = vector3(610.6963, 1664.1447, 186.25),
                animCoords = vector3(607.8917, 1662.7170, 187.3),
                heading = 115.0
            }
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
            junctionLever = {
                objCoords = vector3(558.2468, 1726.3539, 186.7),
                animCoords = vector3(556.3297, 1724.2788, 187.7),
                heading = 140.0
            }
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
            junctionLever = {
                objCoords = vector3(2661.0518, -432.5219, 42.3),
                animCoords = vector3(2658.1333, -432.4524, 43.3),
                heading = 90.0
            }
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
            junctionLever = {
                objCoords = vector3(-4850.1963, -3087.2280, -16.9),
                animCoords = vector3(-4849.6431, -3084.2400, -15.8),
                heading = 345.0
            }
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
            junctionLever = {
                objCoords = vector3(-4916.7969, -3011.9963, -19.4),
                animCoords = vector3(-4914.3628, -3010.3364, -18.1),
                heading = 300.0
            }
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
            junctionLever = {
                objCoords = vector3(-4949.7207, -3084.5447, -18.7),
                animCoords = vector3(-4950.5562, -3081.7856, -17.6),
                heading = 370.0
            }
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
            junctionLever = {
                objCoords = vector3(-1372.9373, -138.3163, 99.7),
                animCoords = vector3(-1374.8962, -140.0292, 100.9),
                heading = 128.0
            }
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
            junctionLever = {
                objCoords = vector3(-1306.4905, -288.6009, 99.8),
                animCoords = vector3(-1309.2769, -289.3137, 100.9),
                heading = 100.0
            }
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
            junctionLever = {
                objCoords = vector3(1690.3490, 542.7618, 97.25),
                animCoords = vector3(1690.0737, 545.3661, 98.3126),
                heading = 5.0
            }
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
            junctionLever = {
                objCoords = vector3(1485.0074, 647.3776, 91.2),
                animCoords = vector3(1483.1119, 644.6014, 92.2),
                heading = 145.0
            }
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
            junctionLever = {
                objCoords = vector3(1528.7484, 469.0381, 89.1),
                animCoords = vector3(1531.5352, 468.7824, 90.1),
                heading = 267.0
            }
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
            junctionLever = {
                objCoords = vector3(68.0281, -372.6934, 89.8),
                animCoords = vector3(66.7618, -375.3871, 90.9),
                heading = 152.0
            }
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
            junctionLever = {
                objCoords = vector3(29.4970, -30.8901, 102.2),
                animCoords = vector3(31.9970, -32.2474, 103.3),
                heading = 240.0
            }
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
            junctionLever = {
                objCoords = vector3(-277.1700, -316.1038, 87.8),
                animCoords = vector3(-275.8860, -318.9081, 88.9),
                heading = 210.0
            }
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
            junctionLever = {
                objCoords = vector3(612.9391, 684.5961, 114.2),
                animCoords = vector3(614.0319, 681.7375, 115.3),
                heading = 200.0
            }
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
            junctionLever = {
                objCoords = vector3(358.0025, 597.9453, 114.5),
                animCoords = vector3(360.0454, 596.0301, 115.6),
                heading = 230.0
            }
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
            junctionLever = {
                objCoords = vector3(2478.7368, -1477.9485, 44.9),
                animCoords = vector3(2478.8408, -1475.0065, 46.0),
                heading = 0.0
            }
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
            junctionLever = {
                objCoords = vector3(2514.3596, -1483.1785, 44.9),
                animCoords = vector3(2514.2063, -1480.1940, 45.9),
                heading = 0.0
            }
        },
        ['SaintDenis_W_Ext'] = {    --Seem bugged
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 18,
            radius = 37,
            originTrackIndex = 0,
            ways = {
                origin = vector3(2590.4775, -1482.1444, 46.0689), --Origin
                destA  = vector3(2597.2014, -1484.5493, 45.9617), --Right (Bay side)
                destB  = vector3(2597.4089, -1480.2760, 46.0037), --Left (Train station)
            },
            junctionLever = {
                objCoords = vector3(2590.5764, -1483.2988, 44.95),
                animCoords = vector3(2590.5273, -1480.3751, 46.0),
                heading = 0.0
            }
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
            junctionLever = {
                objCoords = vector3(2622.5469, -1475.9203, 44.9),
                animCoords = vector3(2622.5984, -1479.0978, 45.9),
                heading = 180.0
            }
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
            junctionLever = {
                objCoords = vector3(2855.3298, -1316.5808, 44.8),
                animCoords = vector3(2853.1802, -1314.5918, 45.9),
                heading = 50.0
            }
        },
        --This 4 junction are disable due to imaps wagon on the stracks to remove. But there is an graphical issue when imaps are removed.
        --[[['SaintDenis_W_TrainStation'] = {
            trackHash = joaat("FREIGHT_GROUP"),
            junctionIndex = 12,
            radius = 17,
            originTrackIndex = 12,
            ways = {
                origin = vector3(2657.5032, -1477.3469, 45.6976), --Origin
                destA  = vector3(2667.2698, -1477.2756, 45.7098), --Right (Middle way)
                destB  = vector3(2666.9502, -1474.8450, 45.7105), --Left (Train station)
            },
            junctionLever = {
                objCoords = vector3(2657.6987, -1478.2539, 44.6),
                animCoords = vector3(2657.5515, -1475.7085, 45.8),
                heading = 0.0
            }
        },
        ['SaintDenis_E_TrainStation'] = {
            trackHash = joaat("TRAINS_NB1"),
            junctionIndex = 1,
            radius = 37,
            originTrackIndex = 12,
            ways = {
                origin = vector3(2746.9534, -1436.0966, 45.7826), --Origin
                destA  = vector3(2740.4692, -1443.6737, 45.7148), --Right (Middle way)
                destB  = vector3(2738.7029, -1441.9504, 45.7255), --Left (Train station)
            },
            junctionLever = {
                objCoords = vector3(2747.4744, -1437.3457, 44.8),
                animCoords = vector3(2745.3257, -1435.5084, 46.0),
                heading = 50.0
            }
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
            junctionLever = {
                objCoords = vector3(2762.6211, -1423.3606, 44.9),
                animCoords = vector3(2764.5540, -1425.2991, 45.8),
                heading = 230.0
            }
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
            junctionLever = {
                objCoords = vector3(2843.6338, -1326.9229, 44.9),
                animCoords = vector3(2845.7573, -1328.8622, 45.9),
                heading = 230.0
            }
        },]]--
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
            junctionLever = {
                objCoords = vector3(-2213.8481, -2521.2400, 64.5),
                animCoords = vector3(-2212.8938, -2518.3110, 65.6),
                heading = 342.0
            }
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
            junctionLever = {
                objCoords = vector3(0,0,0),
                animCoords = vector3(0,0,0),
                heading = 0.0
            }
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
            junctionLever = {
                objCoords = vector3(0,0,0),
                animCoords = vector3(0,0,0),
                heading = 0.0
            }
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
        },

        --Disabled due to imaps disabled (due to graphical issue when imaps removed)
        ['SaintDenis_W_TrainStation'] = {
            trackHash = joaat('FREIGHT_GROUP'),
            junctionIndex = 12,
            status = true,
            coords = vector3(2657.5515, -1475.7085, 45.8)
        },
        ['SaintDenis_E_TrainStation'] = {
            trackHash = joaat('TRAINS_NB1'),
            junctionIndex = 1,
            status = true,
            coords = vector3(2745.3257, -1435.5084, 46.0)
        },
        ['SaintDenis_W_PortWay'] = {
            trackHash = joaat('FREIGHT_GROUP'),
            junctionIndex = 17,
            status = false,
            coords = vector3(2764.5540, -1425.2991, 45.8)
        },
        ['SaintDenis_E_PortWay'] = {
            trackHash = joaat('FREIGHT_GROUP'),
            junctionIndex = 16,
            status = false,
            coords = vector3(2845.7573, -1328.8622, 45.9)
        },
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
