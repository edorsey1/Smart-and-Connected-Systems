# Install script for directory: C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/adc")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/soc/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/log/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/heap/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/xtensa-debug-module/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/app_trace/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/freertos/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/vfs/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/newlib/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/esp_ringbuf/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/driver/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/esp_event/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/ethernet/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/lwip/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/tcpip_adapter/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/partition_table/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/app_update/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/spi_flash/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/mbedtls/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/micro-ecc/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/bootloader_support/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/nvs_flash/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/pthread/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/smartconfig_ack/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/wpa_supplicant/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/esp32/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/cxx/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/asio/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/jsmn/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/aws_iot/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/bootloader/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/bt/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/coap/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/console/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/nghttp/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/esp-tls/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/esp_adc_cal/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/tcp_transport/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/esp_http_client/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/esp_http_server/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/esp_https_ota/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/esptool_py/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/expat/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/wear_levelling/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/sdmmc/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/fatfs/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/freemodbus/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/idf_test/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/json/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/libsodium/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/mdns/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/mqtt/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/openssl/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/protobuf-c/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/protocomm/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/spiffs/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/ulp/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/wifi_provisioning/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/main/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/15-battery/code/adc/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
