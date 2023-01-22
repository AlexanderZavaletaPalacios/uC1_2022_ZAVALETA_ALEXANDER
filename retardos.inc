
    
/*................................................................................*/
/*Autor: Zavaleta Palacios, Alexander                                             */
/*Fecha: 9/01/2023                                                                */
/*IDE: MPLAB X IDE V6.00                                                          */
/*Frecuencia del oscilador: 4MHz                                                  */
/*Estas estos codigos hechos en MPLAB estan siendo utilizado para hacer varios    */
/*retados los cuales hacen, por ejemplo; en el caso de un led se encienda         */        
/*y se apague a un determinado tiempo.Tambien se debe de tener encuenta           */
/*la frecuencia del oscilar la cual se usa para cambiar el tiempo de retardo.     */
/*en este casoo la frecuendia del oscilador es de 4MHz y el tiempo de retardo     */
/*es de 1us(Tcy = 1us)                                                            */
/*de 10us,25us,50us,100us,200us,250us,500us,1ms,5ms,10ms,50ms,100ms,200ms         */
/*y 250ms hechos en ese orden.                                                    */
/*................................................................................*/   

        

PSECT udata_acs   
contador1: DS 1           ;reserva un byte en access ram
contador2: DS 1

PSECT code    
 

;(todos con Frecuencia del oscilador los Delay son de 4Mz) 
; T = 6 + 4K 

;................................................................................... 
;...................................................................................
 
;Delay de 10us
 
Delay_10us:                 ; 2Tcy -- Call
    MOVLW   1             ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access
Delay_Loop:
    NOP                   ; (k1*Tcy)
    DECFSZ  contador1,1,0 ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Delay_Loop    ; (k1-1)*2Tcy
    RETURN                ; 2Tcy    
    
;...................................................................................        
;...................................................................................
        
;Delay de 25us 
    
 Delay_25us:               ; 2Tcy -- Call
    MOVLW   5             ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access
Delay_Loop_25us:
    NOP                        ; (k1*Tcy)
    DECFSZ  contador1,1,0      ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Delay_Loop_25us    ; (k1-1)*2Tcy
    RETURN                     ; 2Tcy   
    
;...................................................................................        
;...................................................................................
    
;Delay de 50us
    
Delay_50us:               ; 2Tcy -- Call
    MOVLW   11             ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access
Delay_Loop_50us:
    NOP                        ; (k1*Tcy)
    DECFSZ  contador1,1,0      ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Delay_Loop_50us    ; (k1-1)*2Tcy
    RETURN                     ; 2Tcy 
    
;...................................................................................   
;...................................................................................

;Delay de 100us  
    
Delay_100us:               ; 2Tcy -- Call
    MOVLW   24             ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access
Delay_Loop_100us:
    NOP                         ; (k1*Tcy)
    DECFSZ  contador1,1,0       ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Delay_Loop_100us    ; (k1-1)*2Tcy
    RETURN                      ; 2Tcy
    
;...................................................................................    
;....................................................................................    

;Delay de 200us 
    
Delay_200us:               ; 2Tcy -- Call
    MOVLW   49             ; 1Tcy -- k1
    MOVWF   contador1,0    ; 1Tcy, contador1 en access
Delay_Loop_200us:
    NOP                         ; (k1*Tcy)
    DECFSZ  contador1,1,0       ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Delay_Loop_200us    ; (k1-1)*2Tcy
    RETURN                      ; 2Tcy  
    
;...................................................................................
;...................................................................................
    
;Delay de 250us    
    
Delay_250us:               ; 2Tcy -- Call
    MOVLW   61             ; 1Tcy -- k1
    MOVWF   contador1,0    ; 1Tcy, contador1 en access
Delay_Loop_250us:
    NOP                         ; (k1*Tcy)
    DECFSZ  contador1,1,0       ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Delay_Loop_250us    ; (k1-1)*2Tcy
    RETURN                      ; 2Tcy  
    
;...................................................................................    
;...................................................................................   
     
;Delay de 500us    
    
Delay_5000us:               ; 2Tcy -- Call
    MOVLW   124             ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access
Delay_Loop_5000us:
    NOP                          ; (k1*Tcy)
    DECFSZ  contador1,1,0        ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Delay_Loop_5000us    ; (k1-1)*2Tcy
    RETURN                       ; 2Tcy
    
;...................................................................................    
;...................................................................................   
     
;Delay de 1ms    
    
Delay_1ms:                ; 2Tcy -- Call
    MOVLW   255           ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access
Delay_Loop_1ms:
    NOP                       ; (k1*Tcy)
    DECFSZ  contador1,1,0     ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Delay_Loop_1ms    ; (k1-1)*2Tcy
    RETURN                    ; 2Tcy 
    
;...................................................................................    
;...................................................................................   
    
;Delay de 5ms

Delay_5ms:                ; 2Tcy -- Call
    MOVLW   5             ; 1Tcy -- k2
    MOVWF contador2,0     ; 1Tcy
;T = (6+4k)us             1Tcy = 1us
Ext_Loop:                 ; 2Tcy -- Call
    MOVLW   249           ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access

Int_Loop:
    NOP                   ; (k1*Tcy)
    DECFSZ  contador1,1,0 ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Int_Loop      ; (k1-1)*2Tcy
    DECFSZ  contador2,1,0
    GOTO    Ext_Loop
    RETURN                ; 2Tcy
    
