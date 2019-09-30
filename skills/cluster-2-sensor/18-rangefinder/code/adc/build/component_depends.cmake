# Component requirements generated by expand_requirements.cmake

set(BUILD_COMPONENTS soc;log;heap;xtensa-debug-module;app_trace;freertos;vfs;newlib;esp_ringbuf;driver;esp_event;ethernet;lwip;tcpip_adapter;partition_table;app_update;spi_flash;mbedtls;micro-ecc;bootloader_support;nvs_flash;pthread;smartconfig_ack;wpa_supplicant;esp32;cxx;asio;jsmn;aws_iot;bootloader;bt;coap;console;nghttp;esp-tls;esp_adc_cal;tcp_transport;esp_http_client;esp_http_server;esp_https_ota;esptool_py;expat;wear_levelling;sdmmc;fatfs;freemodbus;idf_test;json;libsodium;mdns;mqtt;openssl;protobuf-c;protocomm;spiffs;ulp;wifi_provisioning;main)
set(BUILD_COMPONENT_PATHS C:/Users/erind/OneDrive/Desktop/esp-idf/components/soc;C:/Users/erind/OneDrive/Desktop/esp-idf/components/log;C:/Users/erind/OneDrive/Desktop/esp-idf/components/heap;C:/Users/erind/OneDrive/Desktop/esp-idf/components/xtensa-debug-module;C:/Users/erind/OneDrive/Desktop/esp-idf/components/app_trace;C:/Users/erind/OneDrive/Desktop/esp-idf/components/freertos;C:/Users/erind/OneDrive/Desktop/esp-idf/components/vfs;C:/Users/erind/OneDrive/Desktop/esp-idf/components/newlib;C:/Users/erind/OneDrive/Desktop/esp-idf/components/esp_ringbuf;C:/Users/erind/OneDrive/Desktop/esp-idf/components/driver;C:/Users/erind/OneDrive/Desktop/esp-idf/components/esp_event;C:/Users/erind/OneDrive/Desktop/esp-idf/components/ethernet;C:/Users/erind/OneDrive/Desktop/esp-idf/components/lwip;C:/Users/erind/OneDrive/Desktop/esp-idf/components/tcpip_adapter;C:/Users/erind/OneDrive/Desktop/esp-idf/components/partition_table;C:/Users/erind/OneDrive/Desktop/esp-idf/components/app_update;C:/Users/erind/OneDrive/Desktop/esp-idf/components/spi_flash;C:/Users/erind/OneDrive/Desktop/esp-idf/components/mbedtls;C:/Users/erind/OneDrive/Desktop/esp-idf/components/micro-ecc;C:/Users/erind/OneDrive/Desktop/esp-idf/components/bootloader_support;C:/Users/erind/OneDrive/Desktop/esp-idf/components/nvs_flash;C:/Users/erind/OneDrive/Desktop/esp-idf/components/pthread;C:/Users/erind/OneDrive/Desktop/esp-idf/components/smartconfig_ack;C:/Users/erind/OneDrive/Desktop/esp-idf/components/wpa_supplicant;C:/Users/erind/OneDrive/Desktop/esp-idf/components/esp32;C:/Users/erind/OneDrive/Desktop/esp-idf/components/cxx;C:/Users/erind/OneDrive/Desktop/esp-idf/components/asio;C:/Users/erind/OneDrive/Desktop/esp-idf/components/jsmn;C:/Users/erind/OneDrive/Desktop/esp-idf/components/aws_iot;C:/Users/erind/OneDrive/Desktop/esp-idf/components/bootloader;C:/Users/erind/OneDrive/Desktop/esp-idf/components/bt;C:/Users/erind/OneDrive/Desktop/esp-idf/components/coap;C:/Users/erind/OneDrive/Desktop/esp-idf/components/console;C:/Users/erind/OneDrive/Desktop/esp-idf/components/nghttp;C:/Users/erind/OneDrive/Desktop/esp-idf/components/esp-tls;C:/Users/erind/OneDrive/Desktop/esp-idf/components/esp_adc_cal;C:/Users/erind/OneDrive/Desktop/esp-idf/components/tcp_transport;C:/Users/erind/OneDrive/Desktop/esp-idf/components/esp_http_client;C:/Users/erind/OneDrive/Desktop/esp-idf/components/esp_http_server;C:/Users/erind/OneDrive/Desktop/esp-idf/components/esp_https_ota;C:/Users/erind/OneDrive/Desktop/esp-idf/components/esptool_py;C:/Users/erind/OneDrive/Desktop/esp-idf/components/expat;C:/Users/erind/OneDrive/Desktop/esp-idf/components/wear_levelling;C:/Users/erind/OneDrive/Desktop/esp-idf/components/sdmmc;C:/Users/erind/OneDrive/Desktop/esp-idf/components/fatfs;C:/Users/erind/OneDrive/Desktop/esp-idf/components/freemodbus;C:/Users/erind/OneDrive/Desktop/esp-idf/components/idf_test;C:/Users/erind/OneDrive/Desktop/esp-idf/components/json;C:/Users/erind/OneDrive/Desktop/esp-idf/components/libsodium;C:/Users/erind/OneDrive/Desktop/esp-idf/components/mdns;C:/Users/erind/OneDrive/Desktop/esp-idf/components/mqtt;C:/Users/erind/OneDrive/Desktop/esp-idf/components/openssl;C:/Users/erind/OneDrive/Desktop/esp-idf/components/protobuf-c;C:/Users/erind/OneDrive/Desktop/esp-idf/components/protocomm;C:/Users/erind/OneDrive/Desktop/esp-idf/components/spiffs;C:/Users/erind/OneDrive/Desktop/esp-idf/components/ulp;C:/Users/erind/OneDrive/Desktop/esp-idf/components/wifi_provisioning;C:/Users/erind/Documents/Cpp/EC444/Dorsey-Erin/skills/cluster-2-sensor/18-rangefinder/code/adc/main)
set(BUILD_TEST_COMPONENTS )
set(BUILD_TEST_COMPONENT_PATHS )

