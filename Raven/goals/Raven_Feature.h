#ifndef RAVEN_FEATURE_H
#define RAVEN_FEATURE_H
//-----------------------------------------------------------------------------
//
//  Name:   Raven_Feature.h
//
//  Author: Mat Buckland (ai-junkie.com)
//
//  Desc:   class that implements methods to extract feature specific
//          information from the Raven game world and present it as 
//          a value in the range 0 to 1
//
//-----------------------------------------------------------------------------
class Raven_Bot;

class Raven_Feature
{
public:

	//根据机器人的健康状况返回一个介于 0 和 1 之间的值。 身体越好，评分越高
	static double Health(Raven_Bot* pBot);

	//根据机器人与给定项目的接近程度返回 0 到 1 之间的值。 项目越远，评级越高。 
	//如果在调用此方法时游戏世界中不存在给定类型的项目，则返回值为 1
	static double DistanceToItem(Raven_Bot* pBot, int ItemType);

	//根据机器人对给定武器的弹药量以及机器人可以携带的最大弹药量，返回 0 到 1 之间的值。 携带量越接近最大量，得分越高
	static double IndividualWeaponStrength(Raven_Bot* pBot, int WeaponType);

	//根据机器人携带的每种武器的弹药总量返回一个介于 0 和 1 之间的值。 机器人可以拿起的三种武器中的每一种都可以贡献三分之一的分数。 
	//换句话说，如果一个机器人携带一个 RL 和一个 RG，并且 RG 的弹药是最大的，但 RL 的弹药只有一半，那么评级将为 1/3 + 1/6 + 0 = 0.5
	static double TotalWeaponStrength(Raven_Bot* pBot);
};



#endif