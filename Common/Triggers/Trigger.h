#ifndef TRIGGER_H
#define TRIGGER_H
//-------------------------------------------- ------------------------------
//
// 名称：Trigger.h
//
// 作者：Mat Buckland (www.ai-junkie.com)
//
// Desc: 触发器的基类。 触发器是当实体在其影响区域内移动时激活的对象。
//
//-------------------------------------------- ------------------------------
#include "game/BaseGameEntity.h"
#include "TriggerRegion.h"

struct Telegram;
struct Vector2D;

template <class entity_type>
class Trigger : public BaseGameEntity
{
private:

	//每个触发器拥有一个触发区域。 如果一个实体进入这个区域，触发器就会被激活
	TriggerRegion* m_pRegionOfInfluence;

	//如果这是真的触发器将从游戏中移除
	bool           m_bRemoveFromGame;

	//能够在事件上停用某些类型的触发器很方便。 
	//因此，只有当该值为真时才能触发触发器（重生触发器充分利用了此功能）
	bool           m_bActive;

	//某些类型的触发器与图形节点配对。 这使 AI 的寻路组件能够在导航图中搜索特定类型的触发器。
	int            m_iGraphNodeIndex;

protected:

	void SetGraphNodeIndex(int idx) { m_iGraphNodeIndex = idx; }

	void SetToBeRemovedFromGame() { m_bRemoveFromGame = true; }
	void SetInactive() { m_bActive = false; }
	void SetActive() { m_bActive = true; }

	//如果由位置和边界半径给出的实体与触发区域重叠，则返回真
	bool isTouchingTrigger(Vector2D EntityPos, double EntityRadius)const;

	//子类使用这些方法之一来初始化触发区域
	void AddCircularTriggerRegion(Vector2D center, double radius);
	void AddRectangularTriggerRegion(Vector2D TopLeft, Vector2D BottomRight);

public:

	Trigger(unsigned int id) :BaseGameEntity(id),
		m_bRemoveFromGame(false),
		m_bActive(true),
		m_iGraphNodeIndex(-1),
		m_pRegionOfInfluence(NULL)

	{}

	virtual ~Trigger() { delete m_pRegionOfInfluence; }

	//当它被调用时，触发器确定实体是否在触发器的影响区域内。 如果是，则将触发触发器并采取适当的操作。
	virtual void  Try(entity_type*) = 0;

	//调用游戏的每个更新步骤。 此方法更新触发器可能具有的任何内部状态
	virtual void  Update() = 0;

	int  GraphNodeIndex()const { return m_iGraphNodeIndex; }
	bool isToBeRemoved()const { return m_bRemoveFromGame; }
	bool isActive() { return m_bActive; }
};


//------------------------ AddCircularTriggerRegion ---------------------------
//-----------------------------------------------------------------------------
template <class entity_type>
void Trigger<entity_type>::AddCircularTriggerRegion(Vector2D center,
	double    radius)
{
	//如果这替换了现有区域，则清理内存
	if (m_pRegionOfInfluence) delete m_pRegionOfInfluence;

	m_pRegionOfInfluence = new TriggerRegion_Circle(center, radius);
}

//--------------------- AddRectangularTriggerRegion ---------------------------
//-----------------------------------------------------------------------------
template <class entity_type>
void Trigger<entity_type>::AddRectangularTriggerRegion(Vector2D TopLeft,
	Vector2D BottomRight)
{
	//如果这替换了现有区域，则清理内存
	if (m_pRegionOfInfluence) delete m_pRegionOfInfluence;

	m_pRegionOfInfluence = new TriggerRegion_Rectangle(TopLeft, BottomRight);
}

//--------------------- isTouchingTrigger -------------------------------------
//-----------------------------------------------------------------------------
template <class entity_type>
bool Trigger<entity_type>::isTouchingTrigger(Vector2D EntityPos,
	double    EntityRadius)const
{
	if (m_pRegionOfInfluence)
	{
		return m_pRegionOfInfluence->isTouching(EntityPos, EntityRadius);
	}

	return false;
}


#endif