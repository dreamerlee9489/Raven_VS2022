#include "Raven_Goal_Types.h"


GoalTypeToString* GoalTypeToString::Instance()
{
	static GoalTypeToString instance;
	return &instance;
}

std::string GoalTypeToString::Convert(int gt)
{
	switch (gt)
	{
	case goal_explore:

		return "探索";

	case goal_think:

		return "思考";

	case goal_arrive_at_position:

		return "抵达位置";

	case goal_seek_to_position:

		return "寻找位置";

	case goal_follow_path:

		return "跟随路径";

	case goal_traverse_edge:

		return "沿路线走";

	case goal_move_to_position:

		return "移动位置";

	case goal_get_health:

		return "获取健康包";

	case goal_get_shotgun:

		return "获取散弹枪";

	case goal_get_railgun:

		return "获取光线枪";

	case goal_get_rocket_launcher:

		return "获取火箭装置";

	case goal_wander:

		return "游走";

	case goal_negotiate_door:

		return "开门";

	case goal_attack_target:

		return "攻击目标";

	case goal_hunt_target:

		return "猎取目标";

	case goal_strafe:

		return "扫射";

	case goal_adjust_range:

		return "调整范围";

	case goal_say_phrase:

		return "发送短语";

	default:

		return "UNKNOWN GOAL TYPE!";

	}//end switch
}