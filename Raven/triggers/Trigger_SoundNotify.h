#ifndef TRIGGER_SOUNDNOTIFY_H
#define TRIGGER_SOUNDNOTIFY_H
#pragma warning (disable:4786)
//-------------------------------------------- ------------------------------
//
// 名称：Trigger_SoundNotify.h
//
// 作者：马特·巴克兰
//
// Desc: 每当代理发出声音时——例如当武器开火时，此触发器可用于通知其他机器人该事件。
//
// 这种类型的触发器有一个圆形的触发区域和 1 update-step 的生命周期
//
//-------------------------------------------- ------------------------------
#include "Triggers/Trigger_LimitedLifetime.h"
#include "../Raven_Bot.h"



class Trigger_SoundNotify : public Trigger_LimitedLifetime<Raven_Bot>
{
private:

	//指向发出声音的机器人的指针
	Raven_Bot* m_pSoundSource;

public:

	Trigger_SoundNotify(Raven_Bot* source, double range);


	void  Try(Raven_Bot*);

	void  Render() {}

};




#endif