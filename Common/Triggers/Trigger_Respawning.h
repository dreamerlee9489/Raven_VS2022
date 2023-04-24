#ifndef Trigger_Respawning_H
#define Trigger_Respawning_H
#pragma warning (disable:4786)
//-------------------------------------------- ------------------------------
//
// 名称：Trigger_Respawning.h
//
// 作者：马特·巴克兰
//
// 描述：创建触发器的基类，该触发器能够在一段时间不活动后重生
//
//-------------------------------------------- ------------------------------
#include "Trigger.h"
#include <iosfwd>
#include <cassert>


template <class entity_type>
class Trigger_Respawning : public Trigger<entity_type>
{
protected:

	//当机器人进入此触发器的影响范围内时，它会被触发，但随后会在指定的时间内变为非活动状态。 这些值控制触发器再次激活之前需要经过的时间量。
	int   m_iNumUpdatesBetweenRespawns;
	int   m_iNumUpdatesRemainingUntilRespawn;

	//将触发器设置为对 m_iNumUpdatesBetweenRespawns 更新步骤不活动
	void Deactivate()
	{
		SetInactive();
		m_iNumUpdatesRemainingUntilRespawn = m_iNumUpdatesBetweenRespawns;
	}

public:

	Trigger_Respawning(int id) :Trigger<entity_type>(id),
		m_iNumUpdatesBetweenRespawns(0),
		m_iNumUpdatesRemainingUntilRespawn(0)
	{}

	virtual ~Trigger_Respawning() {}

	//由子类实现
	virtual void  Try(entity_type*) = 0;

	//这被称为每个游戏刻来更新触发器的内部状态
	virtual void Update()
	{
		if ((--m_iNumUpdatesRemainingUntilRespawn <= 0) && !isActive())
		{
			SetActive();
		}
	}

	void SetRespawnDelay(unsigned int numTicks)
	{
		m_iNumUpdatesBetweenRespawns = numTicks;
	}
};




#endif