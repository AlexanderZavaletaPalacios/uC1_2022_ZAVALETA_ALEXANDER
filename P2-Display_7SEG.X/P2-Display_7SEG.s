/*......................................................................*/
/*Nombre: Contador de 0-9 y de A-F en un Display                        */
/*Fecha: 14/01/2023                                                     */
/*Descripcion: Este codigo se usa para poder apreciar en un display     */
/*anodo numeros desde el 0 hasta el 9 y al mantener precionado el boton */
/*se  apreciaran letras desde A hasta el F.                             */
/*para poder implementarlo en un protoboard se usan POTD[0:7] del       */
/*los cuales van conectados al display de la siguiente manera:          */
/*A con RD0,B con RD1,C con RD2,D con RD3,E con RDR4,F con RD5,G con RD6*/    
/*en este codigo a usado mayormente las instrucciones BCF,BSF,CALL,GOTO.*/    
/*Autor:Zavaleta Palacios, Alexander                                    */
/*......................................................................*/
    
#include "Bit_Config.inc" 
#include <xc.inc>
    
PSECT udata_acs   
contador1: DS 1           ;reserva un byte en access ram
contador2: DS 1
    
PSECT resetVect,class=CODE,reloc=2
resetVect:
    goto Main
    
PSECT CODE
 
Main:
    CALL Config_OSC,1
    CALL Button
    CALL Display
    CALL Loop
    NOP
Loop:
    BTFSS PORTA,3,1
    goto Letras
 Numeros:
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BSF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BSF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BSF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BSF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BSF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BSF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BSF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSS PORTA,3,1
    goto Letras
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    goto Loop
 Letras:
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BSF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BSF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BSF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BSF LATD,0,0
    BCF TRISD,1,0
    BCF LATD,1,0
    BCF TRISD,2,0
    BCF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BSF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BSF TRISD,2,0
    BSF LATD,2,0
    BCF TRISD,3,0
    BCF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,0
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    BCF TRISD,0,0
    BCF LATD,0,0
    BCF TRISD,1,0
    BSF LATD,1,0
    BCF TRISD,2,0
    BSF LATD,2,0
    BCF TRISD,3,0
    BSF LATD,3,0
    BCF TRISD,4,0
    BCF LATD,4,0
    BCF TRISD,5,0
    BCF LATD,5,0
    BCF TRISD,6,0
    BCF LATD,6,0
    BCF TRISD,7,0
    BSF LATD,7,1
    BTFSC PORTA,3,1
    goto Numeros
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    CALL Delay_250ms,1
    goto Loop
    
Button:
    BANKSEL PORTA
    CLRF PORTA,1
    CLRF ANSELA,1
    BSF TRISA,3,1
    BSF LATA,3,1
    BSF WPUA,3,1
    RETURN
     
Config_OSC:
    BANKSEL OSCCON1
    MOVLW 0x60
    MOVWF OSCCON1,1
    MOVLW 0x02
    MOVWF OSCFRQ,1
    RETURN
 
    
Display:
    BANKSEL PORTD
    CLRF PORTD,0
    CLRF ANSELD,0
    RETURN
    

Int_Loop:
    NOP                   ; (k1*Tcy)
    DECFSZ  contador1,1,0 ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Int_Loop      ; (k1-1)*2Tcy
    DECFSZ  contador2,1,0
    GOTO    Ext_Loop
    RETURN                ; 2Tcy     

;Delay de 250ms

Delay_250ms:             ; 2Tcy -- Call
    MOVLW 250             ; 1Tcy -- k2
    MOVWF contador2,0     ; 1Tcy
;T = (6+4k)us             1Tcy = 1us
Ext_Loop:                 ; 2Tcy -- Call
    MOVLW   249           ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access
    
    END resetVect





