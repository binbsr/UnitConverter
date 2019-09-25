using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Converter.Core.Enums;

namespace Converter.Core
{
    public class TemperatureConverter
    {
        public static double ConvertTemperature(double inputValue, TUnit inputUnit, TUnit outputUnit)
        {
            double outputValue = 0.0;

            switch(inputUnit)
            {
                case TUnit.Celcius:
                    outputValue = outputUnit == TUnit.Fahrenheit
                        ? CelciusToFahrenheit(inputValue)
                        : CelciusToKelvin(inputValue);
                    break;
                case TUnit.Fahrenheit:
                    outputValue = outputUnit == TUnit.Celcius
                        ? FahrenheitToCelcius(inputValue)
                        : FahrenheitToKelvin(inputValue);
                    break;
                case TUnit.Kelvin:
                    outputValue = outputUnit == TUnit.Celcius
                        ? KelvinToCelcius(inputValue)
                        : KelvinToFahrenheit(inputValue);
                    break;
            }

            return outputValue;
        }

        public static double CelciusToFahrenheit(double c) => 9 / (double)5 * c + 32;
        public static double CelciusToKelvin(double c) => c + 273.15;
        public static double FahrenheitToCelcius(double f) => 5 / (double)9 * (f - 32);
        public static double FahrenheitToKelvin(double f) => (f - 32) * 0.56 + 273.15;
        public static double KelvinToCelcius(double k) => k - 273.15;
        public static double KelvinToFahrenheit(double k) => (k - 273.15) * 1.8 + 32;
    }
}