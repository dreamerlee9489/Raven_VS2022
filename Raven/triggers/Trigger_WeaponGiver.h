#ifndef WEAPON_GIVER_H
#define WEAPON_GIVER_H
#pragma warning (disable:4786)
//-------------------------------------------- ------------------------------
//
// 名称：Trigger_WeaponGiver.h
//
// 作者：马特·巴克兰
//
// 描述：这个触发器“给”触发机器人指定类型的武器
//
//-------------------------------------------- ------------------------------
#include "Triggers/Trigger_Respawning.h"
#include "../Raven_Bot.h"
#include <iosfwd>

class Trigger_WeaponGiver : public Trigger_Respawning<Raven_Bot>
{
private:

	//火箭形状的vrtex缓冲区
	std::vector<Vector2D>         m_vecRLVB;
	std::vector<Vector2D>         m_vecRLVBTrans;

public:

	//这种类型的触发器是在读取地图文件时创建的
	Trigger_WeaponGiver(std::ifstream& datafile);

	//如果被触发，这个触发器将调用机器人的 PickupWeapon 方法。 PickupWeapon 将实例化适当类型的武器。
	void Try(Raven_Bot*);

	//在触发器位置绘制代表武器类型的符号
	void Render();

	void Read(std::ifstream& is);
};


#endif