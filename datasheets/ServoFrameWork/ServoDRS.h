/*!
 * This file is part of SmartServoFramework.
 * Copyright (c) 2014, INRIA, All rights reserved.
 *
 * SmartServoFramework is free software; you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with this software. If not, see <http://www.gnu.org/licenses/lgpl-3.0.txt>.
 *
 * \file ServoDRS.h
 * \date 25/08/2014
 * \author Emeric Grange <emeric.grange@gmail.com>
 */

#ifndef SERVO_DRS_H
#define SERVO_DRS_H

#include "ServoHerkuleX.h"

#include <string>
#include <map>
#include <mutex>

/** \addtogroup ManagedAPIs
 *  @{
 */

/*!
 * \brief DRS servo serie.
 * \ref ServoHerkuleX
 * \ref DRS0101_control_table
 * \ref DRS0x01_control_table
 * \ref DRS0x02_control_table
 *
 * More informations about them on Dongbu Robot website:
 * - http://hovis.co.kr/guide/herkulex_eng.html
 * - http://www.dongburobot.com/jsp/cms/view.jsp?code=100782
 */
class ServoDRS: public ServoHerkuleX
{
public:
    ServoDRS(int herkulex_id, int herkulex_model, int control_mode = 0);
    ~ServoDRS();
};

/** @}*/

#endif // SERVO_DRS_H
