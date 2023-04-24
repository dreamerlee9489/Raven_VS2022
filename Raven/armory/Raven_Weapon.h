#ifndef WEAPON_BASE_H
#define WEAPON_BASE_H
#pragma warning (disable:4786)
//-------------------------------------------- ------------------------------
//
// 名称：Raven_Weapon.h
//
// 作者：Mat Buckland (www.ai-junkie.com)
//
// 描述：raven 项目的基础武器类
//-------------------------------------------- ------------------------------
#include <vector>

#include "2d/Vector2D.h"
#include "time/CrudeTimer.h"
#include "misc/utils.h"
#include "../lua/Raven_Scriptor.h"
#include "../Raven_Bot.h"
#include "Fuzzy/FuzzyModule.h"

class  Raven_Bot;

class Raven_Weapon
{
protected:

	//武器总是（在这个游戏中）由机器人携带
	Raven_Bot* m_pOwner;

	//表示武器类型的枚举
	unsigned int  m_iType;

	//模糊逻辑用于确定武器的可取性。 
	//每个武器都有自己的模糊模块实例，因为每个武器都有不同的规则集来推断合意性。
	FuzzyModule   m_FuzzyModule;

	//该武器携带的弹药量
	unsigned int  m_iNumRoundsLeft;

	//机器人可以携带这种武器的最大回合数
	unsigned int  m_iMaxRoundsCarried;

	//这个武器每秒可以发射的次数
	double         m_dRateOfFire;

	//下一次发射的最早时间
	double         m_dTimeNextAvailable;

	//这用于保留以前的合意性分数的本地副本，以便我们可以为调试提供一些反馈
	double         m_dLastDesirabilityScore;

	//这是使用此武器时与敌人的首选距离
	double         m_dIdealRange;

	//该武器发射的射弹的最大速度
	double         m_dMaxProjectileSpeed;

	//武器可以发射的次数取决于它的射速。 如果武器能够在当前时间发射，则此方法返回 true。 （从 ShootAt() 调用）
	bool          isReadyForNextShot();

	//当发射一枪以更新 m_dTimeNextAvailable 时调用
	void          UpdateTimeWeaponIsNextAvailable();

	//此方法使用适当的模糊变量和规则库初始化模糊模块。
	virtual void  InitializeFuzzyModule() = 0;

	//包含武器几何体的顶点缓冲区
	std::vector<Vector2D>   m_vecWeaponVB;
	std::vector<Vector2D>   m_vecWeaponVBTrans;

public:

	Raven_Weapon(unsigned int TypeOfGun,
		unsigned int DefaultNumRounds,
		unsigned int MaxRoundsCarried,
		double        RateOfFire,
		double        IdealRange,
		double        ProjectileSpeed,
		Raven_Bot* OwnerOfGun) :m_iType(TypeOfGun),
		m_iNumRoundsLeft(DefaultNumRounds),
		m_pOwner(OwnerOfGun),
		m_dRateOfFire(RateOfFire),
		m_iMaxRoundsCarried(MaxRoundsCarried),
		m_dLastDesirabilityScore(0),
		m_dIdealRange(IdealRange),
		m_dMaxProjectileSpeed(ProjectileSpeed)
	{
		m_dTimeNextAvailable = Clock->GetCurrentTime();
	}

	virtual ~Raven_Weapon() {}

	//此方法通过旋转武器所有者的朝向（受机器人的转向率限制）将武器瞄准给定目标。 如果武器直接面向目标，则返回 true。
	bool          AimAt(Vector2D target)const;

	//这从给定目标位置的武器发射射弹（假设武器已准备好发射......每种武器都有自己的射速）
	virtual void  ShootAt(Vector2D pos) = 0;

	//每个武器都有自己的形状和颜色
	virtual void  Render() = 0;

	//此方法返回一个值，表示使用武器的可取性。 AI 使用它来选择最适合机器人当前情况的武器。 该值是使用模糊逻辑计算的
	virtual double GetDesirability(double DistToTarget) = 0;

	// 返回上次调用 GetDesirability 时计算的合意性分数（仅用于调试）
	double         GetLastDesirabilityScore()const { return m_dLastDesirabilityScore; }

	//返回该武器发射的射弹的最大速度
	double         GetMaxProjectileSpeed()const { return m_dMaxProjectileSpeed; }

	//返回武器剩余的回合数
	int           NumRoundsRemaining()const { return m_iNumRoundsLeft; }
	void          DecrementNumRounds() { if (m_iNumRoundsLeft > 0) --m_iNumRoundsLeft; }
	void          IncrementRounds(int num);
	unsigned int  GetType()const { return m_iType; }
	double         GetIdealRange()const { return m_dIdealRange; }
};


///////////////////////////////////////////////////////////////////////////////
//------------------------ ReadyForNextShot -----------------------------------
//
//  如果武器准备好发射则返回真
//-----------------------------------------------------------------------------
inline bool Raven_Weapon::isReadyForNextShot()
{
	if (Clock->GetCurrentTime() > m_dTimeNextAvailable)
	{
		return true;
	}

	return false;
}

//-----------------------------------------------------------------------------
inline void Raven_Weapon::UpdateTimeWeaponIsNextAvailable()
{
	m_dTimeNextAvailable = Clock->GetCurrentTime() + 1.0 / m_dRateOfFire;
}


//-----------------------------------------------------------------------------
inline bool Raven_Weapon::AimAt(Vector2D target)const
{
	return m_pOwner->RotateFacingTowardPosition(target);
}

//-----------------------------------------------------------------------------
inline void Raven_Weapon::IncrementRounds(int num)
{
	m_iNumRoundsLeft += num;
	Clamp(m_iNumRoundsLeft, 0, m_iMaxRoundsCarried);
}

#endif