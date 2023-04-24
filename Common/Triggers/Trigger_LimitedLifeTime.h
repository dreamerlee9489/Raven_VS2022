#ifndef TRIGGER_LIMITEDLIFETIME_H
#define TRIGGER_LIMITEDLIFETIME_H
#pragma warning (disable:4786)
//-------------------------------------------- ------------------------------
//
// 名称：Trigger_LimitedLifetime.h
//
// 作者：马特·巴克兰
//
// Desc: 定义一个触发器，它只在游戏中保留指定数量的更新步骤
//
//-------------------------------------------- ------------------------------
#include "Trigger.h"


template <class entity_type>
class Trigger_LimitedLifetime : public Trigger<entity_type>
{
protected:

	//这个触发器在更新步骤中的生命周期
	int m_iLifetime;

public:

	Trigger_LimitedLifetime(int lifetime) :Trigger<entity_type>(BaseGameEntity::GetNextValidID()),
		m_iLifetime(lifetime)
	{}

	virtual ~Trigger_LimitedLifetime() {}

	//这个类的孩子应该总是确保这是从他们自己的更新方法中调用的
	virtual void Update()
	{
		//如果生命周期计数器到期，设置这个触发器从游戏中移除
		if (--m_iLifetime <= 0)
		{
			SetToBeRemovedFromGame();
		}
	}

	//由子类实现
	virtual void  Try(entity_type*) = 0;
};




#endif