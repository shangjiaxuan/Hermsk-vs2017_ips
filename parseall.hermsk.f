C parseall.hermsk.f
C Sorts the self-consistent potential out of hsall.out output file.
C       Ignores headers.
C       Reads   - Z and the full 441pt potential, rV.
C       Outputs - 110pt normalized potential, U=-rV/2Z, in a single column. 

      DIMENSION RU(5)
      CHARACTER*8 SDUMMY(10)
      CHARACTER CDUMMY
      INTEGER COUNT

      OPEN(5,FILE='hsall.out',STATUS='OLD')
      OPEN(10,FILE='hsabrpot.out',STATUS='NEW')

      READ (5,1001) SDUMMY
      READ (5,1002) Z, IDUMMY, JDUMMY, DDUMMY
      READ (5,1001) SDUMMY
      READ (5,1001) SDUMMY
      READ (5,1001) SDUMMY
      READ (5,1001) SDUMMY
      READ (5,1001) SDUMMY
 1001 FORMAT(10A8)
 1002 format (f4.0,2i4,f10.6)

      write(10,*)'Herm-Skill'
      write(10,*)'     U(X)'
      COUNT=0
      DO j = 1,441,5
        READ (5,1006) CDUMMY, (RU(k), k = 1,5)
 1006   FORMAT(A1, 1P5E14.7)
        DO k = 1,5
          IF(MOD(COUNT,4) .EQ. 0) THEN
            write(10,1007) -RU(k)/(2.0*Z)
 1007       format ('  ', f7.5)
          END IF
          COUNT = COUNT + 1
        END DO
      END DO

      END