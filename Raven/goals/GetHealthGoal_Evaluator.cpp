#include "GetHealthGoal_Evaluator.h"
#include "../Raven_ObjectEnumerations.h"
#include "Goal_Think.h"
#include "Raven_Goal_Types.h"
#include "misc/Stream_Utility_Functions.h"
#include "Raven_Feature.h"

//---------------------- CalculateDesirability -------------------------------------
//-----------------------------------------------------------------------------
double GetHealthGoal_Evaluator::CalculateDesirability(Raven_Bot* pBot)
{
	//first grab the distance to the closest instance of a health item
	double Distance = Raven_Feature::DistanceToItem(pBot, type_health);

	//如果距离特征的值为 1，则表示该项目不在地图上或太远而不值得考虑，因此合意性为零
	if (Distance == 1)
	{
		return 0;
	}
	else
	{
		//value used to tweak the desirability
		const double Tweaker = 0.2;

		//寻找健康项目的可取性与剩余的健康量成正比，与距离最近的健康项目实例的距离成反比。
		double Desirability = Tweaker * (1 - Raven_Feature::Health(pBot)) / (Raven_Feature::DistanceToItem(pBot, type_health));

		//ensure the value is in the range 0 to 1
		Clamp(Desirability, 0, 1);

		//根据机器人的个性来调整价值
		Desirability *= m_dCharacterBias;

		return Desirability;
	}
}

//----------------------------- SetGoal ---------------------------------------
//-----------------------------------------------------------------------------
void GetHealthGoal_Evaluator::SetGoal(Raven_Bot* pBot)
{
	pBot->GetBrain()->AddGoal_GetItem(type_health);
}

//-------------------------- RenderInfo ---------------------------------------
//-----------------------------------------------------------------------------
void GetHealthGoal_Evaluator::RenderInfo(Vector2D Position, Raven_Bot* pBot)
{
	gdi->TextAtPos(Position, "H: " + ttos(CalculateDesirability(pBot), 2));
	return;

	std::string s = ttos(1 - Raven_Feature::Health(pBot)) + ", " + ttos(Raven_Feature::DistanceToItem(pBot, type_health));
	gdi->TextAtPos(Position + Vector2D(0, 15), s);
}