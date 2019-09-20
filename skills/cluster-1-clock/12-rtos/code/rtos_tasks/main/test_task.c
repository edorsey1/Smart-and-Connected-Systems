#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "sdkconfig.h"
#include "driver/uart.h"
#include "driver/i2c.h"
#include "esp_vfs_dev.h"

void init() {				// Convenient way to organize initialization
     printf("Initializing\n");   				// Do it in this sub
}

static void task_1()			// Define your first task here
{
  while(1){			// Or for( ;; )
    printf("Task1\n");		// Your task code here
  }
}

static void task_2()			// Define your second task here
{
  while(1){			// Or for( ;; )
    printf("Task2\n");		// Your task code here
  }
}

void app_main()
{
  init();				// Initialize stuff
  xTaskCreate(task_1, "task_1",1024*2, NULL, configMAX_PRIORITIES, NULL);
  xTaskCreate(task_2, "task_2",1024*2, NULL, configMAX_PRIORITIES-1, NULL);
}
