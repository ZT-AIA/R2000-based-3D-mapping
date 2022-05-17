#ifndef MSG_TYPE_H
#define MSG_TYPE_H

#include <stdint.h>

/** Some useful macros or enumerations **/
#define ARRAY_LEN(a) (sizeof(a)/sizeof(*a))
typedef enum{False, True}Bool_t;

#pragma pack(push)
#pragma pack(4)		// Confirms 4Bytes alignment 

/**
 * Message head typedef.
 * You can find detailed definations about msg_type 
 * and type_dscr here(msg_num is reserved for future).
 */
struct msg_head
{
	uint16_t msg_sn;	// message serial number
	uint8_t  msg_type;
	uint8_t  type_dscr;	// further description of msg_type
};

/* Message Types */
enum msg_type
{
	SCAN_START = 0x00,
	SCAN_STOP,
	MOTOR_RUN,
	MOTOR_STOP,
	DEV_RST,
	MOTOR_SPD_SET,
	HAND_SHAKE = 0x3f,
	POINT_CLOUD = 0x81,
	NAV_MSG,
	HNAV_MSG
};

/* Message Type Descriptions */
enum msg_type_dscr
{
	MSG_FS 		= 0x01,
	MSG_MS 		= 0x02,
	MSG_LS 		= 0x04,
	MSG_ERR		= 0x6a,
	MSG_ACK		= 0xff
};

/**
 * Define the point cloud message.
 * You can config the parameters here.
 */
#define P_MSG_SIZE	80

/* Point Typedef */
struct point_type
{
	float horizontal_angle;
	float vertical_angle;
	float distance;
	float reflectance;
};

/* Point Cloud Message Typedef */
struct point_msg
{
	struct msg_head head;
	struct point_type point[P_MSG_SIZE];
};

#define H_NAV_MSG_SIZE	128
/* Hybrid_navigation Message Typedef */
struct hybrid_nav_msg
{
	struct msg_head head;
	int16_t left_position;
	int16_t right_position;
	uint8_t hybrid_nav_data[H_NAV_MSG_SIZE];
};

/**
 * Define the navigation message.
 * You can config the parameters here.
 */
#define NAV_MSG_SIZE	380

/* Navigation Message Typedef */
struct nav_msg
{
	struct msg_head head;
	uint8_t nav_data[NAV_MSG_SIZE];
};

/**
 * Define the video message.
 * You can config the parameters here.
 */
/* ... */

#pragma pack(pop)

#endif