;...................................................................................    
;...................................................................................   
    
;Delay de 2ms

Delay_2ms:                    ; 2Tcy -- Call
    MOVLW   2                 ; 1Tcy -- k2
    MOVWF contador2,0         ; 1Tcy
;T = (6+4k)us                 1Tcy = 1us
Ext_Loop_2ms:                 ; 2Tcy -- Call
    MOVLW   249               ; 1Tcy -- k1
    MOVWF   contador1,0       ; 1Tcy, contador1 en access

Int_Loop_2ms:
    NOP                       ; (k1*Tcy)
    DECFSZ  contador1,1,0     ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Int_Loop_2ms      ; (k1-1)*2Tcy
    DECFSZ  contador2,1,0
    GOTO    Ext_Loop_2ms
    RETURN                    ; 2Tcy
                                
;....................................................................................
;...................................................................................   
    
;Delay de 10ms

Delay_10ms:                  ; 2Tcy -- Call
    MOVLW   10               ; 1Tcy -- k2
    MOVWF contador2,0        ; 1Tcy
;T = (6+4k)us                 1Tcy = 1us
Ext_Loop_10ms:                 ; 2Tcy -- Call
    MOVLW   249               ; 1Tcy -- k1
    MOVWF   contador1,0       ; 1Tcy, contador1 en access

Int_Loop_10ms:
    NOP                        ; (k1*Tcy)
    DECFSZ  contador1,1,0      ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Int_Loop_10ms      ; (k1-1)*2Tcy
    DECFSZ  contador2,1,0
    GOTO    Ext_Loop_10ms
    RETURN                     ; 2Tcy
    
;...................................................................................    
;...................................................................................   
    
;Delay de 25ms

Delay_25ms:                ; 2Tcy -- Call
    MOVLW   25             ; 1Tcy -- k2
    MOVWF contador2,0     ; 1Tcy
;T = (6+4k)us             1Tcy = 1us
Ext_Loop_25ms:                 ; 2Tcy -- Call
    MOVLW   249           ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access

Int_Loop_25ms:
    NOP                   ; (k1*Tcy)
    DECFSZ  contador1,1,0 ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Int_Loop_25ms      ; (k1-1)*2Tcy
    DECFSZ  contador2,1,0
    GOTO    Ext_Loop_25ms
    RETURN                ; 2Tcy
    
;...................................................................................
;...................................................................................   
    
;Delay de 50ms

Delay_50ms:                ; 2Tcy -- Call
    MOVLW   50             ; 1Tcy -- k2
    MOVWF contador2,0     ; 1Tcy
;T = (6+4k)us             1Tcy = 1us
Ext_Loop_50ms:                 ; 2Tcy -- Call
    MOVLW   249           ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access

Int_Loop_50ms:
    NOP                   ; (k1*Tcy)
    DECFSZ  contador1,1,0 ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Int_Loop_50ms      ; (k1-1)*2Tcy
    DECFSZ  contador2,1,0
    GOTO    Ext_Loop_50ms
    RETURN                ; 2Tcy
    
;...................................................................................   
;...................................................................................
    
;Delay de 100ms

Delay_100ms:              ; 2Tcy -- Call
    MOVLW   100           ; 1Tcy -- k2
    MOVWF contador2,0     ; 1Tcy
;T = (6+4k)us             1Tcy = 1us
Ext_Loop_100ms:                 ; 2Tcy -- Call
    MOVLW   249           ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access

Int_Loop_100ms:
    NOP                   ; (k1*Tcy)
    DECFSZ  contador1,1,0 ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Int_Loop_100ms      ; (k1-1)*2Tcy
    DECFSZ  contador2,1,0
    GOTO    Ext_Loop_100ms
    RETURN                ; 2Tcy
    
;...................................................................................   
;...................................................................................   
    
;Delay de 200ms

Delay_200ms:                ; 2Tcy -- Call
    MOVLW   200             ; 1Tcy -- k2
    MOVWF contador2,0     ; 1Tcy
;T = (6+4k)us             1Tcy = 1us
Ext_Loop_200ms:                 ; 2Tcy -- Call
    MOVLW   249           ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access

Int_Loop_200ms:
    NOP                   ; (k1*Tcy)
    DECFSZ  contador1,1,0 ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Int_Loop_200ms      ; (k1-1)*2Tcy
    DECFSZ  contador2,1,0
    GOTO    Ext_Loop_200ms
    RETURN                ; 2Tcy

;...................................................................................
;...................................................................................
    
;Delay de 250ms

Delay_250ms:             ; 2Tcy -- Call
    MOVLW 250             ; 1Tcy -- k2
    MOVWF contador2,0     ; 1Tcy
;T = (6+4k)us             1Tcy = 1us
Ext_Loop_250ms:                 ; 2Tcy -- Call
    MOVLW   249           ; 1Tcy -- k1
    MOVWF   contador1,0   ; 1Tcy, contador1 en access

Int_Loop_250ms:
    NOP                   ; (k1*Tcy)
    DECFSZ  contador1,1,0 ; (k1-1)+ 3Tcy, Decrementa el registro y salta si es cero
    GOTO    Int_Loop_250ms      ; (k1-1)*2Tcy
    DECFSZ  contador2,1,0
    GOTO    Ext_Loop_250ms
    RETURN                ; 2Tcy
    
;...................................................................................    
;...................................................................................


END resetVect



