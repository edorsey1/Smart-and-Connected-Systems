#include <stdio.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/uart.h"
#include "driver/gpio.h"

/**
 * This is an example which echos any data it receives on UART1 back to the sender,
 * with hardware flow control turned off. It does not use UART driver event queue.
 *
 * - Port: UART1
 * - Receive (Rx) buffer: on
 * - Transmit (Tx) buffer: off
 * - Flow control: off
 * - Event queue: off
 * - Pin assignment: see defines below
 */

// define the four led pins
#define RED_LED 33
#define GREEN_LED 15
#define BLUE_LED 12
#define YELLOW_LED 14

#define ECHO_TEST_TXD  (GPIO_NUM_17)
#define ECHO_TEST_RXD  (GPIO_NUM_16)
#define ECHO_TEST_RTS  (UART_PIN_NO_CHANGE)
#define ECHO_TEST_CTS  (UART_PIN_NO_CHANGE)

#define BUF_SIZE (1024)

////////////////////////////////////////////////////////////////////////////////
// PID design pattern

// error, setpoint, measured_value, integral, error, dt, derivative, previous_error, Kp, output, Ki, Kd  ------ to be initialized
// previous_error, integral, error, integeral, derivative, output ------ safely assigned
// setpoint, measured_value, dt, Kp, Ki, Kd ------ to be assigned

// previous_error = 0
// integral = 0

// Initialize, Kp, Ki, Kd need modification
float Kp = 0.2;
float Ki = 0.015;
float Kd = 0.2;
int dt = 100; // in ms, other way to initialize?

float error = 0;
float previous_error = 0;
float setpoint = 0;
float measured_value = 0;
float integral = 0;
float derivative = 0;
float output = 0;

while(1)
{
  error = setpoint - measured_value
  integral = integral + error * dt
  derivative = (error - previous_error) / dt
  output = Kp * error + Ki * integral + Kd * derivative
  previous_error = error
  vTaskDelay(dt / portTICK_PERIOD_MS); //wait(dt)
}
////////////////////////////////////////////////////////////////////////////////

// cycle
// Defines ------ what to be defined??
#define
#define

// Flag for dt
int dt_complete = 0;

// Define timer interrupt handler
void IRAM_ATTR timer_isr()
{
    // Clear interrupt
    TIMERG0.int_clr_timers.t0 = 1;
    // Indicate timer has fired
    dt_complete = 1;
}

// Set up periodic timer for dt = 100ms
static void periodic_timer_init()
{
    // Basic parameters of the timer
    timer_config_t config;
    ...

    // register timer interrupt
    timer_init();

    // Timer's counter will initially start from value below
    timer_set_counter_value();

    // Configure the alarm value and the interrupt on alarm.
    timer_set_alarm_value();
    timer_enable_intr();
    timer_isr_register();

    // Start timer
    timer_start();
}

dt = 0;
previous_error = 0;		// Set up PID loop
integral = 0;

vod PID() {
 i ...

}

while(1){
	if dt_complete == 1 {
       PID();
       dt_complete = 0;
       // Re-enable alarm
       TIMERG0.hw_timer[TIMER_0].config.alarm_en = TIMER_ALARM_EN;
	}
}


////////////////////////////////////////////////////////////////////////////////

static void echo_task(void *arg)
{
    /* Configure parameters of an UART driver,
     * communication pins and install the driver */
    uart_config_t uart_config = {
        .baud_rate = 115200,
        .data_bits = UART_DATA_8_BITS,
        .parity    = UART_PARITY_DISABLE,
        .stop_bits = UART_STOP_BITS_1,
        .flow_ctrl = UART_HW_FLOWCTRL_DISABLE
    };
    uart_param_config(UART_NUM_1, &uart_config);
    uart_set_pin(UART_NUM_1, ECHO_TEST_TXD, ECHO_TEST_RXD, ECHO_TEST_RTS, ECHO_TEST_CTS);
    uart_driver_install(UART_NUM_1, BUF_SIZE * 2, 0, 0, NULL, 0);

    // Configure a temporary buffer for the incoming data
    uint8_t *data = (uint8_t *) malloc(BUF_SIZE);

    while (1) {
        // Read data from the UART
        int len = uart_read_bytes(UART_NUM_1, data, BUF_SIZE, 20 / portTICK_RATE_MS);
        printf("reading something: %d bytes\n", len);
        unsigned char words[9];

        for (int i = 0; i < 9; i++) {
          words[i] = (unsigned char) data[i];
          //printf("Byte %d: %x \n", i, words[i]);
        }

      //  printf("%d", words[0]);

        if (words[0] == 89)   // if the start byte is correct
        {
          //strcat(words[2], words[3]);
          printf("Distance: %d \n", words[2]); // print out distance byte
        }
        vTaskDelay(100);
    }
}

void app_main(void)
{
    xTaskCreate(echo_task, "uart_echo_task", 4*1024, NULL, 10, NULL);
}
