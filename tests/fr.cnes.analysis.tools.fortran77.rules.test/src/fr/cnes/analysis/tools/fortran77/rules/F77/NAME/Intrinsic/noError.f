      INTEGER FUNCTION MY_GETUID()

      INTEGER I_RET
 
      I_RET = GETUID ()
      WRITE(*,*) 'I_RET=', I_RET

      MY_GETUID = I_RET
      WRITE(*,*) 'MY_GETUID=', MY_GETUID

      RETURN
      END
C
C --- MAIN
C
      PROGRAM ESSAI

      INTEGER I_UID
      INTEGER I_STDOUT

      I_STDOUT = 6

      WRITE(I_STDOUT, 10)
      I_UID = MY_GETUID()
      WRITE(I_STDOUT, *) 'UID =', I_UID
C
C --------------------------------------------------------------------------
C      F O R M A T S
C --------------------------------------------------------------------------
C
10    FORMAT(1X, '--- Recuperer le User Id ---')

      END PROGRAM

