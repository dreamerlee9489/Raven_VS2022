#ifndef TRIGGERSYSTEM_H
#define TRIGGERSYSTEM_H
//-------------------------------------------- ------------------------------
//
// 名称：TriggerSystem.h
//
// 作者：Mat Buckland (ai-junkie.com)
//
// Desc: 管理触发器集合的类。 触发器可以注册到此类的实例中。 
// 然后实例负责更新这些触发器，并在它们的生命周期到期时将它们从系统中删除。
//
//-------------------------------------------- ------------------------------
template <class trigger_type>
class TriggerSystem
{
public:

	typedef std::list<trigger_type*> TriggerList;

private:

	TriggerList   m_Triggers;

	//此方法遍历系统中存在的所有触发器并调用它们的 Update 方法，以便在必要时更新它们的内部状态。 
	//它还会从系统中删除所有 m_bRemoveFromGame 字段设置为 true 的触发器。
	void UpdateTriggers()
	{
		TriggerList::iterator curTrg = m_Triggers.begin();
		while (curTrg != m_Triggers.end())
		{
			//remove trigger if dead
			if ((*curTrg)->isToBeRemoved())
			{
				delete* curTrg;

				curTrg = m_Triggers.erase(curTrg);
			}
			else
			{
				//update this trigger
				(*curTrg)->Update();

				++curTrg;
			}
		}
	}

	//此方法遍历作为参数传递的实体容器，并将每个实体传递给每个触发器的 Try 方法 *提供* 实体处于活动状态并且实体已准备好进行触发器更新。
	template <class ContainerOfEntities>
	void TryTriggers(ContainerOfEntities& entities)
	{
		//针对触发器测试每个实体
		ContainerOfEntities::iterator curEnt = entities.begin();
		for (curEnt; curEnt != entities.end(); ++curEnt)
		{
			//实体必须为下一次触发器更新做好准备，并且在针对每个触发器进行测试之前它必须处于活动状态。
			if ((*curEnt)->isReadyForTriggerUpdate() && (*curEnt)->isAlive())
			{
				TriggerList::const_iterator curTrg;
				for (curTrg = m_Triggers.begin(); curTrg != m_Triggers.end(); ++curTrg)
				{
					(*curTrg)->Try(*curEnt);
				}
			}
		}
	}

public:

	~TriggerSystem()
	{
		Clear();
	}

	//这将删除所有当前触发器并清空触发器列表
	void Clear()
	{
		TriggerList::iterator curTrg;
		for (curTrg = m_Triggers.begin(); curTrg != m_Triggers.end(); ++curTrg)
		{
			delete* curTrg;
		}

		m_Triggers.clear();
	}

	//这个方法应该在游戏的每个更新步骤中被调用。 它将首先更新触发器的内部状态，然后针对每个活动触发器尝试每个实体以测试是否应触发任何实体。
	template <class ContainerOfEntities>
	void Update(ContainerOfEntities& entities)
	{
		UpdateTriggers();
		TryTriggers(entities);
	}

	//这用于向 TriggerSystem 注册触发器（TriggerSystem 将负责整理触发器使用的内存）
	void Register(trigger_type* trigger)
	{
		m_Triggers.push_back(trigger);
	}

	//需要渲染一些触发器（例如giver-triggers）
	void Render()
	{
		TriggerList::iterator curTrg;
		for (curTrg = m_Triggers.begin(); curTrg != m_Triggers.end(); ++curTrg)
		{
			(*curTrg)->Render();
		}
	}

	const TriggerList& GetTriggers()const { return m_Triggers; }

};


#endif