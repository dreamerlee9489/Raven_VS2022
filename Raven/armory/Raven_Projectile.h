#ifndef PROJECTILE_H
#define PROJECTILE_H
#pragma warning (disable:4786)
//-------------------------------------------- ------------------------------
//
// 名称：Raven_Projectile.h
//
// 作者：Mat Buckland (www.ai-junkie.com)
//
// Desc: 定义射弹类型的基类。 每当武器开火时，都会创建正确类型的射弹。 
// 在 Raven 中有四种射弹：Slugs（轨道炮）、Pellets（散弹枪）、Rockets（火箭发射器）和 Bolts（冲击波）
//-------------------------------------------- ------------------------------
#include "game/MovingEntity.h"
#include "2d/Vector2D.h"
#include "time/CrudeTimer.h"
#include <list>

class Raven_Game;
class Raven_Bot;

class Raven_Projectile : public MovingEntity
{
protected:

	//触发这个的实体的ID
	int           m_iShooterID;

	//子弹瞄准的地方
	Vector2D      m_vTarget;

	//指向世界数据的指针
	Raven_Game* m_pWorld;

	//射弹从哪里发射
	Vector2D      m_vOrigin;

	//弹丸造成多少伤害
	int           m_iDamageInflicted;

	//它死了吗？ 死弹是指已经到达其轨迹末端并循环通过任何爆炸序列的弹丸。 死弹可以从世界环境中移除并删除。
	bool          m_bDead;

	//一旦射弹击中某物，此设置为真
	bool          m_bImpacted;

	//这个弹丸撞击物体的位置
	Vector2D      m_vImpactPoint;

	//这是用这个射弹被实例化的时间标记的。 这是为了使镜头能够在特定的时间长度内渲染
	double       m_dTimeOfCreation;

	Raven_Bot* GetClosestIntersectingBot(Vector2D From,
		Vector2D To)const;

	std::list<Raven_Bot*> GetListOfIntersectingBots(Vector2D From,
		Vector2D To)const;


public:

	Raven_Projectile(Vector2D  target,   //目标位置
		Raven_Game* world,  //指向世界数据的指针
		int      ShooterID, //开枪的机器人的ID
		Vector2D origin,  //弹丸的起始位置
		Vector2D heading,   //弹丸的航向
		int      damage,    //它造成了多少伤害
		double    scale,
		double    MaxSpeed,
		double    mass,
		double    MaxForce) : MovingEntity(origin,
			scale,
			Vector2D(0, 0),
			MaxSpeed,
			heading,
			mass,
			Vector2D(scale, scale),
			0, //最大转弯率在这里无关紧要，所有的镜头都是直的
			MaxForce),

		m_vTarget(target),
		m_bDead(false),
		m_bImpacted(false),
		m_pWorld(world),
		m_iDamageInflicted(damage),
		m_vOrigin(origin),
		m_iShooterID(ShooterID)


	{
		m_dTimeOfCreation = Clock->GetCurrentTime();
	}

	//对于这个类不重要，除非你想实现一个完整的状态保存/恢复（这对调试很有用）
	void Write(std::ostream& os)const {}
	void Read(std::ifstream& is) {}

	//must be implemented
	virtual void Update() = 0;
	virtual void Render() = 0;

	//如果射弹已经撞击并完成了任何爆炸序列，则设置为真。 当为真时，射弹将从游戏中移除
	bool isDead()const { return m_bDead; }

	//如果射弹已经撞击但还没有死亡则为真（例如因为它可能从撞击点向外爆炸）
	bool HasImpacted()const { return m_bImpacted; }
};

#endif