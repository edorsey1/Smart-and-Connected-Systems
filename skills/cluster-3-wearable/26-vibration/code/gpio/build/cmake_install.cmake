# Install script for directory: C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/gpio")
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
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/soc/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/log/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/heap/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/xtensa-debug-module/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/app_trace/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/freertos/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/vfs/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/newlib/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/esp_ringbuf/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/driver/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/esp_event/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/ethernet/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/lwip/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/tcpip_adapter/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/partition_table/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/app_update/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/spi_flash/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/mbedtls/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/micro-ecc/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/bootloader_support/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/nvs_flash/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/pthread/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/smartconfig_ack/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/wpa_supplicant/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/esp32/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/cxx/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/asio/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/jsmn/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/aws_iot/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/bootloader/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/bt/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/coap/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/console/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/nghttp/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/esp-tls/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/esp_adc_cal/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/tcp_transport/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/esp_http_client/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/esp_http_server/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/esp_https_ota/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/esptool_py/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/expat/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/wear_levelling/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/sdmmc/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/fatfs/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/freemodbus/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/idf_test/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/json/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/libsodium/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/mdns/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/mqtt/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/openssl/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/protobuf-c/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/protocomm/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/spiffs/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/ulp/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/wifi_provisioning/cmake_install.cmake")
  include("C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/main/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-3-wearable/26-vibration/code/gpio/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
