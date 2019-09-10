// This is a program to make 4 LEDs count up in binary
/* Blink Example

   This example code is in the Public Domain (or CC0 licensed, at your option.)

   Unless required by applicable law or agreed to in writing, this
   software is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR
   CONDITIONS OF ANY KIND, either express or implied.
*/
#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"

/* Can use project configuration menu (idf.py menuconfig) to choose the GPIO to blink,
   or you can edit the following line and set a number here.
*/
#define BLINK_BLUE 12
#define BLINK_RED 27
#define BLINK_GREEN 33
#define BLINK_YELLOW 15

void app_main(void)
{
    gpio_pad_select_gpio(BLINK_BLUE);
    gpio_pad_select_gpio(BLINK_RED);
    gpio_pad_select_gpio(BLINK_GREEN);
    gpio_pad_select_gpio(BLINK_YELLOW);
    /* Set the GPIO as a push/pull output */
    gpio_set_direction(BLINK_BLUE, GPIO_MODE_OUTPUT);
    gpio_set_direction(BLINK_RED, GPIO_MODE_OUTPUT);
    gpio_set_direction(BLINK_GREEN, GPIO_MODE_OUTPUT);
    gpio_set_direction(BLINK_YELLOW, GPIO_MODE_OUTPUT);
    while(1) {
	printf("0");
        gpio_set_level(BLINK_BLUE, 0);
        gpio_set_level(BLINK_RED, 0);
        gpio_set_level(BLINK_GREEN, 0);
        gpio_set_level(BLINK_YELLOW, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
  printf("1");
        gpio_set_level(BLINK_BLUE, 0);
        gpio_set_level(BLINK_RED, 0);
        gpio_set_level(BLINK_GREEN, 0);
        gpio_set_level(BLINK_YELLOW, 1);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
  printf("2");
        gpio_set_level(BLINK_BLUE, 0);
        gpio_set_level(BLINK_RED, 0);
        gpio_set_level(BLINK_GREEN, 1);
        gpio_set_level(BLINK_YELLOW, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
  printf("3");
        gpio_set_level(BLINK_BLUE, 0);
        gpio_set_level(BLINK_RED, 0);
        gpio_set_level(BLINK_GREEN, 1);
        gpio_set_level(BLINK_YELLOW, 1);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
  printf("4");
        gpio_set_level(BLINK_BLUE, 0);
        gpio_set_level(BLINK_RED, 1);
        gpio_set_level(BLINK_GREEN, 0);
        gpio_set_level(BLINK_YELLOW, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
  printf("5");
        gpio_set_level(BLINK_BLUE, 0);
        gpio_set_level(BLINK_RED, 1);
        gpio_set_level(BLINK_GREEN, 0);
        gpio_set_level(BLINK_YELLOW, 1);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
  printf("6");
        gpio_set_level(BLINK_BLUE, 0);
        gpio_set_level(BLINK_RED, 1);
        gpio_set_level(BLINK_GREEN, 1);
        gpio_set_level(BLINK_YELLOW, 0);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
  printf("7");
        gpio_set_level(BLINK_BLUE, 0);
        gpio_set_level(BLINK_RED, 1);
        gpio_set_level(BLINK_GREEN, 1);
        gpio_set_level(BLINK_YELLOW, 1);
        vTaskDelay(1000 / portTICK_PERIOD_MS);
        printf("8");
              gpio_set_level(BLINK_BLUE, 1);
              gpio_set_level(BLINK_RED, 0);
              gpio_set_level(BLINK_GREEN, 0);
              gpio_set_level(BLINK_YELLOW, 0);
              vTaskDelay(1000 / portTICK_PERIOD_MS);
        printf("9");
              gpio_set_level(BLINK_BLUE, 1);
              gpio_set_level(BLINK_RED, 0);
              gpio_set_level(BLINK_GREEN, 0);
              gpio_set_level(BLINK_YELLOW, 1);
              vTaskDelay(1000 / portTICK_PERIOD_MS);
        printf("10");
              gpio_set_level(BLINK_BLUE, 1);
              gpio_set_level(BLINK_RED, 0);
              gpio_set_level(BLINK_GREEN, 1);
              gpio_set_level(BLINK_YELLOW, 0);
              vTaskDelay(1000 / portTICK_PERIOD_MS);
        printf("11");
              gpio_set_level(BLINK_BLUE, 1);
              gpio_set_level(BLINK_RED, 0);
              gpio_set_level(BLINK_GREEN, 1);
              gpio_set_level(BLINK_YELLOW, 1);
              vTaskDelay(1000 / portTICK_PERIOD_MS);
        printf("12");
              gpio_set_level(BLINK_BLUE, 1);
              gpio_set_level(BLINK_RED, 1);
              gpio_set_level(BLINK_GREEN, 0);
              gpio_set_level(BLINK_YELLOW, 0);
              vTaskDelay(1000 / portTICK_PERIOD_MS);
        printf("13");
              gpio_set_level(BLINK_BLUE, 1);
              gpio_set_level(BLINK_RED, 1);
              gpio_set_level(BLINK_GREEN, 0);
              gpio_set_level(BLINK_YELLOW, 1);
              vTaskDelay(1000 / portTICK_PERIOD_MS);
        printf("14");
              gpio_set_level(BLINK_BLUE, 1);
              gpio_set_level(BLINK_RED, 1);
              gpio_set_level(BLINK_GREEN, 1);
              gpio_set_level(BLINK_YELLOW, 0);
              vTaskDelay(1000 / portTICK_PERIOD_MS);
        printf("15");
              gpio_set_level(BLINK_BLUE, 1);
              gpio_set_level(BLINK_RED, 1);
              gpio_set_level(BLINK_GREEN, 1);
              gpio_set_level(BLINK_YELLOW, 1);
              vTaskDelay(1000 / portTICK_PERIOD_MS);

    }
}