# get_component_requirements: Generated function to read the dependencies of a given component.
#
# Parameters:
# - component: Name of component
# - var_requires: output variable name. Set to recursively expanded COMPONENT_REQUIRES 
#   for this component.
# - var_private_requires: output variable name. Set to recursively expanded COMPONENT_PRIV_REQUIRES 
#   for this component.
#
# Throws a fatal error if 'componeont' is not found (indicates a build system problem).
#
function(get_component_requirements component var_requires var_private_requires)
  if("${component}" STREQUAL "soc")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "log")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "heap")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "xtensa-debug-module")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "app_trace")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "xtensa-debug-module" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "freertos")
    set(${var_requires} "app_trace" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "vfs")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "newlib")
    set(${var_requires} "vfs" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "esp_ringbuf")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "driver")
    set(${var_requires} "esp_ringbuf" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "esp_event")
    set(${var_requires} "log" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "ethernet")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "tcpip_adapter;esp_event" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "lwip")
    set(${var_requires} "vfs" PARENT_SCOPE)
    set(${var_private_requires} "ethernet;tcpip_adapter" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "tcpip_adapter")
    set(${var_requires} "lwip" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "partition_table")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "app_update")
    set(${var_requires} "spi_flash;partition_table" PARENT_SCOPE)
    set(${var_private_requires} "bootloader_support" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "spi_flash")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "bootloader_support;app_update" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "mbedtls")
    set(${var_requires} "lwip" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "micro-ecc")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "bootloader_support")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "spi_flash;mbedtls;micro-ecc" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "nvs_flash")
    set(${var_requires} "spi_flash;mbedtls" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "pthread")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "smartconfig_ack")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "lwip;tcpip_adapter" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "wpa_supplicant")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "mbedtls" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "esp32")
    set(${var_requires} "driver;tcpip_adapter;esp_event" PARENT_SCOPE)
    set(${var_private_requires} "app_trace;bootloader_support;ethernet;log;mbedtls;nvs_flash;pthread;smartconfig_ack;spi_flash;vfs;wpa_supplicant;xtensa-debug-module" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "cxx")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "asio")
    set(${var_requires} "lwip" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "jsmn")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "aws_iot")
    set(${var_requires} "mbedtls" PARENT_SCOPE)
    set(${var_private_requires} "jsmn" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "bootloader")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "bt")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "nvs_flash" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "coap")
    set(${var_requires} "lwip" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "console")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "nghttp")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "esp-tls")
    set(${var_requires} "mbedtls" PARENT_SCOPE)
    set(${var_private_requires} "lwip;nghttp" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "esp_adc_cal")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "tcp_transport")
    set(${var_requires} "lwip;esp-tls" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "esp_http_client")
    set(${var_requires} "nghttp" PARENT_SCOPE)
    set(${var_private_requires} "mbedtls;lwip;esp-tls;tcp_transport" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "esp_http_server")
    set(${var_requires} "nghttp" PARENT_SCOPE)
    set(${var_private_requires} "lwip" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "esp_https_ota")
    set(${var_requires} "esp_http_client" PARENT_SCOPE)
    set(${var_private_requires} "log;app_update" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "esptool_py")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "expat")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "wear_levelling")
    set(${var_requires} "spi_flash" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "sdmmc")
    set(${var_requires} "driver" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "fatfs")
    set(${var_requires} "wear_levelling;sdmmc" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "freemodbus")
    set(${var_requires} "driver" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "idf_test")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "json")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "libsodium")
    set(${var_requires} "mbedtls" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "mdns")
    set(${var_requires} "lwip;mbedtls;console;tcpip_adapter" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "mqtt")
    set(${var_requires} "lwip;nghttp;mbedtls;tcp_transport" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "openssl")
    set(${var_requires} "mbedtls" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "protobuf-c")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "protocomm")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "protobuf-c;mbedtls;console;esp_http_server;bt" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "spiffs")
    set(${var_requires} "spi_flash" PARENT_SCOPE)
    set(${var_private_requires} "bootloader_support" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "ulp")
    set(${var_requires} "" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "wifi_provisioning")
    set(${var_requires} "lwip" PARENT_SCOPE)
    set(${var_private_requires} "protobuf-c;protocomm" PARENT_SCOPE)
    return()
  endif()
  if("${component}" STREQUAL "main")
    set(${var_requires} "app_trace;app_update;asio;aws_iot;bootloader;bootloader_support;bt;coap;console;cxx;driver;esp-tls;esp32;esp_adc_cal;esp_event;esp_http_client;esp_http_server;esp_https_ota;esp_ringbuf;esptool_py;ethernet;expat;fatfs;freemodbus;freertos;heap;idf_test;jsmn;json;libsodium;log;lwip;mbedtls;mdns;micro-ecc;mqtt;newlib;nghttp;nvs_flash;openssl;partition_table;protobuf-c;protocomm;pthread;sdmmc;smartconfig_ack;soc;spi_flash;spiffs;tcp_transport;tcpip_adapter;ulp;vfs;wear_levelling;wifi_provisioning;wpa_supplicant;xtensa-debug-module" PARENT_SCOPE)
    set(${var_private_requires} "" PARENT_SCOPE)
    return()
  endif()
  message(FATAL_ERROR "Component not found: ${component}")
endfunction()
