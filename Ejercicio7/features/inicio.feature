Feature: Toque y fama

Scenario: Bienvenida
When inicio de la aplicación
Then muestra "Bienvenido a toque y fama"

Scenario: Elije un numero y gana
Given inicio de la aplicación
When elije el 2153
Then muestra mensaje "YOU WIN"

Scenario: Elije un numero y pierde
Given inicio de la aplicación
When elije el 2415
Then muestra mensaje "***"