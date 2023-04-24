#ifndef TRIGGER_REGION_H
#define TRIGGER_REGION_H
//-------------------------------------------- ------------------------------
//
// 名称：TriggerRegion.h
//
// 作者：Mat Buckland (www.ai-junkie.com)
//
// Desc: 定义触发器影响区域的类。 TriggerRegion 有一个方法 isTouching，如果给定位置在区域内，该方法返回 true
//-------------------------------------------- ------------------------------
#include "2d/Vector2d.h"
#include "2d/InvertedAABBox2D.h"

class TriggerRegion
{
public:

	virtual ~TriggerRegion() {}

	//如果给定大小和位置的实体与触发区域相交，则返回 true。
	virtual bool isTouching(Vector2D EntityPos, double EntityRadius)const = 0;
};


//--------------------------- TriggerRegion_Circle ----------------------------
//
//  定义圆形影响区域的类
//-----------------------------------------------------------------------------
class TriggerRegion_Circle : public TriggerRegion
{
private:

	//区域中心
	Vector2D m_vPos;

	//区域的半径
	double    m_dRadius;

public:

	TriggerRegion_Circle(Vector2D pos,
		double    radius) :m_dRadius(radius),
		m_vPos(pos)
	{}

	bool isTouching(Vector2D pos, double EntityRadius)const
	{
		return Vec2DDistanceSq(m_vPos, pos) < (EntityRadius + m_dRadius) * (EntityRadius + m_dRadius);
	}
};


//--------------------------- TriggerRegion_Rectangle -------------------------
//
//  定义矩形影响区域的类
//-----------------------------------------------------------------------------
class TriggerRegion_Rectangle : public TriggerRegion
{
private:

	InvertedAABBox2D* m_pTrigger;

public:

	TriggerRegion_Rectangle(Vector2D TopLeft,
		Vector2D BottomRight)
	{
		m_pTrigger = new InvertedAABBox2D(TopLeft, BottomRight);
	}

	~TriggerRegion_Rectangle() { delete m_pTrigger; }

	//无需进行准确（且昂贵）的圆 v 矩形相交测试。 相反，我们将只用矩形测试给定圆的边界框。
	bool isTouching(Vector2D pos, double EntityRadius)const
	{
		InvertedAABBox2D Box(Vector2D(pos.x - EntityRadius, pos.y - EntityRadius),
			Vector2D(pos.x + EntityRadius, pos.y + EntityRadius));

		return Box.isOverlappedWith(*m_pTrigger);
	}
};


#endif