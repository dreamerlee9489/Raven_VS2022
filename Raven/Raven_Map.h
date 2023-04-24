#ifndef RAVEN_MAP_H
#define RAVEN_MAP_H
#pragma warning (disable:4786)
//-------------------------------------------- ------------------------------
//
// 名称：Raven_Map.h
//
// 作者：Mat Buckland (www.ai-junkie.com)
//
// Desc: 此类创建并存储构成 Raven 游戏环境的所有实体。 （墙壁、机器人、健康等）
//
// 它可以读取 Raven 地图编辑器文件并重新创建必要的几何图形。
//-------------------------------------------- ------------------------------
#include <vector>
#include <string>
#include <list>
#include "graph/SparseGraph.h"
#include "2d/Wall2D.h"
#include "triggers/Trigger.h"
#include "Raven_Bot.h"
#include "Graph/GraphEdgeTypes.h"
#include "Graph/GraphNodeTypes.h"
#include "misc/CellSpacePartition.h"
#include "triggers/TriggerSystem.h"

class BaseGameEntity;
class Raven_Door;


class Raven_Map
{
public:

  typedef NavGraphNode<Trigger<Raven_Bot>*>         GraphNode;
  typedef SparseGraph<GraphNode, NavGraphEdge>      NavGraph;
  typedef CellSpacePartition<NavGraph::NodeType*>   CellSpace;

  typedef Trigger<Raven_Bot>                        TriggerType;
  typedef TriggerSystem<TriggerType>                TriggerSystem;
  
private:
 
  //构成当前地图建筑的墙。
  std::vector<Wall2D*>                m_Walls;

  //触发器是定义空间区域的对象。 当乌鸦机器人进入该区域时，它会“触发”一个事件。 该事件可能是任何事情，从增加机器人的健康到开门或请求搭便车。
  TriggerSystem                      m_TriggerSystem;    

  //这包含许多生成位置。 当机器人被实例化时，它将出现在从该向量中随机选择的点
  std::vector<Vector2D>              m_SpawnPoints;

  //一张地图可能包含多个滑动门。
  std::vector<Raven_Door*>           m_Doors;
 
  //这张地图附带的导航图
  NavGraph*                          m_pNavGraph;  

  //图形节点将被分区以实现快速查找
  CellSpace*                        m_pSpacePartition;

  //单元格空间分区在寻找邻居时使用的搜索半径的大小
  double                             m_dCellSpaceNeighborhoodRange;

  int m_iSizeX;
  int m_iSizeY;
  
  void  PartitionNavGraph();

  //这将保存一个预先计算好的从一个节点到任何其他节点的成本查找表。
  std::vector<std::vector<double> >  m_PathCosts;

  //从文件加载的流构造函数
  void AddWall(std::ifstream& in);
  void AddSpawnPoint(std::ifstream& in);
  void AddHealth_Giver(std::ifstream& in);
  void AddWeapon_Giver(int type_of_weapon, std::ifstream& in);
  void AddDoor(std::ifstream& in);
  void AddDoorTrigger(std::ifstream& in);

  void Clear();
  
public:
  
  Raven_Map();  
  ~Raven_Map();

  void Render();

  //从文件加载环境
  bool LoadMap(const std::string& FileName); 

  //添加一堵墙并返回指向该墙的指针。 （此方法可用于门等对象为环境添加墙）
  Wall2D* AddWall(Vector2D from, Vector2D to);

  void    AddSoundTrigger(Raven_Bot* pSoundSource, double range);

  double   CalculateCostToTravelBetweenNodes(int nd1, int nd2)const;

  //返回随机选择的图节点的位置
  Vector2D GetRandomNodeLocation()const;
  
  
  void  UpdateTriggerSystem(std::list<Raven_Bot*>& bots);

  const Raven_Map::TriggerSystem::TriggerList&  GetTriggers()const{return m_TriggerSystem.GetTriggers();}
  const std::vector<Wall2D*>&        GetWalls()const{return m_Walls;}
  NavGraph&                          GetNavGraph()const{return *m_pNavGraph;}
  std::vector<Raven_Door*>&          GetDoors(){return m_Doors;}
  const std::vector<Vector2D>&       GetSpawnPoints()const{return m_SpawnPoints;}
  CellSpace* const                   GetCellSpace()const{return m_pSpacePartition;}
  Vector2D                           GetRandomSpawnPoint(){return m_SpawnPoints[RandInt(0,m_SpawnPoints.size()-1)];}
  int                                GetSizeX()const{return m_iSizeX;}
  int                                GetSizeY()const{return m_iSizeY;}
  int                                GetMaxDimension()const{return Maximum(m_iSizeX, m_iSizeY);}
  double                             GetCellSpaceNeighborhoodRange()const{return m_dCellSpaceNeighborhoodRange;}
};



#endif