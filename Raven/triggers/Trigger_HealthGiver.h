#ifndef HEALTH_GIVER_H
#define HEALTH_GIVER_H
#pragma warning (disable:4786)
//-------------------------------------------- ------------------------------
//
// 名称：Trigger_HealthGiver.h
//
// 作者：马特·巴克兰
//
// 描述：如果一个机器人跑过这个类的一个实例，它的健康就会增加。
//
//-------------------------------------------- ------------------------------
#include "Triggers/Trigger_Respawning.h"
#include "Triggers/TriggerRegion.h"
#include <iosfwd>
#include "../Raven_Bot.h"

class Trigger_HealthGiver : public Trigger_Respawning<Raven_Bot>
{
private:

	// 实体在经过此触发器时接收到的生命值
	int   m_iHealthGiven;

public:

	Trigger_HealthGiver(std::ifstream& datafile);

	//如果被触发，机器人的生命值将会增加
	void Try(Raven_Bot* pBot);

	//在触发器的位置绘制一个带有红叉的框
	void Render();

	void Read(std::ifstream& is);
};



#endif