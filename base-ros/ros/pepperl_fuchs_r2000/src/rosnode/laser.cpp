#include <pepperl_fuchs_r2000/r2000_driver.h>

int main(int argc, char **argv)
{
  bool success;

  pepperl_fuchs::R2000Driver driver;
  success = driver.connect("192.168.1.20"); // Replace IP
  success = driver.setScanFrequency(35);     // Set scanner frequency in the range [10;50]
  success = driver.setSamplesPerScan(3600);  // Set samples per scan in the range [72,25200] (valid values are listed in manual)

  auto params = driver.getParameters();      // Get all parameter values as std::map<string, string>
  for( auto key_value : params )
  { Do something with the parameter values }

  success = driver.startCapturingUDP();      // Notice: startCapturingTCP() also exists

  while(true)
  {
      pepperl_fuchs::ScanData  scandata = driver.getFullScan(); // Do something with:
      scandata.headers;                                         // headers,
      scandata.distance_data;                                   // distances and
      scandata.amplitude_data;                                  // amplitudes
  }

  driver.stopCapturing();
  driver.disconnect();
}
