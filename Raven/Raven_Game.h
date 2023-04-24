#ifndef RAVEN_ENV
#define RAVEN_ENV
#pragma warning (disable:4786)
//-------------------------------------------- ------------------------------
//
// 名称：Raven_Game.h
//
// 作者：Mat Buckland (www.ai-junkie.com)
//
// Desc: 此类创建并存储构成 Raven 游戏环境的所有实体。 （墙壁、机器人、健康等）并且可以读取 Raven 地图文件并重新创建必要的几何图形。
//
// 这个类有更新游戏实体和渲染它们的方法。
//-------------------------------------------- ------------------------------
#include <vector>
#include <string>
#include <list>

#include "graph/SparseGraph.h"
#include "Raven_ObjectEnumerations.h"
#include "2d/Wall2D.h"
#include "misc/utils.h"
#include "game/EntityFunctionTemplates.h"
#include "Raven_Bot.h"
#include "navigation/pathmanager.h"

class BaseGameEntity;
class Raven_Projectile;
class Raven_Map;
class GraveMarkers;

class Raven_Game
{
private:

	//当前游戏地图
	Raven_Map* m_pMap;

	//居住在地图上的所有机器人的列表
	std::list<Raven_Bot*>            m_Bots;

	//用户可以选择一个机器人来手动控制，这是指向那个机器人的指针
	Raven_Bot* m_pSelectedBot;

	//此列表包含任何活动的射弹（弹头、火箭、猎枪子弹等）
	std::list<Raven_Projectile*>     m_Projectiles;

	//这个类管理所有的路径规划请求
	PathManager<Raven_PathPlanner>* m_pPathManager;

	//如果为真，游戏将暂停
	bool                             m_bPaused;

	//如果为真，机器人将被从游戏中移除
	bool                             m_bRemoveABot;

	//当机器人被杀死时，会显示几秒钟的“坟墓”。 这个类管理坟墓
	GraveMarkers* m_pGraveMarkers;

	//这遍历每个触发器，针对每个机器人测试每个触发器
	void  UpdateTriggers();

	//删除所有实体，清空所有容器并创建一个新的导航图 
	void  Clear();

	//尝试将生成机器人放置在自由生成点。 如果不成功则返回 false
	bool AttemptToAddBot(Raven_Bot* pBot);

	//当用户将机器人从游戏中移除时，必须通知所有剩余的机器人，以便它们可以从内存中删除对该机器人的任何引用
	void NotifyAllBotsOfRemoval(Raven_Bot* pRemovedBot)const;

public:

	Raven_Game();
	~Raven_Game();

	//the usual suspects
	void Render();
	void Update();

	//从文件加载环境
	bool LoadMap(const std::string& FileName);

	void AddBots(unsigned int NumBotsToAdd);
	void AddRocket(Raven_Bot* shooter, Vector2D target);
	void AddRailGunSlug(Raven_Bot* shooter, Vector2D target);
	void AddShotGunPellet(Raven_Bot* shooter, Vector2D target);
	void AddBolt(Raven_Bot* shooter, Vector2D target);

	//删除最后一个要添加的机器人
	void RemoveBot();

	// 如果 BoundingRadius 大小的机器人在不撞到世界几何体的情况下无法从 A 移动到 B，则返回 true
	bool isPathObstructed(Vector2D A, Vector2D B, double BoundingRadius = 0)const;

	//返回指向给定机器人视野中机器人的指针向量
	std::vector<Raven_Bot*> GetAllBotsInFOV(const Raven_Bot* pBot)const;

	//如果第二个机器人没有被墙壁阻挡并且在第一个的视野中，则返回真。
	bool        isSecondVisibleToFirst(const Raven_Bot* pFirst, const Raven_Bot* pSecond)const;

	//如果 A 和 B 之间的光线没有被遮挡，则返回 true。
	bool        isLOSOkay(Vector2D A, Vector2D B)const;

	//从给定的原点开始并沿 Heading 方向移动此方法返回到最近墙的距离
	double       GetDistanceToClosestWall(Vector2D Origin, Vector2D Heading)const;

	//返回触发指定ID门的最近的可见开关的位置
	Vector2D GetPosOfClosestSwitch(Vector2D botPos, unsigned int doorID)const;

	//给定地图上的一个位置，此方法返回找到的机器人及其在该位置的边界半径。如果该位置没有机器人，则该方法返回 NULL
	Raven_Bot* GetBotAtPosition(Vector2D CursorPos)const;

	void        TogglePause() { m_bPaused = !m_bPaused; }

	//当用户单击鼠标右键时调用此方法。 该方法检查光标下方是否有机器人。 
	//如果是这样，机器人将被记录为已选中。如果光标不在机器人上方，则任何选定的机器人将尝试移动到该位置。
	void        ClickRightMouseButton(POINTS p);

	//当用户单击鼠标左键时调用此方法。 如果有一个被附身的机器人，这会发射武器，否则什么都不做
	void        ClickLeftMouseButton(POINTS p);

	//当被调用时将从用户控制中释放任何拥有的机器人
	void        ExorciseAnyPossessedBot();

	//如果拥有机器人，则轮询键盘以获取用户输入并适当调用任何相关的机器人方法
	void        GetPlayerInput()const;
	Raven_Bot* PossessedBot()const { return m_pSelectedBot; }
	void        ChangeWeaponOfPossessedBot(unsigned int weapon)const;

	const Raven_Map* const                   GetMap()const { return m_pMap; }
	Raven_Map* const                         GetMap() { return m_pMap; }
	const std::list<Raven_Bot*>& GetAllBots()const { return m_Bots; }
	PathManager<Raven_PathPlanner>* const    GetPathManager() { return m_pPathManager; }
	int                                      GetNumBots()const { return m_Bots.size(); }

	void  TagRaven_BotsWithinViewRange(BaseGameEntity* pRaven_Bot, double range)
	{
		TagNeighbors(pRaven_Bot, m_Bots, range);
	}
};

#endif