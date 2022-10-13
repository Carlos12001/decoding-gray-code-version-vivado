# Bienvenido a Gray Code Decoder

This project contain the source code in Vivado of a decode the Gray coding. 
This project will be implement in a FPGA, 
and this will be show the number in bin and in hex value.

# Participantes

Carlos Andrés Mata Calderón - 2019033834

Andrés Arturo Rojas Barboza - 2019164947

Fabián M Villegas Bonilla - 2018235959


# Informe 

## Descripción del circuito y sus subsistemas

El circuito creado para el proyecto es un circuito digital dirigido a una FPGA que por medio del la Codificación de Gray se consiguio mostrar en un display los numeros hexadecimales del 1 hasta la F (15), donde cada swicth encendido muestra un uno y los apagados 0, además cuenta con un testbench que informa los errores del cicruito con respecto a la FPGA. este circuito esta compuesta por 3 subsitemas: Un Flip FLop, la codificación de Gray y un display de 7 elementos

la codificación de gray sirve como un traductor de binario a decimal con el fin de convertir un numero con cuatro bits y a un numero del 1 al 15 en este caso

!(Codificación de Gray)[https://scontent.fsyq1-1.fna.fbcdn.net/v/t39.30808-6/311678121_5682696258440964_7660600277536473033_n.jpg?_nc_cat=108&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=xnM9j49RagQAX-NuZwl&_nc_ht=scontent.fsyq1-1.fna&oh=00_AT8NDGjGTc6mhCL77ZUXRoSJJZ-_9xsKczy9dccC-FX6CQ&oe=634D3B38]

El display sirve para mostrar el resultado de la Codificación de Gray por medio de los swicths que tiene la tarjeta FPGA donde dependiendo de la lectura del codificador puede mostra los numeros del 1 a la F (15)

!(Display de 7 elementos)[https://scontent.fsyq1-1.fna.fbcdn.net/v/t39.30808-6/311609670_5682696325107624_54272057140633497_n.jpg?_nc_cat=102&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=bw9rCR7Ub80AX_AWWVu&_nc_ht=scontent.fsyq1-1.fna&oh=00_AT9HybqDCMjP9ekXBS6nuklZ3FOryf3Y39icTxb6qKI-lw&oe=634D4E93]

El Flip Flop se usa para registrar los bits que entran al sistema que luego seran convertidos por el codificador de Gray

!(Flip Flop)[https://scontent.fsyq1-1.fna.fbcdn.net/v/t39.30808-6/311691946_5682696385107618_6835330008073463939_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=8bfeb9&_nc_ohc=ZxNJcIY5BBQAX-ITaRS&_nc_ht=scontent.fsyq1-1.fna&oh=00_AT-xYD40v2VO_H5HnFPZV_yxHwneSu3m2x3t1V_eHPAQ-g&oe=634E7AEE]

