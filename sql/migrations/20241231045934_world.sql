DROP PROCEDURE IF EXISTS add_migration;
DELIMITER ??
CREATE PROCEDURE `add_migration`()
BEGIN
DECLARE v INT DEFAULT 1;
SET v = (SELECT COUNT(*) FROM `migrations` WHERE `id`='20241231045934');
IF v = 0 THEN
INSERT INTO `migrations` VALUES ('20241231045934');
-- Add your query below.


-- Digger / Forager
UPDATE `creature` SET `id`=4113, `id2`=4114, `movement_type`=2, `wander_distance`=0, `position_x`=-5577.205078, `position_y`=-3046.627441, `position_z`=-51.085835, `orientation`=3.09626 WHERE `guid`=21168;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(21168, 1, -5577.205078, -3046.627441, -51.085835, 100.000000, 0, 0.000000, 0),
(21168, 2, -5598.694824, -3051.496582, -51.804516, 100.000000, 0, 0.000000, 0),
(21168, 3, -5622.291504, -3048.560547, -50.123432, 100.000000, 0, 0.000000, 0),
(21168, 4, -5636.980469, -3068.203613, -48.460876, 100.000000, 0, 0.000000, 0),
(21168, 5, -5655.888672, -3082.365967, -47.014256, 100.000000, 0, 0.000000, 0),
(21168, 6, -5667.268066, -3083.895508, -46.223736, 100.000000, 0, 0.000000, 0),
(21168, 7, -5674.979492, -3076.548096, -46.341225, 100.000000, 0, 0.000000, 0),
(21168, 8, -5676.949707, -3073.082764, -46.365749, 100.000000, 0, 0.000000, 0),
(21168, 9, -5672.545898, -3064.973877, -44.762089, 100.000000, 16000, 0.000000, 4113),
(21168, 10, -5678.213867, -3060.809814, -45.157825, 100.000000, 0, 0.000000, 0),
(21168, 11, -5685.600000, -3054.660000, -46.239900, 100.000000, 0, 0.000000, 0),
(21168, 12, -5677.620000, -3038.470000, -46.364900, 100.000000, 0, 0.000000, 0),
(21168, 13, -5683.920000, -3031.450000, -44.413700, 100.000000, 0, 0.000000, 0),
(21168, 14, -5688.791504, -3027.419189, -39.195911, 100.000000, 0, 0.000000, 0),
(21168, 15, -5685.689941, -3020.705322, -38.431103, 100.000000, 0, 0.000000, 0),
(21168, 16, -5680.379395, -3010.234375, -37.506283, 100.000000, 0, 0.000000, 0),
(21168, 17, -5677.346680, -3003.399902, -36.906395, 100.000000, 0, 0.000000, 0),
(21168, 18, -5672.020996, -2993.657715, -37.491028, 100.000000, 0, 0.000000, 0),
(21168, 19, -5665.534180, -2985.289307, -39.001850, 100.000000, 0, 0.000000, 0),
(21168, 20, -5658.670000, -2971.430000, -41.076000, 100.000000, 16000, 0.000000, 4113),
(21168, 21, -5665.534180, -2985.289307, -39.001850, 100.000000, 0, 0.000000, 0),
(21168, 22, -5672.020996, -2993.657715, -37.491028, 100.000000, 0, 0.000000, 0),
(21168, 23, -5677.346680, -3003.399902, -36.906395, 100.000000, 0, 0.000000, 0),
(21168, 24, -5680.379395, -3010.234375, -37.506283, 100.000000, 0, 0.000000, 0),
(21168, 25, -5685.689941, -3020.705322, -38.431103, 100.000000, 0, 0.000000, 0),
(21168, 26, -5688.791504, -3027.419189, -39.195911, 100.000000, 0, 0.000000, 0),
(21168, 27, -5683.920000, -3031.450000, -44.413700, 100.000000, 0, 0.000000, 0),
(21168, 28, -5673.084473, -3030.127930, -46.446888, 100.000000, 0, 0.000000, 0),
(21168, 29, -5657.228027, -3026.672363, -46.839172, 100.000000, 0, 0.000000, 0),
(21168, 30, -5629.370000, -3025.780000, -48.626800, 100.000000, 0, 0.000000, 0),
(21168, 31, -5615.170000, -3031.230000, -50.830400, 100.000000, 0, 0.000000, 0),
(21168, 32, -5592.790000, -3032.350000, -50.601700, 100.000000, 0, 0.000000, 0),
(21168, 33, -5578.050000, -3028.840000, -50.584300, 100.000000, 0, 0.000000, 0),
(21168, 34, -5557.490000, -3038.950000, -49.679500, 100.000000, 0, 0.000000, 0),
(21168, 35, -5549.000000, -3040.920000, -46.015700, 100.000000, 0, 0.000000, 0),
(21168, 36, -5542.310000, -3043.570000, -44.172700, 5.92976000, 16000, 0.000000, 4113),
(21168, 37, -5552.650000, -3047.000000, -45.863100, 100.000000, 0, 0.000000, 0),
(21168, 38, -5560.740000, -3047.399999, -48.755800, 100.000000, 0, 0.000000, 0);
DELETE FROM `creature_movement_scripts` WHERE `id`=4113;
INSERT INTO `creature_movement_scripts` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `datalong4`, `target_param1`, `target_param2`, `target_type`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `condition_id`, `comments`) VALUES
(4113, 0, 0, 1, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravelsnout Digger - Emote State Work'),
(4113, 16, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Gravelsnout Digger - Emote None');

-- Digger / Surveyor
UPDATE `creature` SET `id`=4113, `id2`=4116, `movement_type`=2, `wander_distance`=0, `position_x`=-5683.45, `position_y`=-3402.22, `position_z`=-39.9734, `orientation`=0.187281 WHERE `guid`=21177;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(21177, 1, -5683.45, -3402.22, -39.9734, 0.187281, 16000, 0.000000, 4113),
(21177, 2, -5695.49, -3404.63, -41.3489, 100.000000, 0, 0.000000, 0),
(21177, 3, -5707.49, -3407.07, -43.2466, 100.000000, 0, 0.000000, 0),
(21177, 4, -5712.99, -3407.7, -44.156, 100.000000, 0, 0.000000, 0),
(21177, 5, -5726.11, -3403.67, -43.1356, 100.000000, 0, 0.000000, 0),
(21177, 6, -5731.73, -3402.64, -43.1177, 100.000000, 0, 0.000000, 0),
(21177, 7, -5743.47, -3400.51, -43.4636, 100.000000, 0, 0.000000, 0),
(21177, 8, -5745, -3383.8, -39.1807, 100.000000, 0, 0.000000, 0),
(21177, 9, -5756.21, -3368.11, -33.2895, 100.000000, 0, 0.000000, 0),
(21177, 10, -5768.48, -3345.85, -33.8938, 100.000000, 0, 0.000000, 0),
(21177, 11, -5775.52, -3328.23, -35.9136, 100.000000, 0, 0.000000, 0),
(21177, 12, -5768.45, -3302.31, -29.396, 100.000000, 0, 0.000000, 0),
(21177, 13, -5770.91, -3283.56, -23.4318, 100.000000, 0, 0.000000, 0),
(21177, 14, -5763.18, -3254.46, -27.044, 100.000000, 0, 0.000000, 0),
(21177, 15, -5763.62, -3240.85, -28.7719, 100.000000, 0, 0.000000, 0),
(21177, 16, -5759, -3229.04, -31.1396, 100.000000, 0, 0.000000, 0),
(21177, 17, -5759.05, -3220.16, -31.0334, 100.000000, 0, 0.000000, 0),
(21177, 18, -5755.35, -3203.2, -33.8634, 0.928291, 16000, 0.000000, 4113),
(21177, 19, -5759.05, -3220.16, -31.0334, 100.000000, 0, 0.000000, 0),
(21177, 20, -5764.3, -3242.57, -28.0418, 100.000000, 0, 0.000000, 0),
(21177, 21, -5763.18, -3254.46, -27.044, 100.000000, 0, 0.000000, 0),
(21177, 22, -5769.74, -3285.49, -25.2488, 100.000000, 0, 0.000000, 0),
(21177, 23, -5769.61, -3305.96, -30.0609, 100.000000, 0, 0.000000, 0),
(21177, 24, -5780.24, -3333.9, -38.2232, 100.000000, 0, 0.000000, 0),
(21177, 25, -5794.56, -3360.22, -44.9097, 100.000000, 0, 0.000000, 0),
(21177, 26, -5804.11, -3379.93, -47.6672, 4.24822, 16000, 0.000000, 4113),
(21177, 27, -5780.44, -3383.91, -45.7149, 100.000000, 0, 0.000000, 0),
(21177, 28, -5753.39, -3384.36, -40.77, 100.000000, 0, 0.000000, 0),
(21177, 29, -5743.47, -3400.51, -43.4636, 100.000000, 0, 0.000000, 0),
(21177, 30, -5712.99, -3407.7, -44.156, 100.000000, 0, 0.000000, 0),
(21177, 31, -5695.49, -3404.63, -41.3489, 100.000000, 0, 0.000000, 0);

-- Digger / Surveyor
UPDATE `creature` SET `id`=4113, `id2`=4116, `movement_type`=2, `wander_distance`=0, `position_x`=-5412.9, `position_y`=-3354.58, `position_z`=-37.1158, `orientation`=5.53404 WHERE `guid`=21174;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(21174, 1, -5412.9, -3354.58, -37.1158, 5.53404, 16000, 0.000000, 4113),
(21174, 2, -5418.41, -3349.54, -39.2202, 100.000000, 0, 0.000000, 0),
(21174, 3, -5423.93, -3346.93, -40.0309, 100.000000, 0, 0.000000, 0),
(21174, 4, -5438.72, -3340.69, -37.8232, 100.000000, 0, 0.000000, 0),
(21174, 5, -5446.58, -3337.36, -36.4722, 100.000000, 0, 0.000000, 0),
(21174, 6, -5468.65, -3340.08, -32.1009, 100.000000, 0, 0.000000, 0),
(21174, 7, -5475.28, -3330.96, -29.7181, 2.21517, 16000, 0.000000, 4113),
(21174, 8, -5465.22, -3334.17, -32.8386, 100.000000, 0, 0.000000, 0),
(21174, 9, -5446.58, -3337.36, -36.4722, 100.000000, 0, 0.000000, 0),
(21174, 10, -5441.31, -3319.33, -35.2426, 100.000000, 0, 0.000000, 0),
(21174, 11, -5438.31, -3302.64, -35.1959, 100.000000, 0, 0.000000, 0),
(21174, 12, -5441.42, -3291.61, -33.3526, 1.96142, 16000, 0.000000, 4113),
(21174, 13, -5438.31, -3302.64, -35.1959, 100.000000, 0, 0.000000, 0),
(21174, 14, -5441.31, -3319.33, -35.2426, 100.000000, 0, 0.000000, 0),
(21174, 15, -5446.58, -3337.36, -36.4722, 100.000000, 0, 0.000000, 0),
(21174, 16, -5438.72, -3340.69, -37.8232, 100.000000, 0, 0.000000, 0),
(21174, 17, -5423.93, -3346.93, -40.0309, 100.000000, 0, 0.000000, 0);

-- Digger / Surveyor
-- guid 21173
UPDATE `creature` SET `id`=4113, `id2`=4116, `movement_type`=2, `wander_distance`=0, `position_x`=-5303.88, `position_y`=-3210.58, `position_z`=-38.108, `orientation`=0.702996 WHERE `guid`=21173;
DELETE FROM `creature_movement` WHERE `id`=21173;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(21173, 1, -5303.88, -3210.58, -38.108, 0.702996, 16000, 0.000000, 4113),
(21173, 2, -5309.76, -3215.89, -38.6163, 100.000000, 0, 0.000000, 0),
(21173, 3, -5326.64, -3235.72, -40.7382, 100.000000, 0, 0.000000, 0),
(21173, 4, -5338.31, -3256.99, -41.0446, 100.000000, 0, 0.000000, 0),
(21173, 5, -5359.85, -3241, -43.6952, 100.000000, 0, 0.000000, 0),
(21173, 6, -5355.34, -3224.22, -42.7986, 100.000000, 0, 0.000000, 0),
(21173, 7, -5378.99, -3190.86, -30.3811, 100.000000, 0, 0.000000, 0),
(21173, 8, -5368.76, -3171.13, -29.4815, 0.791644, 16000, 0.000000, 4113),
(21173, 9, -5378.99, -3190.86, -30.3811, 100.000000, 0, 0.000000, 0),
(21173, 10, -5368.06, -3211.83, -36.8703, 100.000000, 0, 0.000000, 0),
(21173, 11, -5373.15, -3227.57, -37.821, 100.000000, 0, 0.000000, 0),
(21173, 12, -5359.85, -3241, -43.6952, 100.000000, 0, 0.000000, 0),
(21173, 13, -5338.57, -3259.28, -40.8438, 100.000000, 0, 0.000000, 0),
(21173, 14, -5330.42, -3240.24, -41.2852, 100.000000, 0, 0.000000, 0),
(21173, 15, -5325.74, -3233.77, -40.5765, 100.000000, 0, 0.000000, 0),
(21173, 16, -5310.62, -3216.29, -39.0843, 100.000000, 0, 0.000000, 0);

-- Digger / Forager
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(21540, 4113, 4114, 0, 0, 0, 1, -5388.39, -2792.21, -28.2212, 4.34009, 300, 300, 0, 100, 100, 2, 0, 0, 0, 10);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(21540, 1, -5388.39, -2792.21, -28.2212, 4.34009, 16000, 0.000000, 4113),
(21540, 2, -5385.41, -2780.82, -27.7131, 100.000000, 0, 0.000000, 0),
(21540, 3, -5380.85, -2775.71, -28.3603, 100.000000, 0, 0.000000, 0),
(21540, 4, -5380.77, -2758.78, -25.3726, 100.000000, 0, 0.000000, 0),
(21540, 5, -5380.26, -2747.8, -27.6929, 100.000000, 0, 0.000000, 0),
(21540, 6, -5381.96, -2737.17, -27.4202, 100.000000, 0, 0.000000, 0),
(21540, 7, -5379.37, -2720.18, -28.0506, 100.000000, 0, 0.000000, 0),
(21540, 8, -5376.86, -2698.61, -28.8572, 1.39858, 16000, 0.000000, 4113),
(21540, 9, -5379.37, -2720.18, -28.0506, 100.000000, 0, 0.000000, 0),
(21540, 10, -5362.38, -2741.79, -25.4607, 100.000000, 0, 0.000000, 0),
(21540, 11, -5352.63, -2752.09, -32.3077, 100.000000, 0, 0.000000, 0),
(21540, 12, -5349.2, -2769.29, -41.128, 100.000000, 0, 0.000000, 0),
(21540, 13, -5347.51, -2776.88, -43.3204, 100.000000, 0, 0.000000, 0),
(21540, 14, -5342.4, -2785.85, -45.4928, 100.000000, 0, 0.000000, 0),
(21540, 15, -5335.42, -2787.29, -46.5162, 6.09186, 16000, 0.000000, 4113),
(21540, 16, -5342.4, -2785.85, -45.4928, 100.000000, 0, 0.000000, 0),
(21540, 17, -5347.51, -2776.88, -43.3204, 100.000000, 0, 0.000000, 0),
(21540, 18, -5365.85, -2767.64, -38.5592,100.000000, 0, 0.000000, 0),
(21540, 19, -5380.26, -2747.8, -27.6929, 100.000000, 0, 0.000000, 0),
(21540, 20, -5380.77, -2758.78, -25.3726, 100.000000, 0, 0.000000, 0),
(21540, 21, -5380.85, -2775.71, -28.3603, 100.000000, 0, 0.000000, 0),
(21540, 22, -5385.03, -2783.34, -28.415, 100.000000, 0, 0.000000, 0);

-- Digger / Forager
INSERT INTO `creature` (`guid`, `id`, `id2`, `id3`, `id4`, `id5`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecsmin`, `spawntimesecsmax`, `wander_distance`, `health_percent`, `mana_percent`, `movement_type`, `spawn_flags`, `visibility_mod`, `patch_min`, `patch_max`) VALUES
(21541, 4113, 4114, 0, 0, 0, 1, -5229.04, -2716.89, -48.3032, 1.30027, 300, 300, 0, 100, 100, 2, 0, 0, 0, 10);
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(21541, 1, -5229.04, -2716.89, -48.3032, 1.30027, 16000, 0.000000, 4113),
(21541, 2, -5234.96, -2739.95, -49.7299, 100.000000, 0, 0.000000, 0),
(21541, 3, -5251.09, -2756.48, -49.3771, 100.000000, 0, 0.000000, 0),
(21541, 4, -5259.18, -2757.12, -48.8489, 100.000000, 0, 0.000000, 0),
(21541, 5, -5281.29, -2762.18, -48.5574, 100.000000, 0, 0.000000, 0),
(21541, 6, -5310.22, -2778.74, -47.7718, 100.000000, 0, 0.000000, 0),
(21541, 7, -5321.14, -2784.58, -47.5234, 3.62914, 16000, 0.000000, 4113),
(21541, 8, -5311.93, -2791.88, -50.1181, 100.000000, 0, 0.000000, 0),
(21541, 9, -5304.51, -2797.77, -51.5683, 100.000000, 0, 0.000000, 0),
(21541, 10, -5290.91, -2800.98, -52.1154, 100.000000, 0, 0.000000, 0),
(21541, 11, -5284.09, -2809.55, -51.4081, 5.15046, 16000, 0.000000, 4113),
(21541, 12, -5290.91, -2800.98, -52.1154, 100.000000, 0, 0.000000, 0),
(21541, 13, -5304.51, -2797.77, -51.5683, 100.000000, 0, 0.000000, 0),
(21541, 14, -5310.22, -2778.74, -47.7718, 100.000000, 0, 0.000000, 0),
(21541, 15, -5288.41, -2765.43, -48.6034, 100.000000, 0, 0.000000, 0),
(21541, 16, -5259.18, -2757.12, -48.8489, 100.000000, 0, 0.000000, 0),
(21541, 17, -5251.09, -2756.48, -49.3771, 100.000000, 0, 0.000000, 0),
(21541, 18, -5243.43, -2748.2, -49.2543, 100.000000, 0, 0.000000, 0),
(21541, 19, -5234.96, -2739.95, -49.7299, 100.000000, 0, 0.000000, 0);

-- Digger / Surveyor
UPDATE `creature` SET `id`=4113, `id2`=4116, `movement_type`=2, `wander_distance`=0, `position_x`=-4635.13, `position_y`=-946.347, `position_z`=-43.9067, `orientation`=2.7874 WHERE `guid`=21175;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(21175, 1, -4635.13, -946.347, -43.9067, 2.7874, 16000, 0.000000, 4113),
(21175, 2, -4620.23, -949.246, -44.227, 100.000000, 0, 0.000000, 0),
(21175, 3, -4606.37, -958.566, -44.7544, 100.000000, 0, 0.000000, 0),
(21175, 4, -4601.22, -957.194, -48.205, 100.000000, 0, 0.000000, 0),
(21175, 5, -4591.65, -954.635, -51.0271, 100.000000, 0, 0.000000, 0),
(21175, 6, -4579.38, -959.277, -49.9424, 100.000000, 0, 0.000000, 0),
(21175, 7, -4563.58, -969.177, -48.3699, 100.000000, 0, 0.000000, 0),
(21175, 8, -4557.14, -965.098, -44.1455, 100.000000, 0, 0.000000, 0),
(21175, 9, -4559.88, -959.314, -40.1306, 100.000000, 0, 0.000000, 0),
(21175, 10, -4570.75, -947.923, -41.4449, 100.000000, 0, 0.000000, 0),
(21175, 11, -4586.41, -931.062, -41.8179, 100.000000, 0, 0.000000, 0),
(21175, 12, -4590.13, -923.588, -40.7887, 100.000000, 0, 0.000000, 0),
(21175, 13, -4589.46, -909.302, -39.9038, 1.42107, 16000, 0.000000, 4113),
(21175, 14, -4590.13, -923.588, -40.7887, 100.000000, 0, 0.000000, 0),
(21175, 15, -4580.56, -936.905, -41.8179, 100.000000, 0, 0.000000, 0),
(21175, 16, -4572.62, -943.773, -41.062, 100.000000, 0, 0.000000, 0),
(21175, 17, -4564.62, -956.296, -40.3205, 100.000000, 0, 0.000000, 0),
(21175, 18, -4557.92, -961.218, -40.8271, 100.000000, 0, 0.000000, 0),
(21175, 19, -4556.15, -966.882, -45.7144, 100.000000, 0, 0.000000, 0),
(21175, 20, -4568.59, -967.792, -48.8071, 100.000000, 0, 0.000000, 0),
(21175, 21, -4578.55, -959.795, -49.6993, 100.000000, 0, 0.000000, 0),
(21175, 22, -4588.77, -949.498, -51.915, 100.000000, 0, 0.000000, 0),
(21175, 23, -4607.56, -933.442, -56.8174, 100.000000, 0, 0.000000, 0),
(21175, 24, -4615.26, -920.676, -58.1721, 100.000000, 0, 0.000000, 0),
(21175, 25, -4612.66, -910.935, -57.1251, 100.000000, 0, 0.000000, 0),
(21175, 26, -4608.23, -890.857, -51.1049, 100.000000, 0, 0.000000, 0),
(21175, 27, -4592.47, -863.47, -52.7843, 100.000000, 0, 0.000000, 0),
(21175, 28, -4577.62, -849.963, -52.5047, 100.000000, 0, 0.000000, 0),
(21175, 29, -4570.25, -837.985, -49.9771, 1.07551, 16000, 0.000000, 4113),
(21175, 30, -4575.37, -848.033, -52.4168, 100.000000, 0, 0.000000, 0),
(21175, 31, -4587.68, -861.741, -52.3736, 100.000000, 0, 0.000000, 0),
(21175, 32, -4603.46, -886.418, -50.7409, 100.000000, 0, 0.000000, 0),
(21175, 33, -4607.46, -902.793, -53.4442, 100.000000, 0, 0.000000, 0),
(21175, 34, -4609.41, -914.574, -57.0317, 100.000000, 0, 0.000000, 0),
(21175, 35, -4607.56, -933.442, -56.8174, 100.000000, 0, 0.000000, 0),
(21175, 36, -4594.69, -948.919, -52.0772,100.000000, 0, 0.000000, 0),
(21175, 37, -4598.9, -958.816, -47.739, 100.000000, 0, 0.000000, 0),
(21175, 38, -4606.37, -958.566, -44.7544, 100.000000, 0, 0.000000, 0),
(21175, 39, -4617.92, -952.57, -43.1393, 100.000000, 0, 0.000000, 0);

-- Digger / Surveyor
UPDATE `creature` SET `id`=4113, `id2`=4116, `movement_type`=2, `wander_distance`=0, `position_x`=-4458.62, `position_y`=-1003.71, `position_z`=-49.9253, `orientation`=2.38043 WHERE `guid`=21176;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `orientation`, `waittime`, `wander_distance`, `script_id`) VALUES
(21176, 1, -4458.62, -1003.71, -49.9253, 2.38043, 16000, 0.000000, 4113),
(21176, 2, -4447.82, -1005.28, -51.6557, 100.000000, 0, 0.000000, 0),
(21176, 3, -4442.97, -1002.21, -54.7445, 100.000000, 0, 0.000000, 0),
(21176, 4, -4428.59, -993.099, -56.1911, 100.000000, 0, 0.000000, 0),
(21176, 5, -4419.94, -990.274, -56.0395, 100.000000, 0, 0.000000, 0),
(21176, 6, -4401.57, -984.253, -55.8161, 100.000000, 0, 0.000000, 0),
(21176, 7, -4383.13, -975.728, -55.6905, 100.000000, 0, 0.000000, 0),
(21176, 8, -4370.35, -969.833, -55.0777, 100.000000, 0, 0.000000, 0),
(21176, 9, -4367.87, -953.68, -53.6813, 100.000000, 0, 0.000000, 0),
(21176, 10, -4374.25, -949.765, -53.849, 2.59166, 16000, 0.000000, 4113),
(21176, 11, -4375.38, -960.675, -55.1778, 100.000000, 0, 0.000000, 0),
(21176, 12, -4376.36, -968.615, -55.6328, 100.000000, 0, 0.000000, 0),
(21176, 13, -4377.69, -979.477, -55.7554, 100.000000, 0, 0.000000, 0),
(21176, 14, -4383.13, -989.845, -55.4296, 100.000000, 0, 0.000000, 0),
(21176, 15, -4391.49, -1005.78, -54.929, 4.22927, 16000, 0.000000, 4113),
(21176, 16, -4405.42, -995.001, -56.1911, 100.000000, 0, 0.000000, 0),
(21176, 17, -4416.52, -996.005, -56.1911, 100.000000, 0, 0.000000, 0),
(21176, 18, -4427.76, -997.021, -56.1911, 100.000000, 0, 0.000000, 0),
(21176, 19, -4443.33, -1003.75, -54.2043, 100.000000, 0, 0.000000, 0),
(21176, 20, -4452.67, -1009.38, -47.9145, 100.000000, 0, 0.000000, 0);


-- End of migration.
END IF;
END??
DELIMITER ;
CALL add_migration();
DROP PROCEDURE IF EXISTS add_migration;