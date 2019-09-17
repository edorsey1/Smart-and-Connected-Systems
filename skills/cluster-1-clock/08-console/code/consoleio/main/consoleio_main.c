#include <stdio.h>
#include <string.h>
#include "driver/uart.h"
#include "esp_vfs_dev.h"
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"

#define BLINK_GPIO 13

void blink()
{
  gpio_pad_select_gpio(BLINK_GPIO);
  /* Set the GPIO as a push/pull output */
  gpio_set_direction(BLINK_GPIO, GPIO_MODE_OUTPUT);
  /* Blink on (output high) */
  gpio_set_level(BLINK_GPIO, 1);
  vTaskDelay(1000 / portTICK_PERIOD_MS);
  /* Blink off (output low) */
  gpio_set_level(BLINK_GPIO, 0);
  vTaskDelay(1000 / portTICK_PERIOD_MS);
}

void convert(int n)
{
    char hexNum[100];

    int i = 0;
    while(n!=0)
    {
        int temp  = 0;

        temp = n % 16;

        if(temp < 10)
        {
            hexNum[i] = temp + 48;
            i++;
        }
        else
        {
            hexNum[i] = temp + 55;
            i++;
        }

        n = n/16;
    }

    for(int j=i-1; j>=0; j--)
        printf("%c", hexNum[j]);

    printf("\n");
}

void app_main()
{

    /* Install UART driver for interrupt-driven reads and writes */
    ESP_ERROR_CHECK( uart_driver_install(UART_NUM_0,
      256, 0, 0, NULL, 0) );

    /* Tell VFS to use UART driver */
    esp_vfs_dev_uart_use_driver(UART_NUM_0);

    char str[20];
    int num = 0;
    int mode = 1;

    while(1)
    {
      if (mode == 1)
      {
        printf("toggle mode\n");
        while (mode == 1)
        {

          printf("Read: ");
          gets(str);
          if (str[0] != '\0')
            printf("%s\n", str);

          if (strcmp(str,"t") == 0)
          {
              blink();
          }
          else if (strcmp(str,"s") == 0)
          {
            mode = 2;
          }
        }

      }
      else if (mode == 2)
      {
        printf("echo mode\n");
        while (mode == 2)
        {
          printf("echo: ");
          gets(str);
          if (str[0] != '\0')
            printf("%s\n", str);

          if (strcmp(str,"s") == 0)
          {
            mode = 3;
          }
        }
      }
      else if (mode == 3)
      {
        printf("echo dec to hex mode\n");
        while (mode == 3)
        {
          printf("Hex: ");
          gets(str);
          if (str[0] != '\0')
            printf("%s\n", str);
          num = atoi(str);
          convert(num);

          if (strcmp(str,"s") == 0)
          {
            mode = 1;
          }
        }
      }

      vTaskDelay(50 / portTICK_RATE_MS);
    }
}
