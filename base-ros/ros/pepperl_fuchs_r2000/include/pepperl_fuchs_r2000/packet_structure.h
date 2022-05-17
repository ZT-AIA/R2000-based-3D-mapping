// Copyright (c) 2014, Pepperl+Fuchs GmbH, Mannheim
// Copyright (c) 2014, Denis Dillenberger
// All rights reserved.
//
// Use, modification, and distribution is subject to the
// 3-clause BSD license ("Revised BSD License",
// "New BSD License", or "Modified BSD License")
// You should have received a copy of this license
// in a file named COPYING or LICENSE.

#ifndef PACKET_STRUCTURE_H
#define PACKET_STRUCTURE_H
#include <cstdint>
#include <vector>

namespace pepperl_fuchs {

#pragma pack(1)
//ptp time//####################################
struct ntp64{
    int sec;//整数部分
    int nsec;//小数部分

    ntp64(){}
    ntp64(int _sec,int _nsec):sec(_sec),nsec(_nsec){}
    ntp64(ntp64 & other):sec(other.sec),nsec(other.nsec){}
    ntp64& operator=(const ntp64& other)
    {
        if(&other!=this)
        {
            sec=other.sec;
            nsec=other.nsec;
        }
        return *this;
    }

    double tosec()
    {
   	 return (double)sec+1e-9*(double)nsec;
    }

    static ntp64 tostamp(double time)
    {
    	int sec = time;
    	int nsec = (time-sec)*1e9;
    	ntp64 stamp(sec,nsec);
   	return stamp;
    }
};

//! \struct PacketHeader
//! \brief Header of a TCP or UDP data packet from the scanner
struct PacketHeader
{
    //! Magic bytes, must be  5C A2 (hex)
    std::uint16_t magic;

    //! Packet type, must be 43 00 (hex)
    std::uint16_t packet_type;

    //! Overall packet size (header+payload), 1404 bytes with maximum payload
    std::uint32_t packet_size;

    //! Header size, defaults to 60 bytes
    std::uint16_t header_size;

    //! Sequence for scan (incremented for every scan, starting with 0, overflows)
    std::uint16_t scan_number;

    //! Sequence number for packet (counting packets of a particular scan, starting with 1)
    std::uint16_t packet_number;

    //! Raw timestamp of internal clock in NTP time format
    //std::uint64_t timestamp_raw;//############################
    ntp64 timestamp_raw;//在本次数据包中首次接收到第一个点的时间戳

    //! With an external NTP server synced Timestamp  (currenty not available and and set to zero)
    //std::uint64_t timestamp_sync;//############################
    ntp64 timestamp_sync;

    //! Status flags
    std::uint32_t status_flags;

    //! Frequency of scan-head rotation in mHz (Milli-Hertz)
    std::uint32_t scan_frequency;

    //! Total number of scan points (samples) within complete scan
    std::uint16_t num_points_scan;

    //! Total number of scan points within this packet
    std::uint16_t num_points_packet;

    //! Index of first scan point within this packet
    std::uint16_t first_index;

    //! Absolute angle of first scan point within this packet in 1/10000°
    std::int32_t first_angle;

    //! Delta between two succeding scan points 1/10000°
    std::int32_t angular_increment;

    //! Output status
    std::int32_t output_status;

    //! Field status
    std::int32_t field_status;

    //! Possible padding to align header size to 32bit boundary
    //std::uint8 padding[0];
    //#####################################################
    //ntp64 iq_timestamp_raw;//在本次数据包中首次接收到第一个点的时间戳
    //ntp64 iq_timestamp_sync;

    //uint8_t  header_padding[];//padding
    //#########################################
    PacketHeader(){}
    PacketHeader(const PacketHeader& other)
    {
    	magic = other.magic;
    	packet_type = other.packet_type;
   	packet_size = other.packet_size;
    	header_size = other.header_size;
    	scan_number = other.scan_number;
    	packet_number = other.packet_number;
    	timestamp_raw = other.timestamp_raw;
    	timestamp_sync = other.timestamp_sync;
    	status_flags = other.status_flags;
    	scan_frequency = other.scan_frequency;
    	num_points_scan = other.num_points_scan;
    	num_points_packet = other.num_points_packet;
    	first_index = other.first_index;
    	first_angle = other.first_angle;
    	angular_increment = other.angular_increment;
    	output_status = other.output_status;
    	field_status = other.field_status;

    	//iq_timestamp_raw = other.iq_timestamp_raw;
    	//iq_timestamp_sync = other.iq_timestamp_sync;
    }

    PacketHeader& operator=(const PacketHeader& other)
    {
    	if(this!=&other)
    	{
        	magic = other.magic;
        	packet_type = other.packet_type;
        	packet_size = other.packet_size;
        	header_size = other.header_size;
        	scan_number = other.scan_number;
        	packet_number = other.packet_number;
        	timestamp_raw = other.timestamp_raw;
        	timestamp_sync = other.timestamp_sync;
        	status_flags = other.status_flags;
        	scan_frequency = other.scan_frequency;
        	num_points_scan = other.num_points_scan;
        	num_points_packet = other.num_points_packet;
        	first_index = other.first_index;
        	first_angle = other.first_angle;
        	angular_increment = other.angular_increment;
        	output_status = other.output_status;
        	field_status = other.field_status;

        	//iq_timestamp_raw = other.iq_timestamp_raw;
        	//iq_timestamp_sync = other.iq_timestamp_sync;
         }
    	return *this;
     }
};

//! \struct PacketTypeC
//! \brief Structure of a UDP or TCP data packet from the laserscanner
/*
struct PacketTypeC
{
    PacketHeader header;
    std::uint32_t distance_amplitude_payload; // distance 20 bit, amplitude 12 bit
};*/
//

struct PacketTypeA
{
    PacketHeader header;
    std::uint32_t distance_amplitude_payload; // distance 20 bit, amplitude 12 bit
};

#pragma pack()

//! \struct ScanData
//! \brief Normally contains one complete laserscan (a full rotation of the scanner head)
struct ScanData
{
    //! Distance data in polar form in millimeter
    std::vector<std::uint32_t> distance_data;

    //! Amplitude data in the range 32-4095, values lower than 32 indicate an error or undefined values
    std::vector<std::uint32_t> amplitude_data;

    //! Header received with the distance and amplitude data
    std::vector<PacketHeader> headers;

};

}

#endif // PACKET_STRUCTURE_H
