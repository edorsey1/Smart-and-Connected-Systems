#include <stdio.h>
#include <stdlib.h>
#include "freertos/FreeRTOS.h"
#include "freertos/task.h"
#include "driver/gpio.h"
#include "driver/adc.h"
#include "esp_adc_cal.h"

#define DEFAULT_VREF    1100        //Use adc2_vref_to_gpio() to obtain a better estimate
#define NO_OF_SAMPLES   64          //Multisampling

static esp_adc_cal_characteristics_t *adc_chars;
static const adc_channel_t channel = ADC_CHANNEL_6;     //GPIO34 if ADC1, GPIO14 if ADC2
static const adc_atten_t atten = ADC_ATTEN_DB_11;
static const adc_unit_t unit = ADC_UNIT_1;

static void check_efuse(void)
{
    //Check TP is burned into eFuse
    if (esp_adc_cal_check_efuse(ESP_ADC_CAL_VAL_EFUSE_TP) == ESP_OK) {
        printf("eFuse Two Point: Supported\n");
    } else {
        printf("eFuse Two Point: NOT supported\n");
    }

    //Check Vref is burned into eFuse
    if (esp_adc_cal_check_efuse(ESP_ADC_CAL_VAL_EFUSE_VREF) == ESP_OK) {
        printf("eFuse Vref: Supported\n");
    } else {
        printf("eFuse Vref: NOT supported\n");
    }
}

static void print_char_val_type(esp_adc_cal_value_t val_type)
{
    if (val_type == ESP_ADC_CAL_VAL_EFUSE_TP) {
        printf("Characterized using Two Point Value\n");
    } else if (val_type == ESP_ADC_CAL_VAL_EFUSE_VREF) {
        printf("Characterized using eFuse Vref\n");
    } else {
        printf("Characterized using Default Vref\n");
    }
}

void app_main(void)
{
    //Check if Two Point or Vref are burned into eFuse
    check_efuse();

    //Configure ADC
    if (unit == ADC_UNIT_1) {
        adc1_config_width(ADC_WIDTH_BIT_12);
        adc1_config_channel_atten(channel, atten);
    } else {
        adc2_config_channel_atten((adc2_channel_t)channel, atten);
    }

    //Characterize ADC
    adc_chars = calloc(1, sizeof(esp_adc_cal_characteristics_t));
    esp_adc_cal_value_t val_type = esp_adc_cal_characterize(unit, atten, ADC_WIDTH_BIT_12, DEFAULT_VREF, adc_chars);
    print_char_val_type(val_type);

    //Continuously sample ADC1
    while (1) {
        uint32_t adc_reading = 0;
        //Multisampling
        for (int i = 0; i < NO_OF_SAMPLES; i++) {
            if (unit == ADC_UNIT_1) {
                adc_reading += adc1_get_raw((adc1_channel_t)channel);
            } else {
                int raw;
                adc2_get_raw((adc2_channel_t)channel, ADC_WIDTH_BIT_12, &raw);
                adc_reading += raw;
            }
        }
        adc_reading /= NO_OF_SAMPLES;
        //Convert adc_reading to voltage in mV
        uint32_t voltage = esp_adc_cal_raw_to_voltage(adc_reading, adc_chars);
        int temp = 0;
        if (voltage < 400)
            temp = 74;
        else if (voltage >= 400 && voltage < 410)
            temp = 75;
        else if (voltage >= 410 && voltage < 420)
            temp = 76;
        else if (voltage >= 420 && voltage < 430)
            temp = 77;
        else if (voltage >= 430 && voltage < 440)
            temp = 79;
        else if (voltage >= 440 && voltage < 450)
            temp = 80;
        else if (voltage >= 450 && voltage < 460)
            temp = 81;
        else if (voltage >= 460 && voltage < 470)
            temp = 82;
        else if (voltage >= 470 && voltage < 480)
            temp = 83;
        else if (voltage >= 480 && voltage < 490)
            temp = 84;
        else if (voltage >= 490 && voltage < 500)
            temp = 85;
        else if (voltage >= 500 && voltage < 510)
            temp = 86;
        else if (voltage >= 510 && voltage < 520)
            temp = 87;
        else if (voltage >= 520 && voltage < 530)
            temp = 88;
        else if (voltage >= 530 && voltage < 540)
            temp = 89;
        else if (voltage >= 540 && voltage < 550)
            temp = 90;
        else if (voltage >= 550 && voltage < 560)
            temp = 91;
        else if (voltage >= 560 && voltage < 570)
            temp = 92;
        else if (voltage >= 570 && voltage < 580)
            temp = 93;
        else if (voltage >= 580 && voltage < 590)
            temp = 94;
        else if (voltage >= 590 && voltage < 600)
            temp = 95;
        else if (voltage >= 600 && voltage < 610)
            temp = 96;
        else if (voltage >= 610 && voltage < 620)
            temp = 97;
        else if (voltage >= 620 && voltage < 630)
            temp = 98;
        else if (voltage >= 630 && voltage < 640)
            temp = 99;
        else if (voltage >= 640)
            temp = 100;

        printf("Raw: %d\tVoltage: %d F\n", adc_reading, temp);
        vTaskDelay(pdMS_TO_TICKS(1000));
    }
}
