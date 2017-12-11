## Herkulex IDs

HerkuleX Servos are addressed with the so-called HerkuleX ID. Each command is accompagnied by this ID. It is set upfront with the [HerkuleX Manager](http://www.dongburobot.com/jsp/board/boardDown.jsp?bseq=6783). The convention for assigning the ID used is shown in this table. The strange numbering scheme is due to the fact that I replace the thigh servos in the middle of the project and did not want to re-programme all 20 servos.

|Limb              |  Servo type        | Formula          |  Leg 1 | Leg 2 | Leg 3 | leg 4 | leg 5 |
|:-----------------|:-------------------|:-----------------|:-------|:------|:------|:------|:------|
| Hip              | DRS 0101           | legNo*10 -10 + 1 | 01     | 11    | 12    | 13    | 14    |
| Thigh            | DRS 0401           | legNo + 100      | 100    | 101   | 102   | 103   | 104   |
| Knee             | DRS 0101           | legNo*10 - 10 + 4| 03     | 13    | 23    | 33    | 43    |
| Foot             | DRS 0201           | legNo*10 - 10 + 2| 02     | 12    | 22    | 32    | 42    |

## Herkulex servo control


There's a C++ [HerkuleX Arduino Library](http://robottini.altervista.org/dongbu-herkulex-arduino-library-2) to control Herkulex Servos. This library works on the Teensy as well. I enhanced this library by a couple of additional methods, to fit for the following purpose [Arduino Library](https://github.com/jochenalt/Pentapod-Code/tree/master/Cortex/utilities/Herkulex)

The first try to control 20 servos was quite disappointing, it took around 60ms to send all commands to the servos and to fetch the data from IMU and distance sensors. So, something dramatic had to happen. The solution was to fully leverage five serial lines of the Teensy and splitting all commands in a request and a response such that while waiting for a response another serial line can be fed with data. With that approach, a control frequency of 45 Hz became possible.

Commands to the servos are sent to the servos in rounds. In the first round, *move* requests are send to the hips of all legs, the second round does that for all thighs, etc (check [Controller::sendCommandToServos](https://github.com/jochenalt/Pentapod-Code/tree/master/Cortex/Controller.cpp). The 5<sup>th</sup> round sends distance request to the laser scanners, the 6.th round collects all responses. In the 7<sup>th</sup> round we request the status/voltage of one servo only. By that, we have the status of all servos after 20 loops, giving a status frequency of 45Hz/20 = 2.2Hz.

I enhanced the servo library to provide access to the servo's PID controller. Thing is, that the default PID controller has a very weak *P* factor, which makes the servo react kind of flexible to external force, but leads to a high latency when the IMU recognizes a change that needs to be compensated quickly. So, I increased the servos *P* and *I* factor a lot which made the servos stiffer (check [HerkulexServoDriver::setup](https://github.com/jochenalt/Pentapod-Code/tree/master/Cortex/HerkulexServoDrive.cpp)).
